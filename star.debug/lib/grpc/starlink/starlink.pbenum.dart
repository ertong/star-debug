///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BootReason extends $pb.ProtobufEnum {
  static const BootReason BOOT_REASON_UNKNOWN = BootReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOT_REASON_UNKNOWN');
  static const BootReason FORGOTTEN = BootReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORGOTTEN');
  static const BootReason POWER_CYCLE = BootReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'POWER_CYCLE');
  static const BootReason COMMAND = BootReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMAND');
  static const BootReason SOFTWARE_UPDATE = BootReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOFTWARE_UPDATE');
  static const BootReason CONFIG_UPDATE = BootReason._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONFIG_UPDATE');
  static const BootReason UPTIME_FDIR = BootReason._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPTIME_FDIR');
  static const BootReason REPEATER_FDIR = BootReason._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REPEATER_FDIR');
  static const BootReason AVIATION_ETH_WAN_FDIR = BootReason._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AVIATION_ETH_WAN_FDIR');

  static const $core.List<BootReason> values = <BootReason> [
    BOOT_REASON_UNKNOWN,
    FORGOTTEN,
    POWER_CYCLE,
    COMMAND,
    SOFTWARE_UPDATE,
    CONFIG_UPDATE,
    UPTIME_FDIR,
    REPEATER_FDIR,
    AVIATION_ETH_WAN_FDIR,
  ];

  static final $core.Map<$core.int, BootReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BootReason? valueOf($core.int value) => _byValue[value];

  const BootReason._($core.int v, $core.String n) : super(v, n);
}

class UserMobilityClass extends $pb.ProtobufEnum {
  static const UserMobilityClass STATIONARY = UserMobilityClass._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STATIONARY');
  static const UserMobilityClass NOMADIC = UserMobilityClass._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOMADIC');
  static const UserMobilityClass MOBILE = UserMobilityClass._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOBILE');

  static const $core.List<UserMobilityClass> values = <UserMobilityClass> [
    STATIONARY,
    NOMADIC,
    MOBILE,
  ];

  static final $core.Map<$core.int, UserMobilityClass> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserMobilityClass? valueOf($core.int value) => _byValue[value];

  const UserMobilityClass._($core.int v, $core.String n) : super(v, n);
}

class UserClassOfService extends $pb.ProtobufEnum {
  static const UserClassOfService UNKNOWN_USER_CLASS_OF_SERVICE = UserClassOfService._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_USER_CLASS_OF_SERVICE');
  static const UserClassOfService CONSUMER = UserClassOfService._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONSUMER');
  static const UserClassOfService BUSINESS = UserClassOfService._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUSINESS');
  static const UserClassOfService BUSINESS_PLUS = UserClassOfService._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUSINESS_PLUS');
  static const UserClassOfService COMMERCIAL_AVIATION = UserClassOfService._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMERCIAL_AVIATION');

  static const $core.List<UserClassOfService> values = <UserClassOfService> [
    UNKNOWN_USER_CLASS_OF_SERVICE,
    CONSUMER,
    BUSINESS,
    BUSINESS_PLUS,
    COMMERCIAL_AVIATION,
  ];

  static final $core.Map<$core.int, UserClassOfService> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserClassOfService? valueOf($core.int value) => _byValue[value];

  const UserClassOfService._($core.int v, $core.String n) : super(v, n);
}

class SoftwareUpdateState extends $pb.ProtobufEnum {
  static const SoftwareUpdateState SOFTWARE_UPDATE_STATE_UNKNOWN = SoftwareUpdateState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOFTWARE_UPDATE_STATE_UNKNOWN');
  static const SoftwareUpdateState IDLE = SoftwareUpdateState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IDLE');
  static const SoftwareUpdateState FETCHING = SoftwareUpdateState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FETCHING');
  static const SoftwareUpdateState PRE_CHECK = SoftwareUpdateState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRE_CHECK');
  static const SoftwareUpdateState WRITING = SoftwareUpdateState._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITING');
  static const SoftwareUpdateState POST_CHECK = SoftwareUpdateState._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'POST_CHECK');
  static const SoftwareUpdateState REBOOT_REQUIRED = SoftwareUpdateState._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REBOOT_REQUIRED');
  static const SoftwareUpdateState DISABLED = SoftwareUpdateState._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLED');
  static const SoftwareUpdateState FAULTED = SoftwareUpdateState._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAULTED');

  static const $core.List<SoftwareUpdateState> values = <SoftwareUpdateState> [
    SOFTWARE_UPDATE_STATE_UNKNOWN,
    IDLE,
    FETCHING,
    PRE_CHECK,
    WRITING,
    POST_CHECK,
    REBOOT_REQUIRED,
    DISABLED,
    FAULTED,
  ];

  static final $core.Map<$core.int, SoftwareUpdateState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SoftwareUpdateState? valueOf($core.int value) => _byValue[value];

  const SoftwareUpdateState._($core.int v, $core.String n) : super(v, n);
}

class HasActuators extends $pb.ProtobufEnum {
  static const HasActuators HAS_ACTUATORS_UNKNOWN = HasActuators._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HAS_ACTUATORS_UNKNOWN');
  static const HasActuators HAS_ACTUATORS_YES = HasActuators._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HAS_ACTUATORS_YES');
  static const HasActuators HAS_ACTUATORS_NO = HasActuators._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HAS_ACTUATORS_NO');

  static const $core.List<HasActuators> values = <HasActuators> [
    HAS_ACTUATORS_UNKNOWN,
    HAS_ACTUATORS_YES,
    HAS_ACTUATORS_NO,
  ];

  static final $core.Map<$core.int, HasActuators> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HasActuators? valueOf($core.int value) => _byValue[value];

  const HasActuators._($core.int v, $core.String n) : super(v, n);
}

class DishOutage_Cause extends $pb.ProtobufEnum {
  static const DishOutage_Cause UNKNOWN = DishOutage_Cause._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const DishOutage_Cause BOOTING = DishOutage_Cause._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOTING');
  static const DishOutage_Cause STOWED = DishOutage_Cause._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOWED');
  static const DishOutage_Cause THERMAL_SHUTDOWN = DishOutage_Cause._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'THERMAL_SHUTDOWN');
  static const DishOutage_Cause NO_SCHEDULE = DishOutage_Cause._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_SCHEDULE');
  static const DishOutage_Cause NO_SATS = DishOutage_Cause._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_SATS');
  static const DishOutage_Cause OBSTRUCTED = DishOutage_Cause._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OBSTRUCTED');
  static const DishOutage_Cause NO_DOWNLINK = DishOutage_Cause._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_DOWNLINK');
  static const DishOutage_Cause NO_PINGS = DishOutage_Cause._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_PINGS');
  static const DishOutage_Cause ACTUATOR_ACTIVITY = DishOutage_Cause._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTUATOR_ACTIVITY');
  static const DishOutage_Cause CABLE_TEST = DishOutage_Cause._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CABLE_TEST');
  static const DishOutage_Cause SLEEPING = DishOutage_Cause._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SLEEPING');
  static const DishOutage_Cause MOVING_WHILE_NOT_ALLOWED = DishOutage_Cause._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOVING_WHILE_NOT_ALLOWED');

  static const $core.List<DishOutage_Cause> values = <DishOutage_Cause> [
    UNKNOWN,
    BOOTING,
    STOWED,
    THERMAL_SHUTDOWN,
    NO_SCHEDULE,
    NO_SATS,
    OBSTRUCTED,
    NO_DOWNLINK,
    NO_PINGS,
    ACTUATOR_ACTIVITY,
    CABLE_TEST,
    SLEEPING,
    MOVING_WHILE_NOT_ALLOWED,
  ];

  static final $core.Map<$core.int, DishOutage_Cause> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishOutage_Cause? valueOf($core.int value) => _byValue[value];

  const DishOutage_Cause._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_LevelDishMode extends $pb.ProtobufEnum {
  static const DishConfig_LevelDishMode TILT_LIKE_NORMAL = DishConfig_LevelDishMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TILT_LIKE_NORMAL');
  static const DishConfig_LevelDishMode FORCE_LEVEL = DishConfig_LevelDishMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORCE_LEVEL');

  static const $core.List<DishConfig_LevelDishMode> values = <DishConfig_LevelDishMode> [
    TILT_LIKE_NORMAL,
    FORCE_LEVEL,
  ];

  static final $core.Map<$core.int, DishConfig_LevelDishMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_LevelDishMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_LevelDishMode._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_LocationRequestMode extends $pb.ProtobufEnum {
  static const DishConfig_LocationRequestMode NONE = DishConfig_LocationRequestMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const DishConfig_LocationRequestMode LOCAL = DishConfig_LocationRequestMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCAL');

  static const $core.List<DishConfig_LocationRequestMode> values = <DishConfig_LocationRequestMode> [
    NONE,
    LOCAL,
  ];

  static final $core.Map<$core.int, DishConfig_LocationRequestMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_LocationRequestMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_LocationRequestMode._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_SnowMeltMode extends $pb.ProtobufEnum {
  static const DishConfig_SnowMeltMode AUTO = DishConfig_SnowMeltMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTO');
  static const DishConfig_SnowMeltMode ALWAYS_ON = DishConfig_SnowMeltMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALWAYS_ON');
  static const DishConfig_SnowMeltMode ALWAYS_OFF = DishConfig_SnowMeltMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALWAYS_OFF');

  static const $core.List<DishConfig_SnowMeltMode> values = <DishConfig_SnowMeltMode> [
    AUTO,
    ALWAYS_ON,
    ALWAYS_OFF,
  ];

  static final $core.Map<$core.int, DishConfig_SnowMeltMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_SnowMeltMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_SnowMeltMode._($core.int v, $core.String n) : super(v, n);
}

