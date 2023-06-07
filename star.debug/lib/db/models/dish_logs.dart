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
  BlobColumn get dishStatusJson => blob().nullable()();
  BlobColumn get dishHistoryJson => blob().nullable()();
  BlobColumn get wifiStatusJson => blob().nullable()();
  TextColumn get onlineJson => text().nullable()();
}