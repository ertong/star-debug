import 'dart:async';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:mutex/mutex.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/wait_notify.dart';

const String _TAG = "DishLogController";

class DishLogController {
  final int Function() _now;

  DishLogController({int Function()? now})
      : _now = now ?? (() => DateTime.now().millisecondsSinceEpoch);

  WaitNotify waitNotify = WaitNotify();

  Map<String, Record> latestRecord = {};
  Mutex mutex = Mutex();

  bool isRunning = false;

  void notify(Snapshot snap) {
    if (!R.prefs.data.autoStoreDiskLog)
      return;
    var dishId = snap.dishGetStatus?.deviceInfo.id;
    var timestamp = snap.dishTs;
    if (dishId == null || dishId.trim().isEmpty || timestamp == null)
      return;

    Record? rec = latestRecord[dishId];
    if (rec==null) {
      rec = Record(snap);
      rec.dishId = dishId;
      latestRecord[dishId] = rec;
    }
    _observeUptime(rec, snap);
    rec.revision++;
    rec.snap = snap;
    rec.time = _now();
    rec.stored = false;
    latestRecord[dishId] = rec;

    if (!isRunning)
      unawaited(run());
  }

  Future<Record> ensureRecord(String dishId, Snapshot snap) async {
    return mutex.protect(() async{
      Record? rec = latestRecord[dishId];
      if (rec==null) {
        rec = Record(snap);
        rec.dishId = dishId;
        latestRecord[dishId] = rec;
      }
      rec.snap = snap;
      if (rec.dish==null) {
        rec.dish = await R.db.dishesDao.getDish(dishId).getSingleOrNull();
        rec.dish ??= await R.db.dishes.insertReturning(
            DishesCompanion(
              dishId: Value(rec.dishId),
            )
        );
      }
      if (rec.dishLog==null) {
        var logId = rec.dish?.latestLogId;
        if (logId!=null) {
          rec.dishLog = await R.db.dishesDao.getDishLog(logId).getSingleOrNull();
        }
      }

      return rec;
    });
  }

  Future<void> storeDebugData(Snapshot snap) async {
    var dishId = snap.dishGetStatus?.deviceInfo.id;
    var timestamp = snap.dishTs;

    if (dishId == null ||
        dishId.trim().isEmpty ||
        timestamp == null ||
        snap.debug_data == null)
      return;

    var res = await R.db.dishesDao.hasDishLog(dishId, timestamp).getSingleOrNull();

    if (res==null) {
      await forceStore(snap);
    } else {
      LogUtils.d(_TAG, "Debug data is already saved. Do noothing");
    }
  }

  /// Serialize payload fields without choosing logging timestamps or write policy.
  /// Callers preserve SQL NULL versus JSON "null" for absent imported debug data.
  DishLogsCompanion _snapshotToCompanion(
    Snapshot snap, {
    required int timestamp,
    required bool forceStore,
    required String dishId,
    required String? debugDataJson,
  }) {
    return DishLogsCompanion(
      timestamp: Value(timestamp),
      forceStore: Value(forceStore),
      dishId: Value(dishId),
      debugDataJson: Value(debugDataJson),
      dishStatusJson: Value(snap.dishGetStatus?.writeToBuffer()),
      dishHistoryJson: Value(snap.dishGetHistory?.writeToBuffer()),
      dishObstructionMap: Value(snap.dishGetObstructionMap?.writeToBuffer()),
      obstructionMapTs: Value(snap.obstructionMapTs),
      obstructionMapApiVersion: Value(snap.obstructionMapApiVersion),
      wifiStatusJson: Value(snap.routerGetStatus?.writeToBuffer()),
      onlineJson: Value(jsonEncode(snap.onlineJson)),
    );
  }

  Future<void> forceStore(Snapshot snap) async {
    var dishId = snap.dishGetStatus?.deviceInfo.id;
    var timestamp = snap.dishTs;

    if (dishId == null || dishId.trim().isEmpty || timestamp == null)
      return;

    var rec = await ensureRecord(dishId, snap);

    await mutex.protect(() async{
      LogUtils.d(_TAG, "Store FORCED log for ${rec.dishId}");

      rec.snap = snap;
      rec.revision++;
      rec.time = timestamp;
      rec.stored = false;
      var revision = rec.revision;
      var logToWrite = _snapshotToCompanion(
        snap,
        timestamp: rec.time,
        forceStore: true,
        dishId: rec.dishId,
        debugDataJson: snap.debug_data == null
            ? null
            : jsonEncode(snap.debug_data),
      );

      int now = _now();
      var dishLog = rec.dishLog;
      var automaticTs = rec.dish?.lastAutomaticSnapshotTs
          ?? (dishLog?.forceStore==false ? dishLog!.timestamp : null);
      var result = await R.db.transaction(() async {
        if (dishLog==null || dishLog.forceStore==true
            || now-dishLog.timestamp>1000*60 // last seen more than 1m ago
        ) {
          LogUtils.d(_TAG, "Force Store new log for ${rec.dishId}"
              " current log $dishLog ts ${dishLog?.timestamp} force ${dishLog?.forceStore}");
          await R.db.dishLogs.insertReturning(logToWrite);
        } else {
          LogUtils.d(_TAG, "Force Store updated log for ${rec.dishId}");
          await (R.db.dishLogs.update()
            ..where((t) => t.id.equals(dishLog.id))
          ).write(logToWrite);
        }
        return _retainNewestLogs(rec.dishId, automaticTs);
      });
      rec.dish = result.$1;
      rec.dishLog = result.$2;
      rec.timeLastStore = _now();
      rec.stored = rec.revision == revision;
    });
  }

  int? _uptime(Snapshot snap) {
    var status = snap.dishGetStatus;
    if (status==null || !status.hasDeviceState())
      return null;
    // A present DeviceState may omit its proto3 zero-valued uptime.
    var uptime = status.deviceState.uptimeS.toInt();
    return uptime < 0 ? null : uptime;
  }

  void _observeUptime(Record rec, Snapshot snap) {
    var uptime = _uptime(snap);
    var timestamp = snap.dishTs;
    if (uptime==null || timestamp==null || timestamp<=0
        || (rec.uptimeTimestamp!=null && timestamp<=rec.uptimeTimestamp!))
      return;
    if (rec.uptime!=null && uptime<rec.uptime!)
      rec.rebootRevision++;
    rec.uptime = uptime;
    rec.uptimeTimestamp = timestamp;
  }

  void _restoreStoredUptime(Record rec) {
    if (rec.checkedStoredUptime)
      return;
    rec.checkedStoredUptime = true;
    var log = rec.dishLog;
    if (log==null)
      return;
    try {
      var snap = Snapshot.ofRow(log);
      var uptime = _uptime(snap);
      var timestamp = snap.dishTs;
      if (uptime==null || timestamp==null || timestamp<=0)
        return;
      if (rec.uptimeTimestamp==null || timestamp>=rec.uptimeTimestamp!) {
        rec.uptime = uptime;
        rec.uptimeTimestamp = timestamp;
      } else if (rec.uptime!=null && rec.uptime!<uptime) {
        rec.rebootRevision++;
      }
    } catch (e, s) {
      LogUtils.ers(_TAG, "Reading saved uptime", e, s);
    }
  }

  Future<(Dish, DishLog)> _retainNewestLogs(String dishId, int? automaticTs) async {
    await R.db.dishesDao.pruneDishLogs(dishId);
    var latest = await R.db.dishesDao.getLatestDishLog(dishId).getSingle();
    await R.db.dishes.insertOnConflictUpdate(
      DishesCompanion(
        dishId: Value(dishId),
        latestLogId: Value(latest.id),
        latestLogTimestamp: Value(latest.timestamp),
        lastAutomaticSnapshotTs: Value(automaticTs),
      ),
    );
    var dish = await R.db.dishesDao.getDish(dishId).getSingle();
    return (dish, latest);
  }

  Future<void> _storeAutomatic(Record rec, int now) async {
    if (rec.stored || now-rec.timeLastStore<=5000)
      return;
    rec.dish ??= await R.db.dishesDao.getDish(rec.dishId).getSingleOrNull();
    if (rec.dishLog==null && rec.dish?.latestLogId!=null)
      rec.dishLog = await R.db.dishesDao.getDishLog(rec.dish!.latestLogId!).getSingleOrNull();
    _restoreStoredUptime(rec);

    var dishLog = rec.dishLog;
    var automaticTs = rec.dish?.lastAutomaticSnapshotTs
        ?? (dishLog?.forceStore==false ? dishLog!.timestamp : null);
    var needsNew = rec.newLogPending || dishLog==null || dishLog.forceStore==true
        || now-dishLog.timestamp>1000*60*60*6
        || now~/(1000*60*60*24)!=dishLog.timestamp~/(1000*60*60*24)
        || rec.rebootRevision!=rec.storedRebootRevision;
    var insert = needsNew && (automaticTs==null || now-automaticTs>=1000*60*5);
    if (needsNew && !insert)
      rec.newLogPending = true;
    // Keep protected snapshots intact while a new automatic row is throttled.
    if (!insert && (dishLog==null || dishLog.forceStore)) {
      rec.timeLastStore = now;
      rec.stored = true;
      return;
    }

    var snap = rec.snap;
    var revision = rec.revision;
    var rebootRevision = rec.rebootRevision;
    var logToWrite = _snapshotToCompanion(
      snap,
      timestamp: rec.time,
      forceStore: false,
      dishId: rec.dishId,
      debugDataJson: jsonEncode(snap.debug_data),
    );
    if (insert)
      automaticTs = now;
    var result = await R.db.transaction(() async {
      if (insert) {
        LogUtils.d(_TAG, "Store new log for ${rec.dishId}"
            " current log $dishLog ts ${dishLog?.timestamp} force ${dishLog?.forceStore}");
        await R.db.dishLogs.insertReturning(logToWrite);
      } else {
        LogUtils.d(_TAG, "Store updated log for ${rec.dishId}");
        await (R.db.dishLogs.update()
          ..where((t) => t.id.equals(dishLog!.id))
        ).write(logToWrite);
      }
      return _retainNewestLogs(rec.dishId, automaticTs);
    });
    rec.dish = result.$1;
    rec.dishLog = result.$2;
    if (insert) {
      rec.storedRebootRevision = rebootRevision;
      rec.newLogPending = false;
    }
    rec.timeLastStore = now;
    rec.stored = rec.revision == revision;
  }

  Future run() async{
    isRunning = true;
    try {
      while (true) {
        try {
          var list = latestRecord.values.where((e) => !e.stored).toList();
          if (list.isEmpty)
            return;

          int now = _now();
          for (var rec in list){
            if (!rec.stored && now-rec.timeLastStore>5000) {
              await mutex.protect(() => _storeAutomatic(rec, now));
            }
          }

          await waitNotify.waitOrTimeout(1000);
        }
        catch (e, s) {
          LogUtils.ers(_TAG, "", e, s);
          await Future.delayed(Duration(seconds: 5));
        }
      }
    } finally {
      isRunning = false;
    }
  }

  void invalidateAll() async {
    await mutex.protect(() async {
      this.latestRecord.clear();
    });
  }

  void invalidateOne(String dishId) async {
    await mutex.protect(() async {
      this.latestRecord.remove(dishId);
    });
  }

}

class Record {
  String dishId = "";

  Snapshot snap;

  bool stored = false;
  int revision = 0;
  int rebootRevision = 0;
  int storedRebootRevision = 0;
  int? uptime;
  int? uptimeTimestamp;
  bool checkedStoredUptime = false;
  bool newLogPending = false;
  int time = 0;

  int timeLastStore = 0;

  Dish? dish;
  DishLog? dishLog;

  Record(this.snap);
}