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

  Selectable<GetDishesResult> getDishes(String? fromDishId, int limit) {
    return customSelect(
        'SELECT *, (SELECT COUNT(*) FROM dish_logs AS DLC WHERE D.dish_id = DLC.dish_id) AS log_count FROM dishes AS D LEFT JOIN dish_logs AS DL ON(D.latest_log_id = DL.id)WHERE(?1 IS NULL OR D.dish_id > ?1)ORDER BY D.dish_id LIMIT ?2',
        variables: [
          Variable<String>(fromDishId),
          Variable<int>(limit)
        ],
        readsFrom: {
          dishLogs,
          dishes,
        }).map((QueryRow row) {
      return GetDishesResult(
        dishId: row.read<String>('dish_id'),
        name: row.readNullable<String>('name'),
        latestLogId: row.readNullable<int>('latest_log_id'),
        id: row.readNullable<int>('id'),
        timestamp: row.readNullable<int>('timestamp'),
        dishId1: row.readNullable<String>('dish_id'),
        forceStore: row.readNullable<bool>('force_store'),
        debugDataJson: row.readNullable<String>('debug_data_json'),
        dishStatusJson: row.readNullable<Uint8List>('dish_status_json'),
        dishHistoryJson: row.readNullable<Uint8List>('dish_history_json'),
        wifiStatusJson: row.readNullable<Uint8List>('wifi_status_json'),
        onlineJson: row.readNullable<String>('online_json'),
        logCount: row.read<int>('log_count'),
      );
    });
  }

  Selectable<DishLog> getDishLogs(int? ts, String dishId, int limit) {
    return customSelect(
        'SELECT * FROM dish_logs AS DL WHERE(?1 IS NULL OR DL.timestamp < ?1)AND dish_id = ?2 ORDER BY DL.timestamp DESC LIMIT ?3',
        variables: [
          Variable<int>(ts),
          Variable<String>(dishId),
          Variable<int>(limit)
        ],
        readsFrom: {
          dishLogs,
        }).asyncMap(dishLogs.mapFromRow);
  }
}

class GetDishesResult {
  final String dishId;
  final String? name;
  final int? latestLogId;
  final int? id;
  final int? timestamp;
  final String? dishId1;
  final bool? forceStore;
  final String? debugDataJson;
  final Uint8List? dishStatusJson;
  final Uint8List? dishHistoryJson;
  final Uint8List? wifiStatusJson;
  final String? onlineJson;
  final int logCount;
  GetDishesResult({
    required this.dishId,
    this.name,
    this.latestLogId,
    this.id,
    this.timestamp,
    this.dishId1,
    this.forceStore,
    this.debugDataJson,
    this.dishStatusJson,
    this.dishHistoryJson,
    this.wifiStatusJson,
    this.onlineJson,
    required this.logCount,
  });
}
