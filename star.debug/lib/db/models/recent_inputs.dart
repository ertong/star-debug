import 'package:drift/drift.dart';

class RecentInputs extends Table {
  static const String TYPE_WIFI_SSID="wifi-ssid";
  static const String TYPE_WIFI_PASS="wifi-pass";

  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  IntColumn get timestamp => integer().withDefault(const Constant(0))();
  TextColumn get data => text()();
  TextColumn get search => text()();
}