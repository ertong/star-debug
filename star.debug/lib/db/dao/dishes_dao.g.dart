// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_dao.dart';

// ignore_for_file: type=lint
mixin _$DishesDaoMixin on DatabaseAccessor<Database> {
  $DishesTable get dishes => attachedDatabase.dishes;
  $DishLogsTable get dishLogs => attachedDatabase.dishLogs;
  Selectable<Dish> getDish(String dishId) {
    return customSelect('SELECT * FROM dishes WHERE dish_id = ?1', variables: [
      Variable<String>(dishId)
    ], readsFrom: {
      dishes,
    }).asyncMap(dishes.mapFromRow);
  }

  Selectable<DishLog> getDishLog(int id) {
    return customSelect('SELECT * FROM dish_logs WHERE id = ?1', variables: [
      Variable<int>(id)
    ], readsFrom: {
      dishLogs,
    }).asyncMap(dishLogs.mapFromRow);
  }

  Selectable<int> hasDishLog(String dishId, int timestamp) {
    return customSelect(
        'SELECT 1 AS _c0 FROM dish_logs WHERE dish_id = ?1 AND timestamp = ?2',
        variables: [
          Variable<String>(dishId),
          Variable<int>(timestamp)
        ],
        readsFrom: {
          dishLogs,
        }).map((QueryRow row) => row.read<int>('_c0'));
  }
}
