import 'package:drift/drift.dart';

@DataClassName("Dish")
class Dishes extends Table {
  TextColumn get dishId => text().customConstraint('NOT NULL UNIQUE')();
  TextColumn get name => text().nullable()();
  IntColumn get latestLogId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {dishId};
}