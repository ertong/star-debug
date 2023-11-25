// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_inputs_dao.dart';

// ignore_for_file: type=lint
mixin _$RecentInputsDaoMixin on DatabaseAccessor<Database> {
  $RecentInputsTable get recentInputs => attachedDatabase.recentInputs;
  $DishLogsTable get dishLogs => attachedDatabase.dishLogs;
  $DishesTable get dishes => attachedDatabase.dishes;
  Future<int> addInput(String type, int timestamp, String data, String search) {
    return customInsert(
      'INSERT INTO recent_inputs (type, timestamp, data, search) VALUES (?1, ?2, ?3, ?4) ON CONFLICT (type, data) DO UPDATE SET timestamp = excluded.timestamp, search = excluded.search',
      variables: [
        Variable<String>(type),
        Variable<int>(timestamp),
        Variable<String>(data),
        Variable<String>(search)
      ],
      updates: {recentInputs},
    );
  }

  Future<int> removeInput(String type, String data) {
    return customUpdate(
      'DELETE FROM recent_inputs WHERE type = ?1 AND data = ?2',
      variables: [Variable<String>(type), Variable<String>(data)],
      updates: {recentInputs},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<RecentInput> find(String type, String search) {
    return customSelect(
        'SELECT * FROM recent_inputs WHERE type = ?1 AND search LIKE \'%\' || ?2 || \'%\' ORDER BY timestamp DESC',
        variables: [
          Variable<String>(type),
          Variable<String>(search)
        ],
        readsFrom: {
          recentInputs,
        }).asyncMap(recentInputs.mapFromRow);
  }
}
