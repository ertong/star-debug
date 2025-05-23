
import 'package:drift/drift.dart';
import 'package:star_debug/db/dao/dishes_dao.dart';
import 'package:star_debug/db/dao/recent_inputs_dao.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'models/dishes.dart';
import 'models/dish_logs.dart';
import 'models/recent_inputs.dart';

part 'database.g.dart';

const String _TAG = "Database";

@DriftDatabase(
    tables: [],
    daos: [DishesDao, RecentInputsDao],
  include: {'database.drift'},
)
class Database extends _$Database {

  Database.connect(DatabaseConnection super.connection);

  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        LogUtils.d(_TAG, "Migration from $from to $to");

        if (from<3){
          m.drop(dishes);
          m.drop(dishLogs);
        }

        await m.createAll(); // create if not exists

        if (from < 2) {
          // migrate, if something need to be done before 2
        }
      }
  );


}
