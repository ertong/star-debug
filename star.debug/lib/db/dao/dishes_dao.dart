import 'package:drift/drift.dart';
import '../database.dart';

part 'dishes_dao.g.dart';

@DriftAccessor(include: {'dishes_dao.drift'})
class DishesDao extends DatabaseAccessor<Database> with _$DishesDaoMixin {
  DishesDao(Database db) : super(db);

}