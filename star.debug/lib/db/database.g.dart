// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $DishLogsTable extends DishLogs with TableInfo<$DishLogsTable, DishLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<int> timestamp = GeneratedColumn<int>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<String> dishId = GeneratedColumn<String>(
      'dish_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _forceStoreMeta =
      const VerificationMeta('forceStore');
  @override
  late final GeneratedColumn<bool> forceStore =
      GeneratedColumn<bool>('force_store', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("force_store" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _debugDataJsonMeta =
      const VerificationMeta('debugDataJson');
  @override
  late final GeneratedColumn<String> debugDataJson = GeneratedColumn<String>(
      'debug_data_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dishStatusJsonMeta =
      const VerificationMeta('dishStatusJson');
  @override
  late final GeneratedColumn<Uint8List> dishStatusJson =
      GeneratedColumn<Uint8List>('dish_status_json', aliasedName, true,
          type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _dishHistoryJsonMeta =
      const VerificationMeta('dishHistoryJson');
  @override
  late final GeneratedColumn<Uint8List> dishHistoryJson =
      GeneratedColumn<Uint8List>('dish_history_json', aliasedName, true,
          type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _wifiStatusJsonMeta =
      const VerificationMeta('wifiStatusJson');
  @override
  late final GeneratedColumn<Uint8List> wifiStatusJson =
      GeneratedColumn<Uint8List>('wifi_status_json', aliasedName, true,
          type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _onlineJsonMeta =
      const VerificationMeta('onlineJson');
  @override
  late final GeneratedColumn<String> onlineJson = GeneratedColumn<String>(
      'online_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        dishId,
        forceStore,
        debugDataJson,
        dishStatusJson,
        dishHistoryJson,
        wifiStatusJson,
        onlineJson
      ];
  @override
  String get aliasedName => _alias ?? 'dish_logs';
  @override
  String get actualTableName => 'dish_logs';
  @override
  VerificationContext validateIntegrity(Insertable<DishLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id']!, _dishIdMeta));
    } else if (isInserting) {
      context.missing(_dishIdMeta);
    }
    if (data.containsKey('force_store')) {
      context.handle(
          _forceStoreMeta,
          forceStore.isAcceptableOrUnknown(
              data['force_store']!, _forceStoreMeta));
    } else if (isInserting) {
      context.missing(_forceStoreMeta);
    }
    if (data.containsKey('debug_data_json')) {
      context.handle(
          _debugDataJsonMeta,
          debugDataJson.isAcceptableOrUnknown(
              data['debug_data_json']!, _debugDataJsonMeta));
    }
    if (data.containsKey('dish_status_json')) {
      context.handle(
          _dishStatusJsonMeta,
          dishStatusJson.isAcceptableOrUnknown(
              data['dish_status_json']!, _dishStatusJsonMeta));
    }
    if (data.containsKey('dish_history_json')) {
      context.handle(
          _dishHistoryJsonMeta,
          dishHistoryJson.isAcceptableOrUnknown(
              data['dish_history_json']!, _dishHistoryJsonMeta));
    }
    if (data.containsKey('wifi_status_json')) {
      context.handle(
          _wifiStatusJsonMeta,
          wifiStatusJson.isAcceptableOrUnknown(
              data['wifi_status_json']!, _wifiStatusJsonMeta));
    }
    if (data.containsKey('online_json')) {
      context.handle(
          _onlineJsonMeta,
          onlineJson.isAcceptableOrUnknown(
              data['online_json']!, _onlineJsonMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DishLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DishLog(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}timestamp'])!,
      dishId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dish_id'])!,
      forceStore: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}force_store'])!,
      debugDataJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}debug_data_json']),
      dishStatusJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}dish_status_json']),
      dishHistoryJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}dish_history_json']),
      wifiStatusJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}wifi_status_json']),
      onlineJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}online_json']),
    );
  }

  @override
  $DishLogsTable createAlias(String alias) {
    return $DishLogsTable(attachedDatabase, alias);
  }
}

class DishLog extends DataClass implements Insertable<DishLog> {
  final int id;
  final int timestamp;
  final String dishId;
  final bool forceStore;
  final String? debugDataJson;
  final Uint8List? dishStatusJson;
  final Uint8List? dishHistoryJson;
  final Uint8List? wifiStatusJson;
  final String? onlineJson;
  const DishLog(
      {required this.id,
      required this.timestamp,
      required this.dishId,
      required this.forceStore,
      this.debugDataJson,
      this.dishStatusJson,
      this.dishHistoryJson,
      this.wifiStatusJson,
      this.onlineJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<int>(timestamp);
    map['dish_id'] = Variable<String>(dishId);
    map['force_store'] = Variable<bool>(forceStore);
    if (!nullToAbsent || debugDataJson != null) {
      map['debug_data_json'] = Variable<String>(debugDataJson);
    }
    if (!nullToAbsent || dishStatusJson != null) {
      map['dish_status_json'] = Variable<Uint8List>(dishStatusJson);
    }
    if (!nullToAbsent || dishHistoryJson != null) {
      map['dish_history_json'] = Variable<Uint8List>(dishHistoryJson);
    }
    if (!nullToAbsent || wifiStatusJson != null) {
      map['wifi_status_json'] = Variable<Uint8List>(wifiStatusJson);
    }
    if (!nullToAbsent || onlineJson != null) {
      map['online_json'] = Variable<String>(onlineJson);
    }
    return map;
  }

  DishLogsCompanion toCompanion(bool nullToAbsent) {
    return DishLogsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      dishId: Value(dishId),
      forceStore: Value(forceStore),
      debugDataJson: debugDataJson == null && nullToAbsent
          ? const Value.absent()
          : Value(debugDataJson),
      dishStatusJson: dishStatusJson == null && nullToAbsent
          ? const Value.absent()
          : Value(dishStatusJson),
      dishHistoryJson: dishHistoryJson == null && nullToAbsent
          ? const Value.absent()
          : Value(dishHistoryJson),
      wifiStatusJson: wifiStatusJson == null && nullToAbsent
          ? const Value.absent()
          : Value(wifiStatusJson),
      onlineJson: onlineJson == null && nullToAbsent
          ? const Value.absent()
          : Value(onlineJson),
    );
  }

  factory DishLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DishLog(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<int>(json['timestamp']),
      dishId: serializer.fromJson<String>(json['dishId']),
      forceStore: serializer.fromJson<bool>(json['forceStore']),
      debugDataJson: serializer.fromJson<String?>(json['debugDataJson']),
      dishStatusJson: serializer.fromJson<Uint8List?>(json['dishStatusJson']),
      dishHistoryJson: serializer.fromJson<Uint8List?>(json['dishHistoryJson']),
      wifiStatusJson: serializer.fromJson<Uint8List?>(json['wifiStatusJson']),
      onlineJson: serializer.fromJson<String?>(json['onlineJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<int>(timestamp),
      'dishId': serializer.toJson<String>(dishId),
      'forceStore': serializer.toJson<bool>(forceStore),
      'debugDataJson': serializer.toJson<String?>(debugDataJson),
      'dishStatusJson': serializer.toJson<Uint8List?>(dishStatusJson),
      'dishHistoryJson': serializer.toJson<Uint8List?>(dishHistoryJson),
      'wifiStatusJson': serializer.toJson<Uint8List?>(wifiStatusJson),
      'onlineJson': serializer.toJson<String?>(onlineJson),
    };
  }

  DishLog copyWith(
          {int? id,
          int? timestamp,
          String? dishId,
          bool? forceStore,
          Value<String?> debugDataJson = const Value.absent(),
          Value<Uint8List?> dishStatusJson = const Value.absent(),
          Value<Uint8List?> dishHistoryJson = const Value.absent(),
          Value<Uint8List?> wifiStatusJson = const Value.absent(),
          Value<String?> onlineJson = const Value.absent()}) =>
      DishLog(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        dishId: dishId ?? this.dishId,
        forceStore: forceStore ?? this.forceStore,
        debugDataJson:
            debugDataJson.present ? debugDataJson.value : this.debugDataJson,
        dishStatusJson:
            dishStatusJson.present ? dishStatusJson.value : this.dishStatusJson,
        dishHistoryJson: dishHistoryJson.present
            ? dishHistoryJson.value
            : this.dishHistoryJson,
        wifiStatusJson:
            wifiStatusJson.present ? wifiStatusJson.value : this.wifiStatusJson,
        onlineJson: onlineJson.present ? onlineJson.value : this.onlineJson,
      );
  @override
  String toString() {
    return (StringBuffer('DishLog(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('dishId: $dishId, ')
          ..write('forceStore: $forceStore, ')
          ..write('debugDataJson: $debugDataJson, ')
          ..write('dishStatusJson: $dishStatusJson, ')
          ..write('dishHistoryJson: $dishHistoryJson, ')
          ..write('wifiStatusJson: $wifiStatusJson, ')
          ..write('onlineJson: $onlineJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      timestamp,
      dishId,
      forceStore,
      debugDataJson,
      $driftBlobEquality.hash(dishStatusJson),
      $driftBlobEquality.hash(dishHistoryJson),
      $driftBlobEquality.hash(wifiStatusJson),
      onlineJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DishLog &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.dishId == this.dishId &&
          other.forceStore == this.forceStore &&
          other.debugDataJson == this.debugDataJson &&
          $driftBlobEquality.equals(
              other.dishStatusJson, this.dishStatusJson) &&
          $driftBlobEquality.equals(
              other.dishHistoryJson, this.dishHistoryJson) &&
          $driftBlobEquality.equals(
              other.wifiStatusJson, this.wifiStatusJson) &&
          other.onlineJson == this.onlineJson);
}

class DishLogsCompanion extends UpdateCompanion<DishLog> {
  final Value<int> id;
  final Value<int> timestamp;
  final Value<String> dishId;
  final Value<bool> forceStore;
  final Value<String?> debugDataJson;
  final Value<Uint8List?> dishStatusJson;
  final Value<Uint8List?> dishHistoryJson;
  final Value<Uint8List?> wifiStatusJson;
  final Value<String?> onlineJson;
  const DishLogsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.dishId = const Value.absent(),
    this.forceStore = const Value.absent(),
    this.debugDataJson = const Value.absent(),
    this.dishStatusJson = const Value.absent(),
    this.dishHistoryJson = const Value.absent(),
    this.wifiStatusJson = const Value.absent(),
    this.onlineJson = const Value.absent(),
  });
  DishLogsCompanion.insert({
    this.id = const Value.absent(),
    required int timestamp,
    required String dishId,
    required bool forceStore,
    this.debugDataJson = const Value.absent(),
    this.dishStatusJson = const Value.absent(),
    this.dishHistoryJson = const Value.absent(),
    this.wifiStatusJson = const Value.absent(),
    this.onlineJson = const Value.absent(),
  })  : timestamp = Value(timestamp),
        dishId = Value(dishId),
        forceStore = Value(forceStore);
  static Insertable<DishLog> custom({
    Expression<int>? id,
    Expression<int>? timestamp,
    Expression<String>? dishId,
    Expression<bool>? forceStore,
    Expression<String>? debugDataJson,
    Expression<Uint8List>? dishStatusJson,
    Expression<Uint8List>? dishHistoryJson,
    Expression<Uint8List>? wifiStatusJson,
    Expression<String>? onlineJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (dishId != null) 'dish_id': dishId,
      if (forceStore != null) 'force_store': forceStore,
      if (debugDataJson != null) 'debug_data_json': debugDataJson,
      if (dishStatusJson != null) 'dish_status_json': dishStatusJson,
      if (dishHistoryJson != null) 'dish_history_json': dishHistoryJson,
      if (wifiStatusJson != null) 'wifi_status_json': wifiStatusJson,
      if (onlineJson != null) 'online_json': onlineJson,
    });
  }

  DishLogsCompanion copyWith(
      {Value<int>? id,
      Value<int>? timestamp,
      Value<String>? dishId,
      Value<bool>? forceStore,
      Value<String?>? debugDataJson,
      Value<Uint8List?>? dishStatusJson,
      Value<Uint8List?>? dishHistoryJson,
      Value<Uint8List?>? wifiStatusJson,
      Value<String?>? onlineJson}) {
    return DishLogsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      dishId: dishId ?? this.dishId,
      forceStore: forceStore ?? this.forceStore,
      debugDataJson: debugDataJson ?? this.debugDataJson,
      dishStatusJson: dishStatusJson ?? this.dishStatusJson,
      dishHistoryJson: dishHistoryJson ?? this.dishHistoryJson,
      wifiStatusJson: wifiStatusJson ?? this.wifiStatusJson,
      onlineJson: onlineJson ?? this.onlineJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<int>(timestamp.value);
    }
    if (dishId.present) {
      map['dish_id'] = Variable<String>(dishId.value);
    }
    if (forceStore.present) {
      map['force_store'] = Variable<bool>(forceStore.value);
    }
    if (debugDataJson.present) {
      map['debug_data_json'] = Variable<String>(debugDataJson.value);
    }
    if (dishStatusJson.present) {
      map['dish_status_json'] = Variable<Uint8List>(dishStatusJson.value);
    }
    if (dishHistoryJson.present) {
      map['dish_history_json'] = Variable<Uint8List>(dishHistoryJson.value);
    }
    if (wifiStatusJson.present) {
      map['wifi_status_json'] = Variable<Uint8List>(wifiStatusJson.value);
    }
    if (onlineJson.present) {
      map['online_json'] = Variable<String>(onlineJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishLogsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('dishId: $dishId, ')
          ..write('forceStore: $forceStore, ')
          ..write('debugDataJson: $debugDataJson, ')
          ..write('dishStatusJson: $dishStatusJson, ')
          ..write('dishHistoryJson: $dishHistoryJson, ')
          ..write('wifiStatusJson: $wifiStatusJson, ')
          ..write('onlineJson: $onlineJson')
          ..write(')'))
        .toString();
  }
}

class $DishesTable extends Dishes with TableInfo<$DishesTable, Dish> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<String> dishId = GeneratedColumn<String>(
      'dish_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latestLogIdMeta =
      const VerificationMeta('latestLogId');
  @override
  late final GeneratedColumn<int> latestLogId = GeneratedColumn<int>(
      'latest_log_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _latestLogTimestampMeta =
      const VerificationMeta('latestLogTimestamp');
  @override
  late final GeneratedColumn<int> latestLogTimestamp = GeneratedColumn<int>(
      'latest_log_timestamp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [dishId, name, latestLogId, latestLogTimestamp];
  @override
  String get aliasedName => _alias ?? 'dishes';
  @override
  String get actualTableName => 'dishes';
  @override
  VerificationContext validateIntegrity(Insertable<Dish> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id']!, _dishIdMeta));
    } else if (isInserting) {
      context.missing(_dishIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('latest_log_id')) {
      context.handle(
          _latestLogIdMeta,
          latestLogId.isAcceptableOrUnknown(
              data['latest_log_id']!, _latestLogIdMeta));
    }
    if (data.containsKey('latest_log_timestamp')) {
      context.handle(
          _latestLogTimestampMeta,
          latestLogTimestamp.isAcceptableOrUnknown(
              data['latest_log_timestamp']!, _latestLogTimestampMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {dishId};
  @override
  Dish map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Dish(
      dishId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dish_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      latestLogId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}latest_log_id']),
      latestLogTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}latest_log_timestamp'])!,
    );
  }

  @override
  $DishesTable createAlias(String alias) {
    return $DishesTable(attachedDatabase, alias);
  }
}

class Dish extends DataClass implements Insertable<Dish> {
  final String dishId;
  final String? name;
  final int? latestLogId;
  final int latestLogTimestamp;
  const Dish(
      {required this.dishId,
      this.name,
      this.latestLogId,
      required this.latestLogTimestamp});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['dish_id'] = Variable<String>(dishId);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || latestLogId != null) {
      map['latest_log_id'] = Variable<int>(latestLogId);
    }
    map['latest_log_timestamp'] = Variable<int>(latestLogTimestamp);
    return map;
  }

  DishesCompanion toCompanion(bool nullToAbsent) {
    return DishesCompanion(
      dishId: Value(dishId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      latestLogId: latestLogId == null && nullToAbsent
          ? const Value.absent()
          : Value(latestLogId),
      latestLogTimestamp: Value(latestLogTimestamp),
    );
  }

  factory Dish.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Dish(
      dishId: serializer.fromJson<String>(json['dishId']),
      name: serializer.fromJson<String?>(json['name']),
      latestLogId: serializer.fromJson<int?>(json['latestLogId']),
      latestLogTimestamp: serializer.fromJson<int>(json['latestLogTimestamp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'dishId': serializer.toJson<String>(dishId),
      'name': serializer.toJson<String?>(name),
      'latestLogId': serializer.toJson<int?>(latestLogId),
      'latestLogTimestamp': serializer.toJson<int>(latestLogTimestamp),
    };
  }

  Dish copyWith(
          {String? dishId,
          Value<String?> name = const Value.absent(),
          Value<int?> latestLogId = const Value.absent(),
          int? latestLogTimestamp}) =>
      Dish(
        dishId: dishId ?? this.dishId,
        name: name.present ? name.value : this.name,
        latestLogId: latestLogId.present ? latestLogId.value : this.latestLogId,
        latestLogTimestamp: latestLogTimestamp ?? this.latestLogTimestamp,
      );
  @override
  String toString() {
    return (StringBuffer('Dish(')
          ..write('dishId: $dishId, ')
          ..write('name: $name, ')
          ..write('latestLogId: $latestLogId, ')
          ..write('latestLogTimestamp: $latestLogTimestamp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(dishId, name, latestLogId, latestLogTimestamp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Dish &&
          other.dishId == this.dishId &&
          other.name == this.name &&
          other.latestLogId == this.latestLogId &&
          other.latestLogTimestamp == this.latestLogTimestamp);
}

class DishesCompanion extends UpdateCompanion<Dish> {
  final Value<String> dishId;
  final Value<String?> name;
  final Value<int?> latestLogId;
  final Value<int> latestLogTimestamp;
  final Value<int> rowid;
  const DishesCompanion({
    this.dishId = const Value.absent(),
    this.name = const Value.absent(),
    this.latestLogId = const Value.absent(),
    this.latestLogTimestamp = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DishesCompanion.insert({
    required String dishId,
    this.name = const Value.absent(),
    this.latestLogId = const Value.absent(),
    this.latestLogTimestamp = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : dishId = Value(dishId);
  static Insertable<Dish> custom({
    Expression<String>? dishId,
    Expression<String>? name,
    Expression<int>? latestLogId,
    Expression<int>? latestLogTimestamp,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (dishId != null) 'dish_id': dishId,
      if (name != null) 'name': name,
      if (latestLogId != null) 'latest_log_id': latestLogId,
      if (latestLogTimestamp != null)
        'latest_log_timestamp': latestLogTimestamp,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DishesCompanion copyWith(
      {Value<String>? dishId,
      Value<String?>? name,
      Value<int?>? latestLogId,
      Value<int>? latestLogTimestamp,
      Value<int>? rowid}) {
    return DishesCompanion(
      dishId: dishId ?? this.dishId,
      name: name ?? this.name,
      latestLogId: latestLogId ?? this.latestLogId,
      latestLogTimestamp: latestLogTimestamp ?? this.latestLogTimestamp,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (dishId.present) {
      map['dish_id'] = Variable<String>(dishId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (latestLogId.present) {
      map['latest_log_id'] = Variable<int>(latestLogId.value);
    }
    if (latestLogTimestamp.present) {
      map['latest_log_timestamp'] = Variable<int>(latestLogTimestamp.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishesCompanion(')
          ..write('dishId: $dishId, ')
          ..write('name: $name, ')
          ..write('latestLogId: $latestLogId, ')
          ..write('latestLogTimestamp: $latestLogTimestamp, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $DishLogsTable dishLogs = $DishLogsTable(this);
  late final Index dishLogsTs = Index('dish_logs_ts',
      'CREATE INDEX IF NOT EXISTS dish_logs_ts ON dish_logs (dish_id, timestamp)');
  late final $DishesTable dishes = $DishesTable(this);
  late final Index dishesTs = Index('dishes_ts',
      'CREATE INDEX IF NOT EXISTS dishes_ts ON dishes (latest_log_timestamp, dish_id)');
  late final DishesDao dishesDao = DishesDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [dishLogs, dishLogsTs, dishes, dishesTs];
}
