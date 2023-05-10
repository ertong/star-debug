// Generated file. DO NOT edit manually
import 'package:star_debug/preloaded.dart';

var _ = R.text.t;

var dev_images = {
  'rev1_pre_production': 'resources/devices/dishy_v1.png',
  'rev1_production': 'resources/devices/dishy_v1.png',
  'rev1_proto3': 'resources/devices/dishy_v1.png',
  'rev2_proto1': 'resources/devices/dishy_v2.png',
  'rev2_proto2': 'resources/devices/dishy_v2.png',
  'rev2_proto3': 'resources/devices/dishy_v2.png',
  'rev2_proto4': 'resources/devices/dishy_v2.png',
  'rev3_proto0': 'resources/devices/dishy_v3.png',
  'rev3_proto1': 'resources/devices/dishy_v3.png',
  'rev3_proto2': 'resources/devices/dishy_v3.png',
  'hp1_proto0': 'resources/devices/dishy_hp.png',
  'hp1_proto1': 'resources/devices/dishy_hp.png',
  'hp_flat': 'resources/devices/dishy_hp_flat.png',
  'rev4_proto1': 'resources/devices/dishy_unknown.png',
  'rev_never_gonna_give_you_up': 'resources/devices/entity_astl.png',
  'unknown': 'resources/devices/dishy_unknown.png',
};

enum MobylityClass {
  STATIONARY(0, 'Stationary'),
  NOMADIC(1, 'Nomadic'),
  MOBILE(2, 'Mobile'),
  UNKNOWN(100, 'Unknown'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const MobylityClass(this.val, this.str);
  static MobylityClass byVal(int val) {
    var res = MobylityClass.values.where((e) => e.val==val);
    return res.length==1 ? res.single : MobylityClass.STATIONARY;
  }
}

enum ServiceClass {
  UNKNOWN(0, 'Unknown'),
  CONSUMER(1, 'Consumer'),
  BUSINESS(2, 'Business'),
  BUSINESS_PLUS(3, 'Business Plus'),
  COMMERCIAL_AVIATION(4, 'Commercial Aviation'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const ServiceClass(this.val, this.str);
  static ServiceClass byVal(int val) {
    var res = ServiceClass.values.where((e) => e.val==val);
    return res.length==1 ? res.single : ServiceClass.UNKNOWN;
  }
}

enum SoftwareUpdateState {
  UNKNOW(0, 'Unknown'),
  IDLE(1, 'Idle'),
  FETCHING(2, 'Fetching'),
  PRE_CHECK(3, 'Pre Check'),
  WRITING(4, 'Writing'),
  POST_CHECK(5, 'Post Check'),
  REBOOT_REQUIRED(6, 'Reboot required'),
  DISABLED(7, 'Disabled'),
  FAULTED(8, 'Faulted'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const SoftwareUpdateState(this.val, this.str);
  static SoftwareUpdateState byVal(int val) {
    var res = SoftwareUpdateState.values.where((e) => e.val==val);
    return res.length==1 ? res.single : SoftwareUpdateState.UNKNOW;
  }
}

enum ActuatorState {
  UNKNOWN(0, 'Unknown'),
  HAS_ACTUATORS(1, 'Has Actuators'),
  NO_ACTUATORS(2, 'No Actuators'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const ActuatorState(this.val, this.str);
  static ActuatorState byVal(int val) {
    var res = ActuatorState.values.where((e) => e.val==val);
    return res.length==1 ? res.single : ActuatorState.UNKNOWN;
  }
}

enum DisablementCode {
  UNKNOWN(0, 'Unknown, presumably active'),
  OKAY(1, 'Okay'),
  NO_ACTIVE_ACCOUNT(2, 'No active account'),
  TOO_FAR_FROM_SERVICE_ADDRESS(3, 'Too far from service address'),
  IN_OCEAN(4, 'In ocean'),
  INVALID_COUNTRY(5, 'Invalid country'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const DisablementCode(this.val, this.str);
  static DisablementCode byVal(int val) {
    var res = DisablementCode.values.where((e) => e.val==val);
    return res.length==1 ? res.single : DisablementCode.UNKNOWN;
  }
}

enum OutageCause {
  UNKNOWN(0, 'Unknown'),
  BOOTING(1, 'Booting'),
  STOWED(2, 'Stowed'),
  THERMAL_SHUTDOWN(3, 'Thermal shutdown'),
  NO_SCHEDULE(4, 'No schedule'),
  NO_SATS(5, 'No satellites'),
  OBSTRUCTED(6, 'Obstructed'),
  NO_DOWNLINK(7, 'No downlink'),
  NO_PINGS(8, 'No pings'),
  ACTUATOR_ACTIVITY(9, 'Activity of the actuator'),
  CABLE_TEST(10, 'Cable test is running'),
  SLEEPING(11, 'Sleeping'),
  MOVING_WHILE_NOT_ALLOWED(12, 'Moving while not allowed'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const OutageCause(this.val, this.str);
  static OutageCause byVal(int val) {
    var res = OutageCause.values.where((e) => e.val==val);
    return res.length==1 ? res.single : OutageCause.UNKNOWN;
  }
}

const DEVICE_ALERTS_INSTALL_PENDING_KEY = 'installPending';
const DEVICE_ALERTS_IS_HEATING_KEY = 'isHeating';
const DEVICE_ALERTS_KEY = 'alerts';
const DEVICE_ALERTS_MOTORS_STUCK_KEY = 'motorsStuck';
const DEVICE_ALERTS_MOVING_FAST_WHILE_NOT_AVIATION_KEY = 'movingFastWhileNotAviation';
const DEVICE_ALERTS_MOVING_WHILE_NOT_MOBILE_KEY = 'movingWhileNotMobile';
const DEVICE_ALERTS_POWER_SAVE_IDLE_KEY = 'isPowerSaveIdle';
const DEVICE_ALERTS_PS_THERMAL_THROTTLE_KEY = 'powerSupplyThermalThrottle';
const DEVICE_ALERTS_ROAMING_KEY = 'roaming';
const DEVICE_ALERTS_SLOW_ETHERNET_SPEED_KEY = 'slowEthernetSpeeds';
const DEVICE_ALERTS_THERMAL_SHUTDOWN_KEY = 'thermalShutdown';
const DEVICE_ALERTS_THERMAL_THROTTLE_KEY = 'thermalThrottle';
const DEVICE_ALERTS_UNEXPECTED_LOCATION_KEY = 'unexpectedLocation';
const DEVICE_BORESIGHT_AZIMUTH_DEG_KEY = 'boresightAzimuthDeg';
const DEVICE_BORESIGHT_ELEVATION_DEG_KEY = 'boresightElevationDeg';
const DEVICE_CLASS_OF_SERVICE_KEY = 'classOfService';
const DEVICE_DISABLEMENT_CODE_KEY = 'disablementCode';
const DEVICE_DISH_COHOUSED_KEY = 'dishCohoused';
const DEVICE_ETHER_SPEED_KEY = 'ethSpeedMbps';
const DEVICE_FEATURES_KEY = 'features';
const DEVICE_GPS_INHIBIT_KEY = 'inhibitGps';
const DEVICE_GPS_STATS_GPS_SATS_KEY = 'gpsSats';
const DEVICE_GPS_STATS_GPS_VALID_KEY = 'gpsValid';
const DEVICE_GPS_STATS_KEY = 'gpsStats';
const DEVICE_GPS_STATS_NO_SATS_AFTER_FFIX_KEY = 'noSatsAfterTtff';
const DEVICE_HAS_ACTUATORS_KEY = 'hasActuators';
const DEVICE_INFO_ANTI_ROLLBACK_KEY = 'antiRollbackVersion';
const DEVICE_INFO_BOOT_COUNT_KEY = 'bootcount';
const DEVICE_INFO_CC_KEY = 'countryCode';
const DEVICE_INFO_GEN_NUMBER = 'generationNumber';
const DEVICE_INFO_HW_VER_KEY = 'hardwareVersion';
const DEVICE_INFO_ID_KEY = 'id';
const DEVICE_INFO_IS_DEV_KEY = 'isDev';
const DEVICE_INFO_KEY = 'deviceInfo';
const DEVICE_INFO_MF_VER_KEY = 'manufacturedVersion';
const DEVICE_INFO_SW_PARTS_EQ_KEY = 'softwarePartitionsEqual';
const DEVICE_INFO_SW_VER_KEY = 'softwareVersion';
const DEVICE_INFO_UTC_OFF_KEY = 'utcOffsetS';
const DEVICE_IS_SNR_ABOVE_NOISE_FLOOR_KEY = 'isSnrAboveNoiseFloor';
const DEVICE_IS_SNR_PERSISTENTLY_LOW_KEY = 'isSnrPersistentlyLow';
const DEVICE_MOBILITY_CLASS_KEY = 'mobilityClass';
const DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_DURATION_SEC_KEY = 'avgProlongedObstructionDurationS';
const DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_INTERVAL_SEC_KEY = 'avgProlongedObstructionIntervalS';
const DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_VALID = 'avgProlongedObstructionValid';
const DEVICE_OBSTRUCTION_STATS_CURRENTLY_OBSTRUCTED_KEY = 'currentlyObstructed';
const DEVICE_OBSTRUCTION_STATS_FRACTION_OBSTRUCTED_KEY = 'fractionObstructed';
const DEVICE_OBSTRUCTION_STATS_KEY = 'obstructionStats';
const DEVICE_OBSTRUCTION_STATS_PATCHES_VALID_KEY = 'patchesValid';
const DEVICE_OBSTRUCTION_STATS_TIME_OBSTRUCTED_KEY = 'timeObstructed';
const DEVICE_OBSTRUCTION_STATS_VALID_SEC_KEY = 'validS';
const DEVICE_OBSTRUCTION_STATS_WEDGE_ABS_OBSTRUCTED_LIST_KEY = 'wedgeAbsFractionObstructedList';
const DEVICE_OBSTRUCTION_STATS_WEDGE_FRAC_OBSTRUCTED_LIST_KEY = 'wedgeFractionObstructedList';
const DEVICE_OUTAGE_CAUSE_KEY = 'cause';
const DEVICE_OUTAGE_DID_SWITCH_KEY = 'didSwitch';
const DEVICE_OUTAGE_DURATION_NS_KEY = 'durationNs';
const DEVICE_OUTAGE_KEY = 'outage';
const DEVICE_OUTAGE_START_TIMESTAMP_NS_KEY = 'startTimestampNs';
const DEVICE_READY_STATES_AAP_KEY = 'aap';
const DEVICE_READY_STATES_CADY_KEY = 'cady';
const DEVICE_READY_STATES_KEY = 'readyStates';
const DEVICE_READY_STATES_L1L2_KEY = 'l1l2';
const DEVICE_READY_STATES_RF_KEY = 'rf';
const DEVICE_READY_STATES_SCP_KEY = 'scp';
const DEVICE_READY_STATES_XPHY_KEY = 'xphy';
const DEVICE_SOFTWARE_UPDATE_ST_KEY = 'softwareUpdateState';
const DEVICE_STATE_KEY = 'deviceState';
const DEVICE_STOW_REQUESTED_KEY = 'stowRequested';
const DEVICE_TIMESTAMP_KEY = 'timestamp';
const DEVICE_UPTIME_KEY = 'uptimeS';
const DISH_CLOUD_ACCESS_KEY = 'cloud';
const DISH_KEY = 'dish';
const DISH_REACHABLE_KEY = 'reachable';
const NET_DOWNLINK_TPUT_BPS_KEY = 'downlinkThroughputBps';
const NET_POP_PING_DROP_RATE_KEY = 'popPingDropRate';
const NET_POP_PING_LATENCY_MS_KEY = 'popPingLatencyMs';
const NET_SECONDS_TO_FIRST_NON_EMPTY_SLOT_KEY = 'secondsToFirstNonemptySlot';
const NET_UPLINK_TPUT_BPS_KEY = 'uplinkThroughputBps';

