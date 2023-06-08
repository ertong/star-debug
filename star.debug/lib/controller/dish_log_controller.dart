import 'dart:async';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:mutex/mutex.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/wait_notify.dart';

const String _TAG = "DishLogController";

class DishLogController {
  WaitNotify waitNotify = WaitNotify();

  Map<String, Record> latestRecord = {};
  Mutex mutex = Mutex();

  bool isRunning = false;

  void notify(String dishId, {
    Map<String, dynamic>? debugData,
    DishGetStatusResponse? dishStatus,
    DishGetHistoryResponse? dishHistoryJson,
    WifiGetStatusResponse? wifiStatusJson,
    Map<String, dynamic>? onlineJson
  }) {
    Record? rec = latestRecord[dishId];
    if (rec==null) {
      rec = Record();
      rec.dishId = dishId;
      latestRecord[dishId] = rec;
    }
    rec.debugData = debugData;
    rec.dishStatus = dishStatus;
    rec.dishHistoryJson = dishHistoryJson;
    rec.wifiStatusJson = wifiStatusJson;
    rec.onlineJson = onlineJson;
    rec.time = DateTime.now().millisecondsSinceEpoch;
    rec.stored = false;
    latestRecord[dishId] = rec;

    if (!isRunning)
      unawaited(run());
  }

  Future<Record> ensureRecord(String dishId) async {
    return mutex.protect(() async{
      Record? rec = latestRecord[dishId];
      if (rec==null) {
        rec = Record();
        rec.dishId = dishId;
        latestRecord[dishId] = rec;
      }
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

  Future<void> storeDebugData(String dishId, int timestamp, Map<String, dynamic> debugData) async {
    var res = await R.db.dishesDao.hasDishLog(dishId, timestamp).getSingleOrNull();

    if (res==null) {
      forceStore(dishId, debugData: debugData, timestamp: timestamp);
    } else {
      LogUtils.d(_TAG, "Debug data is already saved. Do noothing");
    }
  }

  Future<void> forceStore(String dishId, {
    Map<String, dynamic>? debugData,
    DishGetStatusResponse? dishStatus,
    DishGetHistoryResponse? dishHistoryJson,
    WifiGetStatusResponse? wifiStatusJson,
    Map<String, dynamic>? onlineJson,
    int? timestamp,
  }) async {
    var rec = await ensureRecord(dishId);

    await mutex.protect(() async{
      LogUtils.d(_TAG, "Store FORCED log for ${rec.dishId}");

      rec.debugData = debugData;
      rec.dishStatus = dishStatus;
      rec.dishHistoryJson = dishHistoryJson;
      rec.wifiStatusJson = wifiStatusJson;
      rec.onlineJson = onlineJson;
      rec.time = timestamp ?? DateTime.now().millisecondsSinceEpoch;
      rec.stored = false;

      rec.dishLog = await R.db.dishLogs.insertReturning(
          DishLogsCompanion(
            timestamp: Value(rec.time),
            forceStore: Value(true),
            dishId: Value(rec.dishId),
            debugDataJson: Value(jsonEncode(debugData)),
            dishStatusJson: Value(dishStatus?.writeToBuffer()),
            dishHistoryJson: Value(dishHistoryJson?.writeToBuffer()),
            wifiStatusJson: Value(wifiStatusJson?.writeToBuffer()),
            onlineJson: Value(jsonEncode(onlineJson)),
          )
      );

      if ((rec.dish?.latestLogId ?? 0) < rec.dishLog!.id) {
        await R.db.dishes.insertOne(
            DishesCompanion(
              dishId: Value(rec.dishId),
              latestLogId: Value(rec.dishLog!.id),
            ),
            mode: InsertMode.insertOrReplace);
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
                  debugDataJson: Value(jsonEncode(rec.debugData)),
                  dishStatusJson: Value(rec.dishStatus?.writeToBuffer()),
                  dishHistoryJson: Value(rec.dishHistoryJson?.writeToBuffer()),
                  wifiStatusJson: Value(rec.wifiStatusJson?.writeToBuffer()),
                  onlineJson: Value(jsonEncode(rec.onlineJson)),
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
                    await R.db.dishes.insertOne(
                        DishesCompanion(
                          dishId: Value(rec.dishId),
                          latestLogId: Value(rec.dishLog!.id),
                        ),
                        mode: InsertMode.insertOrReplace);
                    rec.dish = await R.db.dishesDao.getDish(rec.dishId).getSingleOrNull();
                  }

                } else { //update existent
                  LogUtils.d(_TAG, "Store updated log for ${rec.dishId}");
                  await (R.db.dishLogs.update()
                      ..where((t) => t.id.equals(dishLog.id))
                  ).write(logToWrite);
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
          await Future.delayed(Duration(seconds: 1));
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

  Map<String, dynamic>? debugData;

  DishGetStatusResponse? dishStatus;
  DishGetHistoryResponse? dishHistoryJson;
  WifiGetStatusResponse? wifiStatusJson;
  Map<String, dynamic>? onlineJson;

  bool stored = false;
  int time = 0;

  int timeLastStore = 0;

  Dish? dish;
  DishLog? dishLog;
}