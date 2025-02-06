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
  WaitNotify waitNotify = WaitNotify();

  Map<String, Record> latestRecord = {};
  Mutex mutex = Mutex();

  bool isRunning = false;

  void notify(Snapshot snap) {
    if (!R.prefs.data.autoStoreDiskLog)
      return;
    var dishId = snap.dishGetStatus?.deviceInfo.id;
    var timestamp = snap.dishTs;
    if (dishId == null || timestamp == null)
      return;

    Record? rec = latestRecord[dishId];
    if (rec==null) {
      rec = Record(snap);
      rec.dishId = dishId;
      latestRecord[dishId] = rec;
    }
    rec.snap = snap;
    rec.time = DateTime.now().millisecondsSinceEpoch;
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

    if (dishId == null || timestamp == null || snap.debug_data == null)
      return;

    var res = await R.db.dishesDao.hasDishLog(dishId, timestamp).getSingleOrNull();

    if (res==null) {
      forceStore(snap);
    } else {
      LogUtils.d(_TAG, "Debug data is already saved. Do noothing");
    }
  }

  Future<void> forceStore(Snapshot snap) async {
    var dishId = snap.dishGetStatus?.deviceInfo.id;
    var timestamp = snap.dishTs;

    if (dishId == null || timestamp == null || snap.debug_data == null)
      return;

    var rec = await ensureRecord(dishId, snap);

    await mutex.protect(() async{
      LogUtils.d(_TAG, "Store FORCED log for ${rec.dishId}");

      rec.snap = snap;
      rec.time = timestamp;
      rec.stored = false;

      var logToWrite = DishLogsCompanion(
        timestamp: Value(rec.time),
        forceStore: Value(true),
        dishId: Value(rec.dishId),
        debugDataJson: Value(jsonEncode(snap.debug_data)),
        dishStatusJson: Value(snap.dishGetStatus?.writeToBuffer()),
        dishHistoryJson: Value(snap.dishGetHistory?.writeToBuffer()),
        wifiStatusJson: Value(snap.routerGetStatus?.writeToBuffer()),
        onlineJson: Value(jsonEncode(snap.onlineJson)),
      );

      int now = DateTime.now().millisecondsSinceEpoch;
      var dishLog = rec.dishLog;
      if (dishLog==null || dishLog.forceStore==true
          || now-dishLog.timestamp>1000*60 // last seen more than 1m ago
      ) { // insert new record
        LogUtils.d(_TAG, "Force Store new log for ${rec.dishId}"
            " current log $dishLog ts ${dishLog?.timestamp} force ${dishLog?.forceStore}");
        rec.dishLog = await R.db.dishLogs.insertReturning(logToWrite);
      } else { //update existent
        LogUtils.d(_TAG, "Force Store updated log for ${rec.dishId}");
        await (R.db.dishLogs.update()
          ..where((t) => t.id.equals(dishLog.id))
        ).write(logToWrite);
        rec.dishLog = await R.db.dishesDao.getDishLog(dishLog.id).getSingleOrNull();
      }

      if ((rec.dish?.latestLogId ?? 0) < rec.dishLog!.id) {
        await R.db.dishes.insertOnConflictUpdate(
            DishesCompanion(
              dishId: Value(rec.dishId),
              latestLogId: Value(rec.dishLog!.id),
              latestLogTimestamp: Value(rec.time),
            ));
        rec.dish = await R.db.dishesDao.getDish(rec.dishId).getSingleOrNull();
      }

      rec.timeLastStore = DateTime.now().millisecondsSinceEpoch;
      rec.stored = true;
    });
  }

  Future run() async{
    isRunning = true;
    try {
      while (true) {
        try {
          var list = latestRecord.values.where((e) => !e.stored).toList();
          if (list.isEmpty)
            return;

          int now = DateTime.now().millisecondsSinceEpoch;
          for (var rec in list){
            if (!rec.stored && now-rec.timeLastStore>5000) {
              mutex.protect(() async {
                var logToWrite = DishLogsCompanion(
                  timestamp: Value(rec.time),
                  forceStore: Value(false),
                  dishId: Value(rec.dishId),
                  debugDataJson: Value(jsonEncode(rec.snap.debug_data)),
                  dishStatusJson: Value(rec.snap.dishGetStatus?.writeToBuffer()),
                  dishHistoryJson: Value(rec.snap.dishGetHistory?.writeToBuffer()),
                  wifiStatusJson: Value(rec.snap.routerGetStatus?.writeToBuffer()),
                  onlineJson: Value(jsonEncode(rec.snap.onlineJson)),
                );

                if (rec.dish==null) {
                  rec.dish = await R.db.dishesDao.getDish(rec.dishId).getSingleOrNull();
                  var latestLogId = rec.dish?.latestLogId;
                  if (latestLogId!=null)
                    rec.dishLog = await R.db.dishesDao.getDishLog(latestLogId).getSingleOrNull();
                }

                var dishLog = rec.dishLog;
                if (dishLog==null || dishLog.forceStore==true
                    || now-dishLog.timestamp>1000*60*60*6 // last seen more than 6h ago
                    || now~/(1000*60*60*24)!=dishLog.timestamp~/(1000*60*60*24) // last seen not today
                ) { // insert new record
                  LogUtils.d(_TAG, "Store new log for ${rec.dishId}"
                      " current log $dishLog ts ${dishLog?.timestamp} force ${dishLog?.forceStore}");

                  rec.dishLog = await R.db.dishLogs.insertReturning(logToWrite);

                  if ((rec.dish?.latestLogId ?? 0) < (rec.dishLog?.id ?? 0)) {
                    await R.db.dishes.insertOnConflictUpdate(
                        DishesCompanion(
                          dishId: Value(rec.dishId),
                          latestLogId: Value(rec.dishLog!.id),
                          latestLogTimestamp: Value(rec.dishLog!.timestamp),
                        ));
                    rec.dish = await R.db.dishesDao.getDish(rec.dishId).getSingleOrNull();
                  }

                } else { //update existent
                  LogUtils.d(_TAG, "Store updated log for ${rec.dishId}");
                  await (R.db.dishLogs.update()
                      ..where((t) => t.id.equals(dishLog.id))
                  ).write(logToWrite);
                  rec.dishLog = await R.db.dishesDao.getDishLog(dishLog.id).getSingleOrNull();
                }
                rec.timeLastStore = now;
                rec.stored = true;
              });
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
  int time = 0;

  int timeLastStore = 0;

  Dish? dish;
  DishLog? dishLog;

  Record(this.snap);
}