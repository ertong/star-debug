import 'package:drift/drift.dart';

@DataClassName("Dish")
class Dishes extends Table {
  TextColumn get dishId => text().customConstraint('NOT NULL UNIQUE')();
  TextColumn get name => text().nullable()();
  IntColumn get latestLogId => integer().nullable()();
  IntColumn get latestLogTimestamp => integer().withDefault(const Constant(0))();


  @override
  Set<Column> get primaryKey => {dishId};
}