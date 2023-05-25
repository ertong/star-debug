import 'package:drift/drift.dart';

class DishLogs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get timestamp => integer()();
  TextColumn get dishId => text()();

  //manually stored - will not be overwritten
  BoolColumn get forceStore => boolean()();

  // from debug data json
  TextColumn get debugDataJson => text().nullable()();

  // from live grpc data
  TextColumn get dishStatusJson => text().nullable()();
  TextColumn get dishHistoryJson => text().nullable()();
  TextColumn get wifiStatusJson => text().nullable()();
  TextColumn get onlineJson => text().nullable()();
}