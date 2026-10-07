
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
  int get schemaVersion => 7;

  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        LogUtils.d(_TAG, "Migration from $from to $to");

        if (from<3){
          await m.drop(dishes);
          await m.drop(dishLogs);
        }

        await m.createAll(); // create if not exists

        if (from >= 3 && from < 6) {
          await m.addColumn(dishLogs, dishLogs.dishObstructionMap);
          await m.addColumn(dishLogs, dishLogs.obstructionMapTs);
          await m.addColumn(dishLogs, dishLogs.obstructionMapApiVersion);
        }

        if (from >= 3 && from < 7) {
          await m.addColumn(dishes, dishes.lastAutomaticSnapshotTs);
        }
        if (from < 7) {
          for (var dish in await select(dishes).get()) {
            var automatic = await dishesDao.getLatestAutomaticDishLog(dish.dishId).getSingleOrNull();
            await dishesDao.pruneDishLogs(dish.dishId);
            var latest = await dishesDao.getLatestDishLog(dish.dishId).getSingleOrNull();
            await (update(dishes)..where((t) => t.dishId.equals(dish.dishId))).write(
              DishesCompanion(
                latestLogId: Value(latest?.id),
                latestLogTimestamp: Value(latest?.timestamp ?? 0),
                lastAutomaticSnapshotTs: Value(automatic?.timestamp),
              ),
            );
          }
        }

        if (from < 2) {
          // migrate, if something need to be done before 2
        }
      }
  );


}
