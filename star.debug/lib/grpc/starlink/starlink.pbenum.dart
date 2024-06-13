//
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// SpaceX.API.Device.Capability is an enum:
class Capability extends $pb.ProtobufEnum {
  static const Capability READ = Capability._(0, _omitEnumNames ? '' : 'READ');
  static const Capability WRITE = Capability._(1, _omitEnumNames ? '' : 'WRITE');
  static const Capability DEBUG = Capability._(2, _omitEnumNames ? '' : 'DEBUG');
  static const Capability ADMIN = Capability._(3, _omitEnumNames ? '' : 'ADMIN');
  static const Capability SETUP = Capability._(4, _omitEnumNames ? '' : 'SETUP');
  static const Capability SET_SKU = Capability._(5, _omitEnumNames ? '' : 'SET_SKU');
  static const Capability REFRESH = Capability._(6, _omitEnumNames ? '' : 'REFRESH');
  static const Capability READ_PRIVATE = Capability._(7, _omitEnumNames ? '' : 'READ_PRIVATE');
  static const Capability FUSE = Capability._(8, _omitEnumNames ? '' : 'FUSE');
  static const Capability RESET = Capability._(9, _omitEnumNames ? '' : 'RESET');
  static const Capability TEST = Capability._(10, _omitEnumNames ? '' : 'TEST');
  static const Capability WRITE_PERSISTENT = Capability._(11, _omitEnumNames ? '' : 'WRITE_PERSISTENT');
  static const Capability SSH = Capability._(12, _omitEnumNames ? '' : 'SSH');
  static const Capability READ_INTERNAL = Capability._(13, _omitEnumNames ? '' : 'READ_INTERNAL');
  static const Capability LOCAL = Capability._(14, _omitEnumNames ? '' : 'LOCAL');
  static const Capability GUEST = Capability._(15, _omitEnumNames ? '' : 'GUEST');

  static const $core.List<Capability> values = <Capability> [
    READ,
    WRITE,
    DEBUG,
    ADMIN,
    SETUP,
    SET_SKU,
    REFRESH,
    READ_PRIVATE,
    FUSE,
    RESET,
    TEST,
    WRITE_PERSISTENT,
    SSH,
    READ_INTERNAL,
    LOCAL,
    GUEST,
  ];

  static final $core.Map<$core.int, Capability> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Capability? valueOf($core.int value) => _byValue[value];

  const Capability._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.User is an enum:
class User extends $pb.ProtobufEnum {
  static const User NO_USER = User._(0, _omitEnumNames ? '' : 'NO_USER');
  static const User GOD = User._(1, _omitEnumNames ? '' : 'GOD');
  static const User LAN = User._(2, _omitEnumNames ? '' : 'LAN');
  static const User CLOUD = User._(3, _omitEnumNames ? '' : 'CLOUD');
  static const User FACTORY = User._(4, _omitEnumNames ? '' : 'FACTORY');
  static const User ROUTER = User._(5, _omitEnumNames ? '' : 'ROUTER');
  static const User GUEST_LAN = User._(6, _omitEnumNames ? '' : 'GUEST_LAN');
  static const User SENSITIVE_COMMANDING = User._(7, _omitEnumNames ? '' : 'SENSITIVE_COMMANDING');

  static const $core.List<User> values = <User> [
    NO_USER,
    GOD,
    LAN,
    CLOUD,
    FACTORY,
    ROUTER,
    GUEST_LAN,
    SENSITIVE_COMMANDING,
  ];

  static final $core.Map<$core.int, User> _byValue = $pb.ProtobufEnum.initByValue(values);
  static User? valueOf($core.int value) => _byValue[value];

  const User._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.PositionSource is an enum:
class PositionSource extends $pb.ProtobufEnum {
  static const PositionSource AUTO = PositionSource._(0, _omitEnumNames ? '' : 'AUTO');
  static const PositionSource NONE = PositionSource._(1, _omitEnumNames ? '' : 'NONE');
  static const PositionSource UT_INFO = PositionSource._(2, _omitEnumNames ? '' : 'UT_INFO');
  static const PositionSource EXTERNAL = PositionSource._(3, _omitEnumNames ? '' : 'EXTERNAL');
  static const PositionSource GPS = PositionSource._(4, _omitEnumNames ? '' : 'GPS');
  static const PositionSource STARLINK = PositionSource._(5, _omitEnumNames ? '' : 'STARLINK');
  static const PositionSource GNC_GPS = PositionSource._(6, _omitEnumNames ? '' : 'GNC_GPS');
  static const PositionSource GNC_PNT = PositionSource._(7, _omitEnumNames ? '' : 'GNC_PNT');
  static const PositionSource GNC_FUSED = PositionSource._(8, _omitEnumNames ? '' : 'GNC_FUSED');
  static const PositionSource GNC_RAW = PositionSource._(9, _omitEnumNames ? '' : 'GNC_RAW');

  static const $core.List<PositionSource> values = <PositionSource> [
    AUTO,
    NONE,
    UT_INFO,
    EXTERNAL,
    GPS,
    STARLINK,
    GNC_GPS,
    GNC_PNT,
    GNC_FUSED,
    GNC_RAW,
  ];

  static final $core.Map<$core.int, PositionSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PositionSource? valueOf($core.int value) => _byValue[value];

  const PositionSource._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.MeshAuth is an enum:
class MeshAuth extends $pb.ProtobufEnum {
  static const MeshAuth MESH_AUTH_UNKNOWN = MeshAuth._(0, _omitEnumNames ? '' : 'MESH_AUTH_UNKNOWN');
  static const MeshAuth MESH_AUTH_NEW = MeshAuth._(1, _omitEnumNames ? '' : 'MESH_AUTH_NEW');
  static const MeshAuth MESH_AUTH_TRUSTED = MeshAuth._(2, _omitEnumNames ? '' : 'MESH_AUTH_TRUSTED');
  static const MeshAuth MESH_AUTH_UNTRUSTED = MeshAuth._(3, _omitEnumNames ? '' : 'MESH_AUTH_UNTRUSTED');

  static const $core.List<MeshAuth> values = <MeshAuth> [
    MESH_AUTH_UNKNOWN,
    MESH_AUTH_NEW,
    MESH_AUTH_TRUSTED,
    MESH_AUTH_UNTRUSTED,
  ];

  static final $core.Map<$core.int, MeshAuth> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MeshAuth? valueOf($core.int value) => _byValue[value];

  const MeshAuth._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.IfaceType is an enum:
class IfaceType extends $pb.ProtobufEnum {
  static const IfaceType IFACE_TYPE_UNKNOWN = IfaceType._(0, _omitEnumNames ? '' : 'IFACE_TYPE_UNKNOWN');
  static const IfaceType IFACE_TYPE_ETH = IfaceType._(1, _omitEnumNames ? '' : 'IFACE_TYPE_ETH');
  static const IfaceType IFACE_TYPE_RF_2GHZ = IfaceType._(2, _omitEnumNames ? '' : 'IFACE_TYPE_RF_2GHZ');
  static const IfaceType IFACE_TYPE_RF_5GHZ = IfaceType._(5, _omitEnumNames ? '' : 'IFACE_TYPE_RF_5GHZ');
  static const IfaceType IFACE_TYPE_RF_5GHZ_HIGH = IfaceType._(6, _omitEnumNames ? '' : 'IFACE_TYPE_RF_5GHZ_HIGH');

  static const $core.List<IfaceType> values = <IfaceType> [
    IFACE_TYPE_UNKNOWN,
    IFACE_TYPE_ETH,
    IFACE_TYPE_RF_2GHZ,
    IFACE_TYPE_RF_5GHZ,
    IFACE_TYPE_RF_5GHZ_HIGH,
  ];

  static final $core.Map<$core.int, IfaceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IfaceType? valueOf($core.int value) => _byValue[value];

  const IfaceType._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.TxPowerLevel is an enum:
class TxPowerLevel extends $pb.ProtobufEnum {
  static const TxPowerLevel TX_POWER_LEVEL_100 = TxPowerLevel._(0, _omitEnumNames ? '' : 'TX_POWER_LEVEL_100');
  static const TxPowerLevel TX_POWER_LEVEL_80 = TxPowerLevel._(1, _omitEnumNames ? '' : 'TX_POWER_LEVEL_80');
  static const TxPowerLevel TX_POWER_LEVEL_50 = TxPowerLevel._(2, _omitEnumNames ? '' : 'TX_POWER_LEVEL_50');
  static const TxPowerLevel TX_POWER_LEVEL_25 = TxPowerLevel._(3, _omitEnumNames ? '' : 'TX_POWER_LEVEL_25');
  static const TxPowerLevel TX_POWER_LEVEL_12 = TxPowerLevel._(4, _omitEnumNames ? '' : 'TX_POWER_LEVEL_12');
  static const TxPowerLevel TX_POWER_LEVEL_6 = TxPowerLevel._(5, _omitEnumNames ? '' : 'TX_POWER_LEVEL_6');

  static const $core.List<TxPowerLevel> values = <TxPowerLevel> [
    TX_POWER_LEVEL_100,
    TX_POWER_LEVEL_80,
    TX_POWER_LEVEL_50,
    TX_POWER_LEVEL_25,
    TX_POWER_LEVEL_12,
    TX_POWER_LEVEL_6,
  ];

  static final $core.Map<$core.int, TxPowerLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TxPowerLevel? valueOf($core.int value) => _byValue[value];

  const TxPowerLevel._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.BootReason is an enum:
class BootReason extends $pb.ProtobufEnum {
  static const BootReason BOOT_REASON_UNKNOWN = BootReason._(0, _omitEnumNames ? '' : 'BOOT_REASON_UNKNOWN');
  static const BootReason FORGOTTEN = BootReason._(1, _omitEnumNames ? '' : 'FORGOTTEN');
  static const BootReason POWER_CYCLE = BootReason._(2, _omitEnumNames ? '' : 'POWER_CYCLE');
  static const BootReason COMMAND = BootReason._(3, _omitEnumNames ? '' : 'COMMAND');
  static const BootReason SOFTWARE_UPDATE = BootReason._(4, _omitEnumNames ? '' : 'SOFTWARE_UPDATE');
  static const BootReason CONFIG_UPDATE = BootReason._(5, _omitEnumNames ? '' : 'CONFIG_UPDATE');
  static const BootReason UPTIME_FDIR = BootReason._(6, _omitEnumNames ? '' : 'UPTIME_FDIR');
  static const BootReason REPEATER_FDIR = BootReason._(7, _omitEnumNames ? '' : 'REPEATER_FDIR');
  static const BootReason AVIATION_ETH_WAN_FDIR = BootReason._(8, _omitEnumNames ? '' : 'AVIATION_ETH_WAN_FDIR');
  static const BootReason KERNEL_PANIC = BootReason._(9, _omitEnumNames ? '' : 'KERNEL_PANIC');
  static const BootReason MCU_BRINGUP_FAILED_FDIR = BootReason._(11, _omitEnumNames ? '' : 'MCU_BRINGUP_FAILED_FDIR');
  static const BootReason AVIATION_OUTAGE_FDIR = BootReason._(12, _omitEnumNames ? '' : 'AVIATION_OUTAGE_FDIR');
  static const BootReason SOFTWARE_WATCHDOG = BootReason._(13, _omitEnumNames ? '' : 'SOFTWARE_WATCHDOG');
  static const BootReason INTENTIONAL_KERNEL_PANIC = BootReason._(14, _omitEnumNames ? '' : 'INTENTIONAL_KERNEL_PANIC');

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
    KERNEL_PANIC,
    MCU_BRINGUP_FAILED_FDIR,
    AVIATION_OUTAGE_FDIR,
    SOFTWARE_WATCHDOG,
    INTENTIONAL_KERNEL_PANIC,
  ];

  static final $core.Map<$core.int, BootReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BootReason? valueOf($core.int value) => _byValue[value];

  const BootReason._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.CakePriorityQueueParameter is an enum:
class CakePriorityQueueParameter extends $pb.ProtobufEnum {
  static const CakePriorityQueueParameter DIFFSERV3 = CakePriorityQueueParameter._(0, _omitEnumNames ? '' : 'DIFFSERV3');
  static const CakePriorityQueueParameter DIFFSERV4 = CakePriorityQueueParameter._(1, _omitEnumNames ? '' : 'DIFFSERV4');
  static const CakePriorityQueueParameter PRECEDENCE = CakePriorityQueueParameter._(2, _omitEnumNames ? '' : 'PRECEDENCE');
  static const CakePriorityQueueParameter BEST_EFFORT = CakePriorityQueueParameter._(3, _omitEnumNames ? '' : 'BEST_EFFORT');

  static const $core.List<CakePriorityQueueParameter> values = <CakePriorityQueueParameter> [
    DIFFSERV3,
    DIFFSERV4,
    PRECEDENCE,
    BEST_EFFORT,
  ];

  static final $core.Map<$core.int, CakePriorityQueueParameter> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CakePriorityQueueParameter? valueOf($core.int value) => _byValue[value];

  const CakePriorityQueueParameter._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.CakeAckFilter is an enum:
class CakeAckFilter extends $pb.ProtobufEnum {
  static const CakeAckFilter NO_ACK_FILTER = CakeAckFilter._(0, _omitEnumNames ? '' : 'NO_ACK_FILTER');
  static const CakeAckFilter ACK_FILTER = CakeAckFilter._(1, _omitEnumNames ? '' : 'ACK_FILTER');
  static const CakeAckFilter ACK_FILTER_AGGRESSIVE = CakeAckFilter._(2, _omitEnumNames ? '' : 'ACK_FILTER_AGGRESSIVE');

  static const $core.List<CakeAckFilter> values = <CakeAckFilter> [
    NO_ACK_FILTER,
    ACK_FILTER,
    ACK_FILTER_AGGRESSIVE,
  ];

  static final $core.Map<$core.int, CakeAckFilter> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CakeAckFilter? valueOf($core.int value) => _byValue[value];

  const CakeAckFilter._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.Protocol is an enum:
class Protocol extends $pb.ProtobufEnum {
  static const Protocol TCP = Protocol._(0, _omitEnumNames ? '' : 'TCP');
  static const Protocol UDP = Protocol._(1, _omitEnumNames ? '' : 'UDP');
  static const Protocol TLS = Protocol._(2, _omitEnumNames ? '' : 'TLS');
  static const Protocol DTLS = Protocol._(3, _omitEnumNames ? '' : 'DTLS');

  static const $core.List<Protocol> values = <Protocol> [
    TCP,
    UDP,
    TLS,
    DTLS,
  ];

  static final $core.Map<$core.int, Protocol> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Protocol? valueOf($core.int value) => _byValue[value];

  const Protocol._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.SpeedtestError is an enum:
class SpeedtestError extends $pb.ProtobufEnum {
  static const SpeedtestError SPEEDTEST_ERROR_NONE = SpeedtestError._(0, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_NONE');
  static const SpeedtestError SPEEDTEST_ERROR_UNKNOWN = SpeedtestError._(1, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_UNKNOWN');
  static const SpeedtestError SPEEDTEST_ERROR_TOKEN = SpeedtestError._(2, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_TOKEN');
  static const SpeedtestError SPEEDTEST_ERROR_API = SpeedtestError._(3, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_API');
  static const SpeedtestError SPEEDTEST_ERROR_NO_RESULT = SpeedtestError._(4, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_NO_RESULT');
  static const SpeedtestError SPEEDTEST_ERROR_OFFLINE = SpeedtestError._(5, _omitEnumNames ? '' : 'SPEEDTEST_ERROR_OFFLINE');

  static const $core.List<SpeedtestError> values = <SpeedtestError> [
    SPEEDTEST_ERROR_NONE,
    SPEEDTEST_ERROR_UNKNOWN,
    SPEEDTEST_ERROR_TOKEN,
    SPEEDTEST_ERROR_API,
    SPEEDTEST_ERROR_NO_RESULT,
    SPEEDTEST_ERROR_OFFLINE,
  ];

  static final $core.Map<$core.int, SpeedtestError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpeedtestError? valueOf($core.int value) => _byValue[value];

  const SpeedtestError._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.UserMobilityClass is an enum:
class UserMobilityClass extends $pb.ProtobufEnum {
  static const UserMobilityClass STATIONARY = UserMobilityClass._(0, _omitEnumNames ? '' : 'STATIONARY');
  static const UserMobilityClass NOMADIC = UserMobilityClass._(1, _omitEnumNames ? '' : 'NOMADIC');
  static const UserMobilityClass MOBILE = UserMobilityClass._(2, _omitEnumNames ? '' : 'MOBILE');

  static const $core.List<UserMobilityClass> values = <UserMobilityClass> [
    STATIONARY,
    NOMADIC,
    MOBILE,
  ];

  static final $core.Map<$core.int, UserMobilityClass> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserMobilityClass? valueOf($core.int value) => _byValue[value];

  const UserMobilityClass._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.UserClassOfService is an enum:
class UserClassOfService extends $pb.ProtobufEnum {
  static const UserClassOfService UNKNOWN_USER_CLASS_OF_SERVICE = UserClassOfService._(0, _omitEnumNames ? '' : 'UNKNOWN_USER_CLASS_OF_SERVICE');
  static const UserClassOfService CONSUMER = UserClassOfService._(1, _omitEnumNames ? '' : 'CONSUMER');
  static const UserClassOfService BUSINESS = UserClassOfService._(2, _omitEnumNames ? '' : 'BUSINESS');
  static const UserClassOfService BUSINESS_PLUS = UserClassOfService._(3, _omitEnumNames ? '' : 'BUSINESS_PLUS');
  static const UserClassOfService COMMERCIAL_AVIATION = UserClassOfService._(4, _omitEnumNames ? '' : 'COMMERCIAL_AVIATION');

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

/// SpaceX.API.Device.SoftwareUpdateState is an enum:
class SoftwareUpdateState extends $pb.ProtobufEnum {
  static const SoftwareUpdateState SOFTWARE_UPDATE_STATE_UNKNOWN = SoftwareUpdateState._(0, _omitEnumNames ? '' : 'SOFTWARE_UPDATE_STATE_UNKNOWN');
  static const SoftwareUpdateState IDLE = SoftwareUpdateState._(1, _omitEnumNames ? '' : 'IDLE');
  static const SoftwareUpdateState FETCHING = SoftwareUpdateState._(2, _omitEnumNames ? '' : 'FETCHING');
  static const SoftwareUpdateState PRE_CHECK = SoftwareUpdateState._(3, _omitEnumNames ? '' : 'PRE_CHECK');
  static const SoftwareUpdateState WRITING = SoftwareUpdateState._(4, _omitEnumNames ? '' : 'WRITING');
  static const SoftwareUpdateState POST_CHECK = SoftwareUpdateState._(5, _omitEnumNames ? '' : 'POST_CHECK');
  static const SoftwareUpdateState REBOOT_REQUIRED = SoftwareUpdateState._(6, _omitEnumNames ? '' : 'REBOOT_REQUIRED');
  static const SoftwareUpdateState DISABLED = SoftwareUpdateState._(7, _omitEnumNames ? '' : 'DISABLED');
  static const SoftwareUpdateState FAULTED = SoftwareUpdateState._(8, _omitEnumNames ? '' : 'FAULTED');

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

/// SpaceX.API.Device.HasActuators is an enum:
class HasActuators extends $pb.ProtobufEnum {
  static const HasActuators HAS_ACTUATORS_UNKNOWN = HasActuators._(0, _omitEnumNames ? '' : 'HAS_ACTUATORS_UNKNOWN');
  static const HasActuators HAS_ACTUATORS_YES = HasActuators._(1, _omitEnumNames ? '' : 'HAS_ACTUATORS_YES');
  static const HasActuators HAS_ACTUATORS_NO = HasActuators._(2, _omitEnumNames ? '' : 'HAS_ACTUATORS_NO');

  static const $core.List<HasActuators> values = <HasActuators> [
    HAS_ACTUATORS_UNKNOWN,
    HAS_ACTUATORS_YES,
    HAS_ACTUATORS_NO,
  ];

  static final $core.Map<$core.int, HasActuators> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HasActuators? valueOf($core.int value) => _byValue[value];

  const HasActuators._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.ActuatorState is an enum:
class ActuatorState extends $pb.ProtobufEnum {
  static const ActuatorState ACTUATOR_STATE_IDLE = ActuatorState._(0, _omitEnumNames ? '' : 'ACTUATOR_STATE_IDLE');
  static const ActuatorState ACTUATOR_STATE_FULL_TILT = ActuatorState._(1, _omitEnumNames ? '' : 'ACTUATOR_STATE_FULL_TILT');
  static const ActuatorState ACTUATOR_STATE_ROTATE = ActuatorState._(2, _omitEnumNames ? '' : 'ACTUATOR_STATE_ROTATE');
  static const ActuatorState ACTUATOR_STATE_TILT = ActuatorState._(3, _omitEnumNames ? '' : 'ACTUATOR_STATE_TILT');
  static const ActuatorState ACTUATOR_STATE_UNWRAP_POSITIVE = ActuatorState._(4, _omitEnumNames ? '' : 'ACTUATOR_STATE_UNWRAP_POSITIVE');
  static const ActuatorState ACTUATOR_STATE_UNWRAP_NEGATIVE = ActuatorState._(5, _omitEnumNames ? '' : 'ACTUATOR_STATE_UNWRAP_NEGATIVE');
  static const ActuatorState ACTUATOR_STATE_TILT_TO_STOWED = ActuatorState._(6, _omitEnumNames ? '' : 'ACTUATOR_STATE_TILT_TO_STOWED');
  static const ActuatorState ACTUATOR_STATE_FAULTED = ActuatorState._(7, _omitEnumNames ? '' : 'ACTUATOR_STATE_FAULTED');
  static const ActuatorState ACTUATOR_STATE_WAIT_TIL_STATIC = ActuatorState._(8, _omitEnumNames ? '' : 'ACTUATOR_STATE_WAIT_TIL_STATIC');
  static const ActuatorState ACTUATOR_STATE_DRIVE_TO_MOBILE_POSITION = ActuatorState._(9, _omitEnumNames ? '' : 'ACTUATOR_STATE_DRIVE_TO_MOBILE_POSITION');
  static const ActuatorState ACTUATOR_STATE_MOBILE_WAIT = ActuatorState._(10, _omitEnumNames ? '' : 'ACTUATOR_STATE_MOBILE_WAIT');

  static const $core.List<ActuatorState> values = <ActuatorState> [
    ACTUATOR_STATE_IDLE,
    ACTUATOR_STATE_FULL_TILT,
    ACTUATOR_STATE_ROTATE,
    ACTUATOR_STATE_TILT,
    ACTUATOR_STATE_UNWRAP_POSITIVE,
    ACTUATOR_STATE_UNWRAP_NEGATIVE,
    ACTUATOR_STATE_TILT_TO_STOWED,
    ACTUATOR_STATE_FAULTED,
    ACTUATOR_STATE_WAIT_TIL_STATIC,
    ACTUATOR_STATE_DRIVE_TO_MOBILE_POSITION,
    ACTUATOR_STATE_MOBILE_WAIT,
  ];

  static final $core.Map<$core.int, ActuatorState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ActuatorState? valueOf($core.int value) => _byValue[value];

  const ActuatorState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.AttitudeEstimationState is an enum:
class AttitudeEstimationState extends $pb.ProtobufEnum {
  static const AttitudeEstimationState FILTER_RESET = AttitudeEstimationState._(0, _omitEnumNames ? '' : 'FILTER_RESET');
  static const AttitudeEstimationState FILTER_UNCONVERGED = AttitudeEstimationState._(1, _omitEnumNames ? '' : 'FILTER_UNCONVERGED');
  static const AttitudeEstimationState FILTER_CONVERGED = AttitudeEstimationState._(2, _omitEnumNames ? '' : 'FILTER_CONVERGED');
  static const AttitudeEstimationState FILTER_FAULTED = AttitudeEstimationState._(3, _omitEnumNames ? '' : 'FILTER_FAULTED');
  static const AttitudeEstimationState FILTER_INVALID = AttitudeEstimationState._(4, _omitEnumNames ? '' : 'FILTER_INVALID');

  static const $core.List<AttitudeEstimationState> values = <AttitudeEstimationState> [
    FILTER_RESET,
    FILTER_UNCONVERGED,
    FILTER_CONVERGED,
    FILTER_FAULTED,
    FILTER_INVALID,
  ];

  static final $core.Map<$core.int, AttitudeEstimationState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AttitudeEstimationState? valueOf($core.int value) => _byValue[value];

  const AttitudeEstimationState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.PoeState is an enum:
class PoeState extends $pb.ProtobufEnum {
  static const PoeState POE_STATE_DISABLED = PoeState._(0, _omitEnumNames ? '' : 'POE_STATE_DISABLED');
  static const PoeState POE_STATE_NEGOTIATING = PoeState._(1, _omitEnumNames ? '' : 'POE_STATE_NEGOTIATING');
  static const PoeState POE_STATE_ON_RAMPUP = PoeState._(2, _omitEnumNames ? '' : 'POE_STATE_ON_RAMPUP');
  static const PoeState POE_STATE_ON = PoeState._(3, _omitEnumNames ? '' : 'POE_STATE_ON');
  static const PoeState POE_STATE_WATER_DETECT_RAMPUP = PoeState._(4, _omitEnumNames ? '' : 'POE_STATE_WATER_DETECT_RAMPUP');
  static const PoeState POE_STATE_WATER_DETECT = PoeState._(5, _omitEnumNames ? '' : 'POE_STATE_WATER_DETECT');

  static const $core.List<PoeState> values = <PoeState> [
    POE_STATE_DISABLED,
    POE_STATE_NEGOTIATING,
    POE_STATE_ON_RAMPUP,
    POE_STATE_ON,
    POE_STATE_WATER_DETECT_RAMPUP,
    POE_STATE_WATER_DETECT,
  ];

  static final $core.Map<$core.int, PoeState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PoeState? valueOf($core.int value) => _byValue[value];

  const PoeState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.WifiSecurity is an enum:
class WifiSecurity extends $pb.ProtobufEnum {
  static const WifiSecurity WIFI_SECURITY_UNKNOWN = WifiSecurity._(0, _omitEnumNames ? '' : 'WIFI_SECURITY_UNKNOWN');
  static const WifiSecurity OPEN = WifiSecurity._(1, _omitEnumNames ? '' : 'OPEN');
  static const WifiSecurity WPA2 = WifiSecurity._(2, _omitEnumNames ? '' : 'WPA2');
  static const WifiSecurity WPA3 = WifiSecurity._(3, _omitEnumNames ? '' : 'WPA3');
  static const WifiSecurity WPA2WPA3 = WifiSecurity._(4, _omitEnumNames ? '' : 'WPA2WPA3');

  static const $core.List<WifiSecurity> values = <WifiSecurity> [
    WIFI_SECURITY_UNKNOWN,
    OPEN,
    WPA2,
    WPA3,
    WPA2WPA3,
  ];

  static final $core.Map<$core.int, WifiSecurity> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiSecurity? valueOf($core.int value) => _byValue[value];

  const WifiSecurity._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.WifiMode is an enum:
class WifiMode extends $pb.ProtobufEnum {
  static const WifiMode WIFI_MODE_DEFAULT = WifiMode._(0, _omitEnumNames ? '' : 'WIFI_MODE_DEFAULT');
  static const WifiMode A_ONLY = WifiMode._(1, _omitEnumNames ? '' : 'A_ONLY');
  static const WifiMode B_ONLY = WifiMode._(2, _omitEnumNames ? '' : 'B_ONLY');
  static const WifiMode G_ONLY = WifiMode._(3, _omitEnumNames ? '' : 'G_ONLY');
  static const WifiMode N_ONLY = WifiMode._(4, _omitEnumNames ? '' : 'N_ONLY');
  static const WifiMode B_G_MIXED = WifiMode._(5, _omitEnumNames ? '' : 'B_G_MIXED');
  static const WifiMode A_N_MIXED = WifiMode._(6, _omitEnumNames ? '' : 'A_N_MIXED');
  static const WifiMode G_N_MIXED = WifiMode._(7, _omitEnumNames ? '' : 'G_N_MIXED');
  static const WifiMode B_G_N_MIXED = WifiMode._(8, _omitEnumNames ? '' : 'B_G_N_MIXED');
  static const WifiMode A_AN_AC_MIXED = WifiMode._(9, _omitEnumNames ? '' : 'A_AN_AC_MIXED');
  static const WifiMode AN_AC_MIXED = WifiMode._(10, _omitEnumNames ? '' : 'AN_AC_MIXED');
  static const WifiMode B_G_N_AX_MIXED = WifiMode._(11, _omitEnumNames ? '' : 'B_G_N_AX_MIXED');
  static const WifiMode A_AN_AC_AX_MIXED = WifiMode._(12, _omitEnumNames ? '' : 'A_AN_AC_AX_MIXED');
  static const WifiMode A_N_AC_MIXED = WifiMode._(13, _omitEnumNames ? '' : 'A_N_AC_MIXED');
  static const WifiMode A_N_AC_AX_MIXED = WifiMode._(14, _omitEnumNames ? '' : 'A_N_AC_AX_MIXED');

  static const $core.List<WifiMode> values = <WifiMode> [
    WIFI_MODE_DEFAULT,
    A_ONLY,
    B_ONLY,
    G_ONLY,
    N_ONLY,
    B_G_MIXED,
    A_N_MIXED,
    G_N_MIXED,
    B_G_N_MIXED,
    A_AN_AC_MIXED,
    AN_AC_MIXED,
    B_G_N_AX_MIXED,
    A_AN_AC_AX_MIXED,
    A_N_AC_MIXED,
    A_N_AC_AX_MIXED,
  ];

  static final $core.Map<$core.int, WifiMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiMode? valueOf($core.int value) => _byValue[value];

  const WifiMode._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.TransceiverModulatorState is an enum:
class TransceiverModulatorState extends $pb.ProtobufEnum {
  static const TransceiverModulatorState MODSTATE_UNKNOWN = TransceiverModulatorState._(0, _omitEnumNames ? '' : 'MODSTATE_UNKNOWN');
  static const TransceiverModulatorState MODSTATE_ENABLED = TransceiverModulatorState._(1, _omitEnumNames ? '' : 'MODSTATE_ENABLED');
  static const TransceiverModulatorState MODSTATE_DISABLED = TransceiverModulatorState._(2, _omitEnumNames ? '' : 'MODSTATE_DISABLED');

  static const $core.List<TransceiverModulatorState> values = <TransceiverModulatorState> [
    MODSTATE_UNKNOWN,
    MODSTATE_ENABLED,
    MODSTATE_DISABLED,
  ];

  static final $core.Map<$core.int, TransceiverModulatorState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransceiverModulatorState? valueOf($core.int value) => _byValue[value];

  const TransceiverModulatorState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.TransceiverTxRxState is an enum:
class TransceiverTxRxState extends $pb.ProtobufEnum {
  static const TransceiverTxRxState TXRX_UNKNOWN = TransceiverTxRxState._(0, _omitEnumNames ? '' : 'TXRX_UNKNOWN');
  static const TransceiverTxRxState TXRX_ENABLED = TransceiverTxRxState._(1, _omitEnumNames ? '' : 'TXRX_ENABLED');
  static const TransceiverTxRxState TXRX_DISABLED = TransceiverTxRxState._(2, _omitEnumNames ? '' : 'TXRX_DISABLED');

  static const $core.List<TransceiverTxRxState> values = <TransceiverTxRxState> [
    TXRX_UNKNOWN,
    TXRX_ENABLED,
    TXRX_DISABLED,
  ];

  static final $core.Map<$core.int, TransceiverTxRxState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransceiverTxRxState? valueOf($core.int value) => _byValue[value];

  const TransceiverTxRxState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.DishState is an enum:
class DishState extends $pb.ProtobufEnum {
  static const DishState UNKNOWN = DishState._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DishState CONNECTED = DishState._(1, _omitEnumNames ? '' : 'CONNECTED');
  static const DishState SEARCHING = DishState._(2, _omitEnumNames ? '' : 'SEARCHING');
  static const DishState BOOTING = DishState._(3, _omitEnumNames ? '' : 'BOOTING');

  static const $core.List<DishState> values = <DishState> [
    UNKNOWN,
    CONNECTED,
    SEARCHING,
    BOOTING,
  ];

  static final $core.Map<$core.int, DishState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishState? valueOf($core.int value) => _byValue[value];

  const DishState._($core.int v, $core.String n) : super(v, n);
}

/// SpaceX.API.Device.TransceiverTransmitBlankingState is an enum:
class TransceiverTransmitBlankingState extends $pb.ProtobufEnum {
  static const TransceiverTransmitBlankingState TB_UNKNOWN = TransceiverTransmitBlankingState._(0, _omitEnumNames ? '' : 'TB_UNKNOWN');
  static const TransceiverTransmitBlankingState TB_ENABLED = TransceiverTransmitBlankingState._(1, _omitEnumNames ? '' : 'TB_ENABLED');
  static const TransceiverTransmitBlankingState TB_DISABLED = TransceiverTransmitBlankingState._(2, _omitEnumNames ? '' : 'TB_DISABLED');

  static const $core.List<TransceiverTransmitBlankingState> values = <TransceiverTransmitBlankingState> [
    TB_UNKNOWN,
    TB_ENABLED,
    TB_DISABLED,
  ];

  static final $core.Map<$core.int, TransceiverTransmitBlankingState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransceiverTransmitBlankingState? valueOf($core.int value) => _byValue[value];

  const TransceiverTransmitBlankingState._($core.int v, $core.String n) : super(v, n);
}

class SpeedTestStats_Target extends $pb.ProtobufEnum {
  static const SpeedTestStats_Target UNKNOWN = SpeedTestStats_Target._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const SpeedTestStats_Target FASTCOM = SpeedTestStats_Target._(1, _omitEnumNames ? '' : 'FASTCOM');
  static const SpeedTestStats_Target CLOUDFLARE = SpeedTestStats_Target._(2, _omitEnumNames ? '' : 'CLOUDFLARE');

  static const $core.List<SpeedTestStats_Target> values = <SpeedTestStats_Target> [
    UNKNOWN,
    FASTCOM,
    CLOUDFLARE,
  ];

  static final $core.Map<$core.int, SpeedTestStats_Target> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpeedTestStats_Target? valueOf($core.int value) => _byValue[value];

  const SpeedTestStats_Target._($core.int v, $core.String n) : super(v, n);
}

class ClientPlatform_Platform extends $pb.ProtobufEnum {
  static const ClientPlatform_Platform UNKNOWN = ClientPlatform_Platform._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ClientPlatform_Platform IOS = ClientPlatform_Platform._(1, _omitEnumNames ? '' : 'IOS');
  static const ClientPlatform_Platform ANDROID = ClientPlatform_Platform._(2, _omitEnumNames ? '' : 'ANDROID');
  static const ClientPlatform_Platform WEB = ClientPlatform_Platform._(3, _omitEnumNames ? '' : 'WEB');

  static const $core.List<ClientPlatform_Platform> values = <ClientPlatform_Platform> [
    UNKNOWN,
    IOS,
    ANDROID,
    WEB,
  ];

  static final $core.Map<$core.int, ClientPlatform_Platform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ClientPlatform_Platform? valueOf($core.int value) => _byValue[value];

  const ClientPlatform_Platform._($core.int v, $core.String n) : super(v, n);
}

class SetTestModeRequest_RfMode extends $pb.ProtobufEnum {
  static const SetTestModeRequest_RfMode RX = SetTestModeRequest_RfMode._(0, _omitEnumNames ? '' : 'RX');
  static const SetTestModeRequest_RfMode IDLE = SetTestModeRequest_RfMode._(1, _omitEnumNames ? '' : 'IDLE');
  static const SetTestModeRequest_RfMode TX = SetTestModeRequest_RfMode._(2, _omitEnumNames ? '' : 'TX');
  static const SetTestModeRequest_RfMode CAL = SetTestModeRequest_RfMode._(3, _omitEnumNames ? '' : 'CAL');
  static const SetTestModeRequest_RfMode USER = SetTestModeRequest_RfMode._(4, _omitEnumNames ? '' : 'USER');
  static const SetTestModeRequest_RfMode NORMAL = SetTestModeRequest_RfMode._(420, _omitEnumNames ? '' : 'NORMAL');

  static const $core.List<SetTestModeRequest_RfMode> values = <SetTestModeRequest_RfMode> [
    RX,
    IDLE,
    TX,
    CAL,
    USER,
    NORMAL,
  ];

  static final $core.Map<$core.int, SetTestModeRequest_RfMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SetTestModeRequest_RfMode? valueOf($core.int value) => _byValue[value];

  const SetTestModeRequest_RfMode._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_LevelDishMode extends $pb.ProtobufEnum {
  static const DishConfig_LevelDishMode TILT_LIKE_NORMAL = DishConfig_LevelDishMode._(0, _omitEnumNames ? '' : 'TILT_LIKE_NORMAL');
  static const DishConfig_LevelDishMode FORCE_LEVEL = DishConfig_LevelDishMode._(1, _omitEnumNames ? '' : 'FORCE_LEVEL');

  static const $core.List<DishConfig_LevelDishMode> values = <DishConfig_LevelDishMode> [
    TILT_LIKE_NORMAL,
    FORCE_LEVEL,
  ];

  static final $core.Map<$core.int, DishConfig_LevelDishMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_LevelDishMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_LevelDishMode._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_LocationRequestMode extends $pb.ProtobufEnum {
  static const DishConfig_LocationRequestMode NONE = DishConfig_LocationRequestMode._(0, _omitEnumNames ? '' : 'NONE');
  static const DishConfig_LocationRequestMode LOCAL = DishConfig_LocationRequestMode._(1, _omitEnumNames ? '' : 'LOCAL');

  static const $core.List<DishConfig_LocationRequestMode> values = <DishConfig_LocationRequestMode> [
    NONE,
    LOCAL,
  ];

  static final $core.Map<$core.int, DishConfig_LocationRequestMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_LocationRequestMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_LocationRequestMode._($core.int v, $core.String n) : super(v, n);
}

class DishConfig_SnowMeltMode extends $pb.ProtobufEnum {
  static const DishConfig_SnowMeltMode AUTO = DishConfig_SnowMeltMode._(0, _omitEnumNames ? '' : 'AUTO');
  static const DishConfig_SnowMeltMode ALWAYS_ON = DishConfig_SnowMeltMode._(1, _omitEnumNames ? '' : 'ALWAYS_ON');
  static const DishConfig_SnowMeltMode ALWAYS_OFF = DishConfig_SnowMeltMode._(2, _omitEnumNames ? '' : 'ALWAYS_OFF');

  static const $core.List<DishConfig_SnowMeltMode> values = <DishConfig_SnowMeltMode> [
    AUTO,
    ALWAYS_ON,
    ALWAYS_OFF,
  ];

  static final $core.Map<$core.int, DishConfig_SnowMeltMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishConfig_SnowMeltMode? valueOf($core.int value) => _byValue[value];

  const DishConfig_SnowMeltMode._($core.int v, $core.String n) : super(v, n);
}

class WifiConfig_Band extends $pb.ProtobufEnum {
  static const WifiConfig_Band RF_UNKNOWN = WifiConfig_Band._(0, _omitEnumNames ? '' : 'RF_UNKNOWN');
  static const WifiConfig_Band RF_2GHZ = WifiConfig_Band._(2, _omitEnumNames ? '' : 'RF_2GHZ');
  static const WifiConfig_Band RF_5GHZ = WifiConfig_Band._(5, _omitEnumNames ? '' : 'RF_5GHZ');
  static const WifiConfig_Band RF_5GHZ_HIGH = WifiConfig_Band._(6, _omitEnumNames ? '' : 'RF_5GHZ_HIGH');

  static const $core.List<WifiConfig_Band> values = <WifiConfig_Band> [
    RF_UNKNOWN,
    RF_2GHZ,
    RF_5GHZ,
    RF_5GHZ_HIGH,
  ];

  static final $core.Map<$core.int, WifiConfig_Band> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiConfig_Band? valueOf($core.int value) => _byValue[value];

  const WifiConfig_Band._($core.int v, $core.String n) : super(v, n);
}

class WifiConfig_HTBandwidth extends $pb.ProtobufEnum {
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_DEFAULT = WifiConfig_HTBandwidth._(0, _omitEnumNames ? '' : 'HT_BANDWIDTH_DEFAULT');
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_20_MHZ = WifiConfig_HTBandwidth._(1, _omitEnumNames ? '' : 'HT_BANDWIDTH_20_MHZ');
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_20_OR_40_MHZ = WifiConfig_HTBandwidth._(2, _omitEnumNames ? '' : 'HT_BANDWIDTH_20_OR_40_MHZ');

  static const $core.List<WifiConfig_HTBandwidth> values = <WifiConfig_HTBandwidth> [
    HT_BANDWIDTH_DEFAULT,
    HT_BANDWIDTH_20_MHZ,
    HT_BANDWIDTH_20_OR_40_MHZ,
  ];

  static final $core.Map<$core.int, WifiConfig_HTBandwidth> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiConfig_HTBandwidth? valueOf($core.int value) => _byValue[value];

  const WifiConfig_HTBandwidth._($core.int v, $core.String n) : super(v, n);
}

class WifiConfig_Security extends $pb.ProtobufEnum {
  static const WifiConfig_Security UNKNOWN = WifiConfig_Security._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const WifiConfig_Security WPA2 = WifiConfig_Security._(1, _omitEnumNames ? '' : 'WPA2');
  static const WifiConfig_Security WPA3 = WifiConfig_Security._(2, _omitEnumNames ? '' : 'WPA3');
  static const WifiConfig_Security WPA2WPA3 = WifiConfig_Security._(3, _omitEnumNames ? '' : 'WPA2WPA3');

  static const $core.List<WifiConfig_Security> values = <WifiConfig_Security> [
    UNKNOWN,
    WPA2,
    WPA3,
    WPA2WPA3,
  ];

  static final $core.Map<$core.int, WifiConfig_Security> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiConfig_Security? valueOf($core.int value) => _byValue[value];

  const WifiConfig_Security._($core.int v, $core.String n) : super(v, n);
}

class WifiConfig_VHTBandwidth extends $pb.ProtobufEnum {
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_DEFAULT = WifiConfig_VHTBandwidth._(0, _omitEnumNames ? '' : 'VHT_BANDWIDTH_DEFAULT');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_DISABLED = WifiConfig_VHTBandwidth._(1, _omitEnumNames ? '' : 'VHT_BANDWIDTH_DISABLED');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_80_MHZ = WifiConfig_VHTBandwidth._(2, _omitEnumNames ? '' : 'VHT_BANDWIDTH_80_MHZ');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_160_MHZ = WifiConfig_VHTBandwidth._(3, _omitEnumNames ? '' : 'VHT_BANDWIDTH_160_MHZ');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_80_PLUS_80_MHZ = WifiConfig_VHTBandwidth._(4, _omitEnumNames ? '' : 'VHT_BANDWIDTH_80_PLUS_80_MHZ');

  static const $core.List<WifiConfig_VHTBandwidth> values = <WifiConfig_VHTBandwidth> [
    VHT_BANDWIDTH_DEFAULT,
    VHT_BANDWIDTH_DISABLED,
    VHT_BANDWIDTH_80_MHZ,
    VHT_BANDWIDTH_160_MHZ,
    VHT_BANDWIDTH_80_PLUS_80_MHZ,
  ];

  static final $core.Map<$core.int, WifiConfig_VHTBandwidth> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiConfig_VHTBandwidth? valueOf($core.int value) => _byValue[value];

  const WifiConfig_VHTBandwidth._($core.int v, $core.String n) : super(v, n);
}

class WifiConfig_WirelessMode extends $pb.ProtobufEnum {
  static const WifiConfig_WirelessMode WIRELESS_MODE_DEFAULT = WifiConfig_WirelessMode._(0, _omitEnumNames ? '' : 'WIRELESS_MODE_DEFAULT');
  static const WifiConfig_WirelessMode A_ONLY = WifiConfig_WirelessMode._(1, _omitEnumNames ? '' : 'A_ONLY');
  static const WifiConfig_WirelessMode B_ONLY = WifiConfig_WirelessMode._(2, _omitEnumNames ? '' : 'B_ONLY');
  static const WifiConfig_WirelessMode G_ONLY = WifiConfig_WirelessMode._(3, _omitEnumNames ? '' : 'G_ONLY');
  static const WifiConfig_WirelessMode N_ONLY = WifiConfig_WirelessMode._(4, _omitEnumNames ? '' : 'N_ONLY');
  static const WifiConfig_WirelessMode B_G_MIXED = WifiConfig_WirelessMode._(5, _omitEnumNames ? '' : 'B_G_MIXED');
  static const WifiConfig_WirelessMode A_N_MIXED = WifiConfig_WirelessMode._(6, _omitEnumNames ? '' : 'A_N_MIXED');
  static const WifiConfig_WirelessMode G_N_MIXED = WifiConfig_WirelessMode._(7, _omitEnumNames ? '' : 'G_N_MIXED');
  static const WifiConfig_WirelessMode B_G_N_MIXED = WifiConfig_WirelessMode._(8, _omitEnumNames ? '' : 'B_G_N_MIXED');
  static const WifiConfig_WirelessMode A_AN_AC_MIXED = WifiConfig_WirelessMode._(9, _omitEnumNames ? '' : 'A_AN_AC_MIXED');
  static const WifiConfig_WirelessMode AN_AC_MIXED = WifiConfig_WirelessMode._(10, _omitEnumNames ? '' : 'AN_AC_MIXED');
  static const WifiConfig_WirelessMode B_G_N_AX_MIXED = WifiConfig_WirelessMode._(11, _omitEnumNames ? '' : 'B_G_N_AX_MIXED');
  static const WifiConfig_WirelessMode A_AN_AC_AX_MIXED = WifiConfig_WirelessMode._(12, _omitEnumNames ? '' : 'A_AN_AC_AX_MIXED');

  static const $core.List<WifiConfig_WirelessMode> values = <WifiConfig_WirelessMode> [
    WIRELESS_MODE_DEFAULT,
    A_ONLY,
    B_ONLY,
    G_ONLY,
    N_ONLY,
    B_G_MIXED,
    A_N_MIXED,
    G_N_MIXED,
    B_G_N_MIXED,
    A_AN_AC_MIXED,
    AN_AC_MIXED,
    B_G_N_AX_MIXED,
    A_AN_AC_AX_MIXED,
  ];

  static final $core.Map<$core.int, WifiConfig_WirelessMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiConfig_WirelessMode? valueOf($core.int value) => _byValue[value];

  const WifiConfig_WirelessMode._($core.int v, $core.String n) : super(v, n);
}

class IwprivCommand_Ioctl extends $pb.ProtobufEnum {
  static const IwprivCommand_Ioctl IOCTL_SET = IwprivCommand_Ioctl._(0, _omitEnumNames ? '' : 'IOCTL_SET');
  static const IwprivCommand_Ioctl IOCTL_E2P = IwprivCommand_Ioctl._(1, _omitEnumNames ? '' : 'IOCTL_E2P');
  static const IwprivCommand_Ioctl IOCTL_MAC = IwprivCommand_Ioctl._(3, _omitEnumNames ? '' : 'IOCTL_MAC');
  static const IwprivCommand_Ioctl IOCTL_SX_ALLOW_5GHZ_HIGH = IwprivCommand_Ioctl._(4, _omitEnumNames ? '' : 'IOCTL_SX_ALLOW_5GHZ_HIGH');

  static const $core.List<IwprivCommand_Ioctl> values = <IwprivCommand_Ioctl> [
    IOCTL_SET,
    IOCTL_E2P,
    IOCTL_MAC,
    IOCTL_SX_ALLOW_5GHZ_HIGH,
  ];

  static final $core.Map<$core.int, IwprivCommand_Ioctl> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IwprivCommand_Ioctl? valueOf($core.int value) => _byValue[value];

  const IwprivCommand_Ioctl._($core.int v, $core.String n) : super(v, n);
}

class EthernetNetworkInterface_Duplex extends $pb.ProtobufEnum {
  static const EthernetNetworkInterface_Duplex UNKNOWN = EthernetNetworkInterface_Duplex._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const EthernetNetworkInterface_Duplex HALF = EthernetNetworkInterface_Duplex._(1, _omitEnumNames ? '' : 'HALF');
  static const EthernetNetworkInterface_Duplex FULL = EthernetNetworkInterface_Duplex._(2, _omitEnumNames ? '' : 'FULL');

  static const $core.List<EthernetNetworkInterface_Duplex> values = <EthernetNetworkInterface_Duplex> [
    UNKNOWN,
    HALF,
    FULL,
  ];

  static final $core.Map<$core.int, EthernetNetworkInterface_Duplex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EthernetNetworkInterface_Duplex? valueOf($core.int value) => _byValue[value];

  const EthernetNetworkInterface_Duplex._($core.int v, $core.String n) : super(v, n);
}

class DishOutage_Cause extends $pb.ProtobufEnum {
  static const DishOutage_Cause UNKNOWN = DishOutage_Cause._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DishOutage_Cause BOOTING = DishOutage_Cause._(1, _omitEnumNames ? '' : 'BOOTING');
  static const DishOutage_Cause STOWED = DishOutage_Cause._(2, _omitEnumNames ? '' : 'STOWED');
  static const DishOutage_Cause THERMAL_SHUTDOWN = DishOutage_Cause._(3, _omitEnumNames ? '' : 'THERMAL_SHUTDOWN');
  static const DishOutage_Cause NO_SCHEDULE = DishOutage_Cause._(4, _omitEnumNames ? '' : 'NO_SCHEDULE');
  static const DishOutage_Cause NO_SATS = DishOutage_Cause._(5, _omitEnumNames ? '' : 'NO_SATS');
  static const DishOutage_Cause OBSTRUCTED = DishOutage_Cause._(6, _omitEnumNames ? '' : 'OBSTRUCTED');
  static const DishOutage_Cause NO_DOWNLINK = DishOutage_Cause._(7, _omitEnumNames ? '' : 'NO_DOWNLINK');
  static const DishOutage_Cause NO_PINGS = DishOutage_Cause._(8, _omitEnumNames ? '' : 'NO_PINGS');
  static const DishOutage_Cause ACTUATOR_ACTIVITY = DishOutage_Cause._(9, _omitEnumNames ? '' : 'ACTUATOR_ACTIVITY');
  static const DishOutage_Cause CABLE_TEST = DishOutage_Cause._(10, _omitEnumNames ? '' : 'CABLE_TEST');
  static const DishOutage_Cause SLEEPING = DishOutage_Cause._(11, _omitEnumNames ? '' : 'SLEEPING');
  static const DishOutage_Cause MOVING_WHILE_NOT_ALLOWED = DishOutage_Cause._(12, _omitEnumNames ? '' : 'MOVING_WHILE_NOT_ALLOWED');

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

class WifiClient_Interface extends $pb.ProtobufEnum {
  static const WifiClient_Interface UNKNOWN = WifiClient_Interface._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const WifiClient_Interface ETH = WifiClient_Interface._(1, _omitEnumNames ? '' : 'ETH');
  static const WifiClient_Interface RF_2GHZ = WifiClient_Interface._(2, _omitEnumNames ? '' : 'RF_2GHZ');
  static const WifiClient_Interface RF_5GHZ = WifiClient_Interface._(3, _omitEnumNames ? '' : 'RF_5GHZ');
  static const WifiClient_Interface RF_5GHZ_HIGH = WifiClient_Interface._(4, _omitEnumNames ? '' : 'RF_5GHZ_HIGH');

  static const $core.List<WifiClient_Interface> values = <WifiClient_Interface> [
    UNKNOWN,
    ETH,
    RF_2GHZ,
    RF_5GHZ,
    RF_5GHZ_HIGH,
  ];

  static final $core.Map<$core.int, WifiClient_Interface> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiClient_Interface? valueOf($core.int value) => _byValue[value];

  const WifiClient_Interface._($core.int v, $core.String n) : super(v, n);
}

class WifiClient_Role extends $pb.ProtobufEnum {
  static const WifiClient_Role ROLE_UNKNOWN = WifiClient_Role._(0, _omitEnumNames ? '' : 'ROLE_UNKNOWN');
  static const WifiClient_Role CLIENT = WifiClient_Role._(1, _omitEnumNames ? '' : 'CLIENT');
  static const WifiClient_Role REPEATER = WifiClient_Role._(2, _omitEnumNames ? '' : 'REPEATER');
  static const WifiClient_Role CONTROLLER = WifiClient_Role._(3, _omitEnumNames ? '' : 'CONTROLLER');

  static const $core.List<WifiClient_Role> values = <WifiClient_Role> [
    ROLE_UNKNOWN,
    CLIENT,
    REPEATER,
    CONTROLLER,
  ];

  static final $core.Map<$core.int, WifiClient_Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiClient_Role? valueOf($core.int value) => _byValue[value];

  const WifiClient_Role._($core.int v, $core.String n) : super(v, n);
}

class WifiGetClientHistoryResponse_WifiLimitedReason extends $pb.ProtobufEnum {
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_UNKNOWN = WifiGetClientHistoryResponse_WifiLimitedReason._(0, _omitEnumNames ? '' : 'LIMIT_UNKNOWN');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_NONE = WifiGetClientHistoryResponse_WifiLimitedReason._(1, _omitEnumNames ? '' : 'LIMIT_NONE');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_UNCLASSIFIED = WifiGetClientHistoryResponse_WifiLimitedReason._(2, _omitEnumNames ? '' : 'LIMIT_UNCLASSIFIED');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_DROPPED_PACKETS = WifiGetClientHistoryResponse_WifiLimitedReason._(3, _omitEnumNames ? '' : 'LIMIT_DROPPED_PACKETS');

  static const $core.List<WifiGetClientHistoryResponse_WifiLimitedReason> values = <WifiGetClientHistoryResponse_WifiLimitedReason> [
    LIMIT_UNKNOWN,
    LIMIT_NONE,
    LIMIT_UNCLASSIFIED,
    LIMIT_DROPPED_PACKETS,
  ];

  static final $core.Map<$core.int, WifiGetClientHistoryResponse_WifiLimitedReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiGetClientHistoryResponse_WifiLimitedReason? valueOf($core.int value) => _byValue[value];

  const WifiGetClientHistoryResponse_WifiLimitedReason._($core.int v, $core.String n) : super(v, n);
}

class DishGetDiagnosticsResponse_DisablementCode extends $pb.ProtobufEnum {
  static const DishGetDiagnosticsResponse_DisablementCode UNKNOWN = DishGetDiagnosticsResponse_DisablementCode._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DishGetDiagnosticsResponse_DisablementCode OKAY = DishGetDiagnosticsResponse_DisablementCode._(1, _omitEnumNames ? '' : 'OKAY');
  static const DishGetDiagnosticsResponse_DisablementCode NO_ACTIVE_ACCOUNT = DishGetDiagnosticsResponse_DisablementCode._(2, _omitEnumNames ? '' : 'NO_ACTIVE_ACCOUNT');
  static const DishGetDiagnosticsResponse_DisablementCode TOO_FAR_FROM_SERVICE_ADDRESS = DishGetDiagnosticsResponse_DisablementCode._(3, _omitEnumNames ? '' : 'TOO_FAR_FROM_SERVICE_ADDRESS');
  static const DishGetDiagnosticsResponse_DisablementCode IN_OCEAN = DishGetDiagnosticsResponse_DisablementCode._(4, _omitEnumNames ? '' : 'IN_OCEAN');
  static const DishGetDiagnosticsResponse_DisablementCode INVALID_COUNTRY = DishGetDiagnosticsResponse_DisablementCode._(5, _omitEnumNames ? '' : 'INVALID_COUNTRY');
  static const DishGetDiagnosticsResponse_DisablementCode BLOCKED_COUNTRY = DishGetDiagnosticsResponse_DisablementCode._(6, _omitEnumNames ? '' : 'BLOCKED_COUNTRY');
  static const DishGetDiagnosticsResponse_DisablementCode DATA_OVERAGE_SANDBOX_POLICY = DishGetDiagnosticsResponse_DisablementCode._(7, _omitEnumNames ? '' : 'DATA_OVERAGE_SANDBOX_POLICY');

  static const $core.List<DishGetDiagnosticsResponse_DisablementCode> values = <DishGetDiagnosticsResponse_DisablementCode> [
    UNKNOWN,
    OKAY,
    NO_ACTIVE_ACCOUNT,
    TOO_FAR_FROM_SERVICE_ADDRESS,
    IN_OCEAN,
    INVALID_COUNTRY,
    BLOCKED_COUNTRY,
    DATA_OVERAGE_SANDBOX_POLICY,
  ];

  static final $core.Map<$core.int, DishGetDiagnosticsResponse_DisablementCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishGetDiagnosticsResponse_DisablementCode? valueOf($core.int value) => _byValue[value];

  const DishGetDiagnosticsResponse_DisablementCode._($core.int v, $core.String n) : super(v, n);
}

class DishGetDiagnosticsResponse_TestResult extends $pb.ProtobufEnum {
  static const DishGetDiagnosticsResponse_TestResult NO_RESULT = DishGetDiagnosticsResponse_TestResult._(0, _omitEnumNames ? '' : 'NO_RESULT');
  static const DishGetDiagnosticsResponse_TestResult PASSED = DishGetDiagnosticsResponse_TestResult._(1, _omitEnumNames ? '' : 'PASSED');
  static const DishGetDiagnosticsResponse_TestResult FAILED = DishGetDiagnosticsResponse_TestResult._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<DishGetDiagnosticsResponse_TestResult> values = <DishGetDiagnosticsResponse_TestResult> [
    NO_RESULT,
    PASSED,
    FAILED,
  ];

  static final $core.Map<$core.int, DishGetDiagnosticsResponse_TestResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DishGetDiagnosticsResponse_TestResult? valueOf($core.int value) => _byValue[value];

  const DishGetDiagnosticsResponse_TestResult._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
