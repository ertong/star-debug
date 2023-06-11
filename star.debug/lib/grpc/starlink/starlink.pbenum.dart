///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Capability extends $pb.ProtobufEnum {
  static const Capability READ = Capability._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ');
  static const Capability WRITE = Capability._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITE');
  static const Capability DEBUG = Capability._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBUG');
  static const Capability ADMIN = Capability._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADMIN');
  static const Capability SETUP = Capability._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETUP');
  static const Capability SET_SKU = Capability._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SET_SKU');
  static const Capability REFRESH = Capability._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REFRESH');
  static const Capability READ_PRIVATE = Capability._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ_PRIVATE');
  static const Capability FUSE = Capability._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FUSE');
  static const Capability RESET = Capability._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESET');
  static const Capability TEST = Capability._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEST');
  static const Capability WRITE_PERSISTENT = Capability._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITE_PERSISTENT');
  static const Capability SSH = Capability._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SSH');
  static const Capability READ_INTERNAL = Capability._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ_INTERNAL');
  static const Capability LOCAL = Capability._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCAL');

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
  ];

  static final $core.Map<$core.int, Capability> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Capability? valueOf($core.int value) => _byValue[value];

  const Capability._($core.int v, $core.String n) : super(v, n);
}

class PositionSource extends $pb.ProtobufEnum {
  static const PositionSource AUTO = PositionSource._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTO');
  static const PositionSource NONE = PositionSource._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const PositionSource UT_INFO = PositionSource._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UT_INFO');
  static const PositionSource EXTERNAL = PositionSource._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXTERNAL');
  static const PositionSource GPS = PositionSource._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GPS');
  static const PositionSource STARLINK = PositionSource._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STARLINK');

  static const $core.List<PositionSource> values = <PositionSource> [
    AUTO,
    NONE,
    UT_INFO,
    EXTERNAL,
    GPS,
    STARLINK,
  ];

  static final $core.Map<$core.int, PositionSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PositionSource? valueOf($core.int value) => _byValue[value];

  const PositionSource._($core.int v, $core.String n) : super(v, n);
}

class MeshAuth extends $pb.ProtobufEnum {
  static const MeshAuth MESH_AUTH_UNKNOWN = MeshAuth._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESH_AUTH_UNKNOWN');
  static const MeshAuth MESH_AUTH_NEW = MeshAuth._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESH_AUTH_NEW');
  static const MeshAuth MESH_AUTH_TRUSTED = MeshAuth._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESH_AUTH_TRUSTED');
  static const MeshAuth MESH_AUTH_UNTRUSTED = MeshAuth._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESH_AUTH_UNTRUSTED');

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

class IfaceType extends $pb.ProtobufEnum {
  static const IfaceType IFACE_TYPE_UNKNOWN = IfaceType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IFACE_TYPE_UNKNOWN');
  static const IfaceType IFACE_TYPE_ETH = IfaceType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IFACE_TYPE_ETH');
  static const IfaceType IFACE_TYPE_RF_2GHZ = IfaceType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IFACE_TYPE_RF_2GHZ');
  static const IfaceType IFACE_TYPE_RF_5GHZ = IfaceType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IFACE_TYPE_RF_5GHZ');
  static const IfaceType IFACE_TYPE_RF_5GHZ_HIGH = IfaceType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IFACE_TYPE_RF_5GHZ_HIGH');

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

class TxPowerLevel extends $pb.ProtobufEnum {
  static const TxPowerLevel TX_POWER_LEVEL_100 = TxPowerLevel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_100');
  static const TxPowerLevel TX_POWER_LEVEL_80 = TxPowerLevel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_80');
  static const TxPowerLevel TX_POWER_LEVEL_50 = TxPowerLevel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_50');
  static const TxPowerLevel TX_POWER_LEVEL_25 = TxPowerLevel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_25');
  static const TxPowerLevel TX_POWER_LEVEL_12 = TxPowerLevel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_12');
  static const TxPowerLevel TX_POWER_LEVEL_6 = TxPowerLevel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_POWER_LEVEL_6');

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

class SpeedtestError extends $pb.ProtobufEnum {
  static const SpeedtestError SPEEDTEST_ERROR_NONE = SpeedtestError._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_NONE');
  static const SpeedtestError SPEEDTEST_ERROR_UNKNOWN = SpeedtestError._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_UNKNOWN');
  static const SpeedtestError SPEEDTEST_ERROR_TOKEN = SpeedtestError._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_TOKEN');
  static const SpeedtestError SPEEDTEST_ERROR_API = SpeedtestError._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_API');
  static const SpeedtestError SPEEDTEST_ERROR_NO_RESULT = SpeedtestError._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_NO_RESULT');
  static const SpeedtestError SPEEDTEST_ERROR_OFFLINE = SpeedtestError._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPEEDTEST_ERROR_OFFLINE');

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

class TransceiverModulatorState extends $pb.ProtobufEnum {
  static const TransceiverModulatorState MODSTATE_UNKNOWN = TransceiverModulatorState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODSTATE_UNKNOWN');
  static const TransceiverModulatorState MODSTATE_ENABLED = TransceiverModulatorState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODSTATE_ENABLED');
  static const TransceiverModulatorState MODSTATE_DISABLED = TransceiverModulatorState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODSTATE_DISABLED');

  static const $core.List<TransceiverModulatorState> values = <TransceiverModulatorState> [
    MODSTATE_UNKNOWN,
    MODSTATE_ENABLED,
    MODSTATE_DISABLED,
  ];

  static final $core.Map<$core.int, TransceiverModulatorState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransceiverModulatorState? valueOf($core.int value) => _byValue[value];

  const TransceiverModulatorState._($core.int v, $core.String n) : super(v, n);
}

class TransceiverTxRxState extends $pb.ProtobufEnum {
  static const TransceiverTxRxState TXRX_UNKNOWN = TransceiverTxRxState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXRX_UNKNOWN');
  static const TransceiverTxRxState TXRX_ENABLED = TransceiverTxRxState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXRX_ENABLED');
  static const TransceiverTxRxState TXRX_DISABLED = TransceiverTxRxState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXRX_DISABLED');

  static const $core.List<TransceiverTxRxState> values = <TransceiverTxRxState> [
    TXRX_UNKNOWN,
    TXRX_ENABLED,
    TXRX_DISABLED,
  ];

  static final $core.Map<$core.int, TransceiverTxRxState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransceiverTxRxState? valueOf($core.int value) => _byValue[value];

  const TransceiverTxRxState._($core.int v, $core.String n) : super(v, n);
}

class DishState extends $pb.ProtobufEnum {
  static const DishState UNKNOWN = DishState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const DishState CONNECTED = DishState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTED');
  static const DishState SEARCHING = DishState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEARCHING');
  static const DishState BOOTING = DishState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOTING');

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

class TransceiverTransmitBlankingState extends $pb.ProtobufEnum {
  static const TransceiverTransmitBlankingState TB_UNKNOWN = TransceiverTransmitBlankingState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TB_UNKNOWN');
  static const TransceiverTransmitBlankingState TB_ENABLED = TransceiverTransmitBlankingState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TB_ENABLED');
  static const TransceiverTransmitBlankingState TB_DISABLED = TransceiverTransmitBlankingState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TB_DISABLED');

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
  static const SpeedTestStats_Target UNKNOWN = SpeedTestStats_Target._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const SpeedTestStats_Target FASTCOM = SpeedTestStats_Target._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FASTCOM');
  static const SpeedTestStats_Target CLOUDFLARE = SpeedTestStats_Target._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOUDFLARE');

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
  static const ClientPlatform_Platform UNKNOWN = ClientPlatform_Platform._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const ClientPlatform_Platform IOS = ClientPlatform_Platform._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IOS');
  static const ClientPlatform_Platform ANDROID = ClientPlatform_Platform._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const ClientPlatform_Platform WEB = ClientPlatform_Platform._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEB');

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
  static const SetTestModeRequest_RfMode RX = SetTestModeRequest_RfMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RX');
  static const SetTestModeRequest_RfMode IDLE = SetTestModeRequest_RfMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IDLE');
  static const SetTestModeRequest_RfMode TX = SetTestModeRequest_RfMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX');
  static const SetTestModeRequest_RfMode CAL = SetTestModeRequest_RfMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CAL');
  static const SetTestModeRequest_RfMode USER = SetTestModeRequest_RfMode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'USER');
  static const SetTestModeRequest_RfMode NORMAL = SetTestModeRequest_RfMode._(420, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NORMAL');

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

class WifiConfig_Band extends $pb.ProtobufEnum {
  static const WifiConfig_Band RF_UNKNOWN = WifiConfig_Band._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_UNKNOWN');
  static const WifiConfig_Band RF_2GHZ = WifiConfig_Band._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_2GHZ');
  static const WifiConfig_Band RF_5GHZ = WifiConfig_Band._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_5GHZ');
  static const WifiConfig_Band RF_5GHZ_HIGH = WifiConfig_Band._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_5GHZ_HIGH');

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
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_DEFAULT = WifiConfig_HTBandwidth._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HT_BANDWIDTH_DEFAULT');
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_20_MHZ = WifiConfig_HTBandwidth._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HT_BANDWIDTH_20_MHZ');
  static const WifiConfig_HTBandwidth HT_BANDWIDTH_20_OR_40_MHZ = WifiConfig_HTBandwidth._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HT_BANDWIDTH_20_OR_40_MHZ');

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
  static const WifiConfig_Security UNKNOWN = WifiConfig_Security._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const WifiConfig_Security WPA2 = WifiConfig_Security._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WPA2');
  static const WifiConfig_Security WPA3 = WifiConfig_Security._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WPA3');
  static const WifiConfig_Security WPA2WPA3 = WifiConfig_Security._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WPA2WPA3');

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
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_DEFAULT = WifiConfig_VHTBandwidth._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VHT_BANDWIDTH_DEFAULT');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_DISABLED = WifiConfig_VHTBandwidth._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VHT_BANDWIDTH_DISABLED');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_80_MHZ = WifiConfig_VHTBandwidth._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VHT_BANDWIDTH_80_MHZ');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_160_MHZ = WifiConfig_VHTBandwidth._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VHT_BANDWIDTH_160_MHZ');
  static const WifiConfig_VHTBandwidth VHT_BANDWIDTH_80_PLUS_80_MHZ = WifiConfig_VHTBandwidth._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VHT_BANDWIDTH_80_PLUS_80_MHZ');

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
  static const WifiConfig_WirelessMode WIRELESS_MODE_DEFAULT = WifiConfig_WirelessMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIRELESS_MODE_DEFAULT');
  static const WifiConfig_WirelessMode A_ONLY = WifiConfig_WirelessMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'A_ONLY');
  static const WifiConfig_WirelessMode B_ONLY = WifiConfig_WirelessMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'B_ONLY');
  static const WifiConfig_WirelessMode G_ONLY = WifiConfig_WirelessMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_ONLY');
  static const WifiConfig_WirelessMode N_ONLY = WifiConfig_WirelessMode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'N_ONLY');
  static const WifiConfig_WirelessMode B_G_MIXED = WifiConfig_WirelessMode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'B_G_MIXED');
  static const WifiConfig_WirelessMode A_N_MIXED = WifiConfig_WirelessMode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'A_N_MIXED');
  static const WifiConfig_WirelessMode G_N_MIXED = WifiConfig_WirelessMode._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_N_MIXED');
  static const WifiConfig_WirelessMode B_G_N_MIXED = WifiConfig_WirelessMode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'B_G_N_MIXED');
  static const WifiConfig_WirelessMode A_AN_AC_MIXED = WifiConfig_WirelessMode._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'A_AN_AC_MIXED');
  static const WifiConfig_WirelessMode AN_AC_MIXED = WifiConfig_WirelessMode._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AN_AC_MIXED');
  static const WifiConfig_WirelessMode B_G_N_AX_MIXED = WifiConfig_WirelessMode._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'B_G_N_AX_MIXED');
  static const WifiConfig_WirelessMode A_AN_AC_AX_MIXED = WifiConfig_WirelessMode._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'A_AN_AC_AX_MIXED');

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

class EthernetNetworkInterface_Duplex extends $pb.ProtobufEnum {
  static const EthernetNetworkInterface_Duplex UNKNOWN = EthernetNetworkInterface_Duplex._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const EthernetNetworkInterface_Duplex HALF = EthernetNetworkInterface_Duplex._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HALF');
  static const EthernetNetworkInterface_Duplex FULL = EthernetNetworkInterface_Duplex._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FULL');

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

class WifiClient_Interface extends $pb.ProtobufEnum {
  static const WifiClient_Interface UNKNOWN = WifiClient_Interface._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const WifiClient_Interface ETH = WifiClient_Interface._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ETH');
  static const WifiClient_Interface RF_2GHZ = WifiClient_Interface._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_2GHZ');
  static const WifiClient_Interface RF_5GHZ = WifiClient_Interface._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_5GHZ');
  static const WifiClient_Interface RF_5GHZ_HIGH = WifiClient_Interface._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RF_5GHZ_HIGH');

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
  static const WifiClient_Role ROLE_UNKNOWN = WifiClient_Role._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ROLE_UNKNOWN');
  static const WifiClient_Role CLIENT = WifiClient_Role._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLIENT');
  static const WifiClient_Role REPEATER = WifiClient_Role._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REPEATER');
  static const WifiClient_Role CONTROLLER = WifiClient_Role._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTROLLER');

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

class WifiScanResults_Network_Source extends $pb.ProtobufEnum {
  static const WifiScanResults_Network_Source UNKNOWN = WifiScanResults_Network_Source._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const WifiScanResults_Network_Source SCAN_2_4GHZ = WifiScanResults_Network_Source._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCAN_2_4GHZ');
  static const WifiScanResults_Network_Source SCAN_5GHZ = WifiScanResults_Network_Source._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCAN_5GHZ');

  static const $core.List<WifiScanResults_Network_Source> values = <WifiScanResults_Network_Source> [
    UNKNOWN,
    SCAN_2_4GHZ,
    SCAN_5GHZ,
  ];

  static final $core.Map<$core.int, WifiScanResults_Network_Source> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiScanResults_Network_Source? valueOf($core.int value) => _byValue[value];

  const WifiScanResults_Network_Source._($core.int v, $core.String n) : super(v, n);
}

class WifiNetwork_Band extends $pb.ProtobufEnum {
  static const WifiNetwork_Band WIFI_UNKNOWN = WifiNetwork_Band._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_UNKNOWN');
  static const WifiNetwork_Band WIFI_2_4GHZ = WifiNetwork_Band._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_2_4GHZ');
  static const WifiNetwork_Band WIFI_5GHZ = WifiNetwork_Band._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_5GHZ');

  static const $core.List<WifiNetwork_Band> values = <WifiNetwork_Band> [
    WIFI_UNKNOWN,
    WIFI_2_4GHZ,
    WIFI_5GHZ,
  ];

  static final $core.Map<$core.int, WifiNetwork_Band> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiNetwork_Band? valueOf($core.int value) => _byValue[value];

  const WifiNetwork_Band._($core.int v, $core.String n) : super(v, n);
}

class WifiGetClientHistoryResponse_WifiLimitedReason extends $pb.ProtobufEnum {
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_UNKNOWN = WifiGetClientHistoryResponse_WifiLimitedReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIMIT_UNKNOWN');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_NONE = WifiGetClientHistoryResponse_WifiLimitedReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIMIT_NONE');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_UNCLASSIFIED = WifiGetClientHistoryResponse_WifiLimitedReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIMIT_UNCLASSIFIED');
  static const WifiGetClientHistoryResponse_WifiLimitedReason LIMIT_DROPPED_PACKETS = WifiGetClientHistoryResponse_WifiLimitedReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIMIT_DROPPED_PACKETS');

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

