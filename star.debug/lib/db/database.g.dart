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
  late final GeneratedColumn<bool> forceStore = GeneratedColumn<bool>(
      'force_store', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("force_store" IN (0, 1))'));
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
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dish_logs';
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
  DishLog copyWithCompanion(DishLogsCompanion data) {
    return DishLog(
      id: data.id.present ? data.id.value : this.id,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      dishId: data.dishId.present ? data.dishId.value : this.dishId,
      forceStore:
          data.forceStore.present ? data.forceStore.value : this.forceStore,
      debugDataJson: data.debugDataJson.present
          ? data.debugDataJson.value
          : this.debugDataJson,
      dishStatusJson: data.dishStatusJson.present
          ? data.dishStatusJson.value
          : this.dishStatusJson,
      dishHistoryJson: data.dishHistoryJson.present
          ? data.dishHistoryJson.value
          : this.dishHistoryJson,
      wifiStatusJson: data.wifiStatusJson.present
          ? data.wifiStatusJson.value
          : this.wifiStatusJson,
      onlineJson:
          data.onlineJson.present ? data.onlineJson.value : this.onlineJson,
    );
  }

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
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dishes';
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
  Dish copyWithCompanion(DishesCompanion data) {
    return Dish(
      dishId: data.dishId.present ? data.dishId.value : this.dishId,
      name: data.name.present ? data.name.value : this.name,
      latestLogId:
          data.latestLogId.present ? data.latestLogId.value : this.latestLogId,
      latestLogTimestamp: data.latestLogTimestamp.present
          ? data.latestLogTimestamp.value
          : this.latestLogTimestamp,
    );
  }

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

class $RecentInputsTable extends RecentInputs
    with TableInfo<$RecentInputsTable, RecentInput> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecentInputsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<int> timestamp = GeneratedColumn<int>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchMeta = const VerificationMeta('search');
  @override
  late final GeneratedColumn<String> search = GeneratedColumn<String>(
      'search', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, type, timestamp, data, search];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recent_inputs';
  @override
  VerificationContext validateIntegrity(Insertable<RecentInput> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('search')) {
      context.handle(_searchMeta,
          search.isAcceptableOrUnknown(data['search']!, _searchMeta));
    } else if (isInserting) {
      context.missing(_searchMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecentInput map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecentInput(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}timestamp'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      search: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search'])!,
    );
  }

  @override
  $RecentInputsTable createAlias(String alias) {
    return $RecentInputsTable(attachedDatabase, alias);
  }
}

class RecentInput extends DataClass implements Insertable<RecentInput> {
  final int id;
  final String type;
  final int timestamp;
  final String data;
  final String search;
  const RecentInput(
      {required this.id,
      required this.type,
      required this.timestamp,
      required this.data,
      required this.search});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['timestamp'] = Variable<int>(timestamp);
    map['data'] = Variable<String>(data);
    map['search'] = Variable<String>(search);
    return map;
  }

  RecentInputsCompanion toCompanion(bool nullToAbsent) {
    return RecentInputsCompanion(
      id: Value(id),
      type: Value(type),
      timestamp: Value(timestamp),
      data: Value(data),
      search: Value(search),
    );
  }

  factory RecentInput.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecentInput(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      timestamp: serializer.fromJson<int>(json['timestamp']),
      data: serializer.fromJson<String>(json['data']),
      search: serializer.fromJson<String>(json['search']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'timestamp': serializer.toJson<int>(timestamp),
      'data': serializer.toJson<String>(data),
      'search': serializer.toJson<String>(search),
    };
  }

  RecentInput copyWith(
          {int? id,
          String? type,
          int? timestamp,
          String? data,
          String? search}) =>
      RecentInput(
        id: id ?? this.id,
        type: type ?? this.type,
        timestamp: timestamp ?? this.timestamp,
        data: data ?? this.data,
        search: search ?? this.search,
      );
  RecentInput copyWithCompanion(RecentInputsCompanion data) {
    return RecentInput(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      data: data.data.present ? data.data.value : this.data,
      search: data.search.present ? data.search.value : this.search,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecentInput(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('timestamp: $timestamp, ')
          ..write('data: $data, ')
          ..write('search: $search')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, timestamp, data, search);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentInput &&
          other.id == this.id &&
          other.type == this.type &&
          other.timestamp == this.timestamp &&
          other.data == this.data &&
          other.search == this.search);
}

class RecentInputsCompanion extends UpdateCompanion<RecentInput> {
  final Value<int> id;
  final Value<String> type;
  final Value<int> timestamp;
  final Value<String> data;
  final Value<String> search;
  const RecentInputsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.data = const Value.absent(),
    this.search = const Value.absent(),
  });
  RecentInputsCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    this.timestamp = const Value.absent(),
    required String data,
    required String search,
  })  : type = Value(type),
        data = Value(data),
        search = Value(search);
  static Insertable<RecentInput> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<int>? timestamp,
    Expression<String>? data,
    Expression<String>? search,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (timestamp != null) 'timestamp': timestamp,
      if (data != null) 'data': data,
      if (search != null) 'search': search,
    });
  }

  RecentInputsCompanion copyWith(
      {Value<int>? id,
      Value<String>? type,
      Value<int>? timestamp,
      Value<String>? data,
      Value<String>? search}) {
    return RecentInputsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      timestamp: timestamp ?? this.timestamp,
      data: data ?? this.data,
      search: search ?? this.search,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<int>(timestamp.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (search.present) {
      map['search'] = Variable<String>(search.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecentInputsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('timestamp: $timestamp, ')
          ..write('data: $data, ')
          ..write('search: $search')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $DishLogsTable dishLogs = $DishLogsTable(this);
  late final Index dishLogsTs = Index('dish_logs_ts',
      'CREATE INDEX IF NOT EXISTS dish_logs_ts ON dish_logs (dish_id, timestamp)');
  late final $DishesTable dishes = $DishesTable(this);
  late final Index dishesTs = Index('dishes_ts',
      'CREATE INDEX IF NOT EXISTS dishes_ts ON dishes (latest_log_timestamp, dish_id)');
  late final $RecentInputsTable recentInputs = $RecentInputsTable(this);
  late final Index recentInputsTs = Index('recent_inputs_ts',
      'CREATE INDEX IF NOT EXISTS recent_inputs_ts ON recent_inputs (type, timestamp)');
  late final Index recentInputsData = Index('recent_inputs_data',
      'CREATE UNIQUE INDEX IF NOT EXISTS recent_inputs_data ON recent_inputs (type, data)');
  late final DishesDao dishesDao = DishesDao(this as Database);
  late final RecentInputsDao recentInputsDao =
      RecentInputsDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        dishLogs,
        dishLogsTs,
        dishes,
        dishesTs,
        recentInputs,
        recentInputsTs,
        recentInputsData
      ];
}

typedef $$DishLogsTableCreateCompanionBuilder = DishLogsCompanion Function({
  Value<int> id,
  required int timestamp,
  required String dishId,
  required bool forceStore,
  Value<String?> debugDataJson,
  Value<Uint8List?> dishStatusJson,
  Value<Uint8List?> dishHistoryJson,
  Value<Uint8List?> wifiStatusJson,
  Value<String?> onlineJson,
});
typedef $$DishLogsTableUpdateCompanionBuilder = DishLogsCompanion Function({
  Value<int> id,
  Value<int> timestamp,
  Value<String> dishId,
  Value<bool> forceStore,
  Value<String?> debugDataJson,
  Value<Uint8List?> dishStatusJson,
  Value<Uint8List?> dishHistoryJson,
  Value<Uint8List?> wifiStatusJson,
  Value<String?> onlineJson,
});

class $$DishLogsTableFilterComposer
    extends Composer<_$Database, $DishLogsTable> {
  $$DishLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dishId => $composableBuilder(
      column: $table.dishId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get forceStore => $composableBuilder(
      column: $table.forceStore, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get debugDataJson => $composableBuilder(
      column: $table.debugDataJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get dishStatusJson => $composableBuilder(
      column: $table.dishStatusJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get dishHistoryJson => $composableBuilder(
      column: $table.dishHistoryJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get wifiStatusJson => $composableBuilder(
      column: $table.wifiStatusJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get onlineJson => $composableBuilder(
      column: $table.onlineJson, builder: (column) => ColumnFilters(column));
}

class $$DishLogsTableOrderingComposer
    extends Composer<_$Database, $DishLogsTable> {
  $$DishLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dishId => $composableBuilder(
      column: $table.dishId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get forceStore => $composableBuilder(
      column: $table.forceStore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get debugDataJson => $composableBuilder(
      column: $table.debugDataJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get dishStatusJson => $composableBuilder(
      column: $table.dishStatusJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get dishHistoryJson => $composableBuilder(
      column: $table.dishHistoryJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get wifiStatusJson => $composableBuilder(
      column: $table.wifiStatusJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get onlineJson => $composableBuilder(
      column: $table.onlineJson, builder: (column) => ColumnOrderings(column));
}

class $$DishLogsTableAnnotationComposer
    extends Composer<_$Database, $DishLogsTable> {
  $$DishLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get dishId =>
      $composableBuilder(column: $table.dishId, builder: (column) => column);

  GeneratedColumn<bool> get forceStore => $composableBuilder(
      column: $table.forceStore, builder: (column) => column);

  GeneratedColumn<String> get debugDataJson => $composableBuilder(
      column: $table.debugDataJson, builder: (column) => column);

  GeneratedColumn<Uint8List> get dishStatusJson => $composableBuilder(
      column: $table.dishStatusJson, builder: (column) => column);

  GeneratedColumn<Uint8List> get dishHistoryJson => $composableBuilder(
      column: $table.dishHistoryJson, builder: (column) => column);

  GeneratedColumn<Uint8List> get wifiStatusJson => $composableBuilder(
      column: $table.wifiStatusJson, builder: (column) => column);

  GeneratedColumn<String> get onlineJson => $composableBuilder(
      column: $table.onlineJson, builder: (column) => column);
}

class $$DishLogsTableTableManager extends RootTableManager<
    _$Database,
    $DishLogsTable,
    DishLog,
    $$DishLogsTableFilterComposer,
    $$DishLogsTableOrderingComposer,
    $$DishLogsTableAnnotationComposer,
    $$DishLogsTableCreateCompanionBuilder,
    $$DishLogsTableUpdateCompanionBuilder,
    (DishLog, BaseReferences<_$Database, $DishLogsTable, DishLog>),
    DishLog,
    PrefetchHooks Function()> {
  $$DishLogsTableTableManager(_$Database db, $DishLogsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DishLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DishLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DishLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> timestamp = const Value.absent(),
            Value<String> dishId = const Value.absent(),
            Value<bool> forceStore = const Value.absent(),
            Value<String?> debugDataJson = const Value.absent(),
            Value<Uint8List?> dishStatusJson = const Value.absent(),
            Value<Uint8List?> dishHistoryJson = const Value.absent(),
            Value<Uint8List?> wifiStatusJson = const Value.absent(),
            Value<String?> onlineJson = const Value.absent(),
          }) =>
              DishLogsCompanion(
            id: id,
            timestamp: timestamp,
            dishId: dishId,
            forceStore: forceStore,
            debugDataJson: debugDataJson,
            dishStatusJson: dishStatusJson,
            dishHistoryJson: dishHistoryJson,
            wifiStatusJson: wifiStatusJson,
            onlineJson: onlineJson,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int timestamp,
            required String dishId,
            required bool forceStore,
            Value<String?> debugDataJson = const Value.absent(),
            Value<Uint8List?> dishStatusJson = const Value.absent(),
            Value<Uint8List?> dishHistoryJson = const Value.absent(),
            Value<Uint8List?> wifiStatusJson = const Value.absent(),
            Value<String?> onlineJson = const Value.absent(),
          }) =>
              DishLogsCompanion.insert(
            id: id,
            timestamp: timestamp,
            dishId: dishId,
            forceStore: forceStore,
            debugDataJson: debugDataJson,
            dishStatusJson: dishStatusJson,
            dishHistoryJson: dishHistoryJson,
            wifiStatusJson: wifiStatusJson,
            onlineJson: onlineJson,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DishLogsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DishLogsTable,
    DishLog,
    $$DishLogsTableFilterComposer,
    $$DishLogsTableOrderingComposer,
    $$DishLogsTableAnnotationComposer,
    $$DishLogsTableCreateCompanionBuilder,
    $$DishLogsTableUpdateCompanionBuilder,
    (DishLog, BaseReferences<_$Database, $DishLogsTable, DishLog>),
    DishLog,
    PrefetchHooks Function()>;
typedef $$DishesTableCreateCompanionBuilder = DishesCompanion Function({
  required String dishId,
  Value<String?> name,
  Value<int?> latestLogId,
  Value<int> latestLogTimestamp,
  Value<int> rowid,
});
typedef $$DishesTableUpdateCompanionBuilder = DishesCompanion Function({
  Value<String> dishId,
  Value<String?> name,
  Value<int?> latestLogId,
  Value<int> latestLogTimestamp,
  Value<int> rowid,
});

class $$DishesTableFilterComposer extends Composer<_$Database, $DishesTable> {
  $$DishesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get dishId => $composableBuilder(
      column: $table.dishId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get latestLogId => $composableBuilder(
      column: $table.latestLogId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get latestLogTimestamp => $composableBuilder(
      column: $table.latestLogTimestamp,
      builder: (column) => ColumnFilters(column));
}

class $$DishesTableOrderingComposer extends Composer<_$Database, $DishesTable> {
  $$DishesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get dishId => $composableBuilder(
      column: $table.dishId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get latestLogId => $composableBuilder(
      column: $table.latestLogId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get latestLogTimestamp => $composableBuilder(
      column: $table.latestLogTimestamp,
      builder: (column) => ColumnOrderings(column));
}

class $$DishesTableAnnotationComposer
    extends Composer<_$Database, $DishesTable> {
  $$DishesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get dishId =>
      $composableBuilder(column: $table.dishId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get latestLogId => $composableBuilder(
      column: $table.latestLogId, builder: (column) => column);

  GeneratedColumn<int> get latestLogTimestamp => $composableBuilder(
      column: $table.latestLogTimestamp, builder: (column) => column);
}

class $$DishesTableTableManager extends RootTableManager<
    _$Database,
    $DishesTable,
    Dish,
    $$DishesTableFilterComposer,
    $$DishesTableOrderingComposer,
    $$DishesTableAnnotationComposer,
    $$DishesTableCreateCompanionBuilder,
    $$DishesTableUpdateCompanionBuilder,
    (Dish, BaseReferences<_$Database, $DishesTable, Dish>),
    Dish,
    PrefetchHooks Function()> {
  $$DishesTableTableManager(_$Database db, $DishesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DishesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DishesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DishesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> dishId = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<int?> latestLogId = const Value.absent(),
            Value<int> latestLogTimestamp = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DishesCompanion(
            dishId: dishId,
            name: name,
            latestLogId: latestLogId,
            latestLogTimestamp: latestLogTimestamp,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String dishId,
            Value<String?> name = const Value.absent(),
            Value<int?> latestLogId = const Value.absent(),
            Value<int> latestLogTimestamp = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DishesCompanion.insert(
            dishId: dishId,
            name: name,
            latestLogId: latestLogId,
            latestLogTimestamp: latestLogTimestamp,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DishesTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $DishesTable,
    Dish,
    $$DishesTableFilterComposer,
    $$DishesTableOrderingComposer,
    $$DishesTableAnnotationComposer,
    $$DishesTableCreateCompanionBuilder,
    $$DishesTableUpdateCompanionBuilder,
    (Dish, BaseReferences<_$Database, $DishesTable, Dish>),
    Dish,
    PrefetchHooks Function()>;
typedef $$RecentInputsTableCreateCompanionBuilder = RecentInputsCompanion
    Function({
  Value<int> id,
  required String type,
  Value<int> timestamp,
  required String data,
  required String search,
});
typedef $$RecentInputsTableUpdateCompanionBuilder = RecentInputsCompanion
    Function({
  Value<int> id,
  Value<String> type,
  Value<int> timestamp,
  Value<String> data,
  Value<String> search,
});

class $$RecentInputsTableFilterComposer
    extends Composer<_$Database, $RecentInputsTable> {
  $$RecentInputsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get search => $composableBuilder(
      column: $table.search, builder: (column) => ColumnFilters(column));
}

class $$RecentInputsTableOrderingComposer
    extends Composer<_$Database, $RecentInputsTable> {
  $$RecentInputsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get search => $composableBuilder(
      column: $table.search, builder: (column) => ColumnOrderings(column));
}

class $$RecentInputsTableAnnotationComposer
    extends Composer<_$Database, $RecentInputsTable> {
  $$RecentInputsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<String> get search =>
      $composableBuilder(column: $table.search, builder: (column) => column);
}

class $$RecentInputsTableTableManager extends RootTableManager<
    _$Database,
    $RecentInputsTable,
    RecentInput,
    $$RecentInputsTableFilterComposer,
    $$RecentInputsTableOrderingComposer,
    $$RecentInputsTableAnnotationComposer,
    $$RecentInputsTableCreateCompanionBuilder,
    $$RecentInputsTableUpdateCompanionBuilder,
    (RecentInput, BaseReferences<_$Database, $RecentInputsTable, RecentInput>),
    RecentInput,
    PrefetchHooks Function()> {
  $$RecentInputsTableTableManager(_$Database db, $RecentInputsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecentInputsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecentInputsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecentInputsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> timestamp = const Value.absent(),
            Value<String> data = const Value.absent(),
            Value<String> search = const Value.absent(),
          }) =>
              RecentInputsCompanion(
            id: id,
            type: type,
            timestamp: timestamp,
            data: data,
            search: search,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String type,
            Value<int> timestamp = const Value.absent(),
            required String data,
            required String search,
          }) =>
              RecentInputsCompanion.insert(
            id: id,
            type: type,
            timestamp: timestamp,
            data: data,
            search: search,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RecentInputsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $RecentInputsTable,
    RecentInput,
    $$RecentInputsTableFilterComposer,
    $$RecentInputsTableOrderingComposer,
    $$RecentInputsTableAnnotationComposer,
    $$RecentInputsTableCreateCompanionBuilder,
    $$RecentInputsTableUpdateCompanionBuilder,
    (RecentInput, BaseReferences<_$Database, $RecentInputsTable, RecentInput>),
    RecentInput,
    PrefetchHooks Function()>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$DishLogsTableTableManager get dishLogs =>
      $$DishLogsTableTableManager(_db, _db.dishLogs);
  $$DishesTableTableManager get dishes =>
      $$DishesTableTableManager(_db, _db.dishes);
  $$RecentInputsTableTableManager get recentInputs =>
      $$RecentInputsTableTableManager(_db, _db.recentInputs);
}
