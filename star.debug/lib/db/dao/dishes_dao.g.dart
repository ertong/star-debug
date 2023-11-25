// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_dao.dart';

// ignore_for_file: type=lint
mixin _$DishesDaoMixin on DatabaseAccessor<Database> {
  $DishesTable get dishes => attachedDatabase.dishes;
  $DishLogsTable get dishLogs => attachedDatabase.dishLogs;
  $RecentInputsTable get recentInputs => attachedDatabase.recentInputs;
  Selectable<Dish> getDish(String dishId) {
    return customSelect('SELECT * FROM dishes WHERE dish_id = ?1', variables: [
      Variable<String>(dishId)
    ], readsFrom: {
      dishes,
    }).asyncMap(dishes.mapFromRow);
  }

  Future<int> deleteDish(String dishId) {
    return customUpdate(
      'DELETE FROM dishes WHERE dish_id = ?1',
      variables: [Variable<String>(dishId)],
      updates: {dishes},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteDishLogs(String dishId) {
    return customUpdate(
      'DELETE FROM dish_logs WHERE dish_id = ?1',
      variables: [Variable<String>(dishId)],
      updates: {dishLogs},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteDishLogsButLast(String dishId) {
    return customUpdate(
      'DELETE FROM dish_logs WHERE dish_id = ?1 AND timestamp != (SELECT MAX(timestamp) FROM dish_logs WHERE dish_id = ?1)',
      variables: [Variable<String>(dishId)],
      updates: {dishLogs},
      updateKind: UpdateKind.delete,
    );
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

  Selectable<GetDishesResult> getDishes(
      String? fromDishId, int? fromDishTimestamp, int limit) {
    return customSelect(
        'SELECT D.*, DL.id, DL.timestamp, DL.force_store, DL.debug_data_json, DL.dish_status_json, DL.dish_history_json, DL.wifi_status_json, DL.online_json, (SELECT COUNT(*) FROM dish_logs AS DLC WHERE D.dish_id = DLC.dish_id) AS log_count FROM dishes AS D LEFT JOIN dish_logs AS DL ON(D.latest_log_id = DL.id)WHERE ?1 IS NULL OR(D.latest_log_timestamp <= ?2 AND D.dish_id > ?1)ORDER BY D.latest_log_timestamp DESC, D.dish_id ASC LIMIT ?3',
        variables: [
          Variable<String>(fromDishId),
          Variable<int>(fromDishTimestamp),
          Variable<int>(limit)
        ],
        readsFrom: {
          dishLogs,
          dishes,
        }).map((QueryRow row) => GetDishesResult(
          dishId: row.read<String>('dish_id'),
          name: row.readNullable<String>('name'),
          latestLogId: row.readNullable<int>('latest_log_id'),
          latestLogTimestamp: row.read<int>('latest_log_timestamp'),
          id: row.readNullable<int>('id'),
          timestamp: row.readNullable<int>('timestamp'),
          forceStore: row.readNullable<bool>('force_store'),
          debugDataJson: row.readNullable<String>('debug_data_json'),
          dishStatusJson: row.readNullable<Uint8List>('dish_status_json'),
          dishHistoryJson: row.readNullable<Uint8List>('dish_history_json'),
          wifiStatusJson: row.readNullable<Uint8List>('wifi_status_json'),
          onlineJson: row.readNullable<String>('online_json'),
          logCount: row.read<int>('log_count'),
        ));
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
  final int latestLogTimestamp;
  final int? id;
  final int? timestamp;
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
    required this.latestLogTimestamp,
    this.id,
    this.timestamp,
    this.forceStore,
    this.debugDataJson,
    this.dishStatusJson,
    this.dishHistoryJson,
    this.wifiStatusJson,
    this.onlineJson,
    required this.logCount,
  });
}
