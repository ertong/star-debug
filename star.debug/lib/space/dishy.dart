import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/log_utils.dart';

import 'dishy_data.dart';
import 'entity.dart';

var _ = R.text.t;

const _TAG = "Dishy";
/// Starlink Dishy info parser and formatter
class Dishy extends Entity {
  String deviceId = "";
  String swVersion = "";
  String hwVersion = "";
  String mfVersion = "";
  String countryCode = "";
  var utcOffHours = 0;
  bool swPartsEq = false;
  bool isDeveloper = false;
  bool dishyCohoused = false;
  int bootCount = 0;
  int antiRollbackVersion = 0;
  int timestamp = 0;
  int uptime = 0;
  ActuatorState hasActuators = ActuatorState.UNKNOWN;
  bool stowRequested = false;
  MobylityClass mobilityClass = MobylityClass.UNKNOWN;
  ServiceClass classOfService = ServiceClass.UNKNOWN;
  DisablementCode disablementCode = DisablementCode.UNKNOWN;
  SoftwareUpdateState softwareUpdState = SoftwareUpdateState.UNKNOW;

  static Dishy? of(dynamic json_object) {
    if (!json_object.containsKey(DEVICE_INFO_KEY))
      return null;

    var res = Dishy();

    res.name = "Dish";
    res.reachable = json_object[DISH_REACHABLE_KEY] ?? false;
    res.cloud_access = json_object[DISH_CLOUD_ACCESS_KEY] ?? false;

    if (!res.reachable)
      return null;

    LogUtils.d(_TAG, "Loading Dish");

    Map<String, dynamic> deviceInfo = json_object[DEVICE_INFO_KEY];
    Map<String, dynamic> deviceState = json_object[DEVICE_STATE_KEY];

    res.deviceId = "${deviceInfo[DEVICE_INFO_ID_KEY] ?? _('Unknown')}";
    res.swVersion = "${deviceInfo[DEVICE_INFO_SW_VER_KEY] ?? _('Unknown')}";
    res.hwVersion = "${deviceInfo[DEVICE_INFO_HW_VER_KEY] ?? _('Unknown')}";
    res.mfVersion = "${deviceInfo[DEVICE_INFO_MF_VER_KEY] ?? _('Unknown')}";
    res.countryCode = "${deviceInfo[DEVICE_INFO_CC_KEY] ?? _('Unknown')}";
    res.utcOffHours = deviceInfo[DEVICE_INFO_UTC_OFF_KEY] ?? 0;
    res.swPartsEq = deviceInfo[DEVICE_INFO_SW_PARTS_EQ_KEY] ?? false;
    res.isDeveloper = deviceInfo[DEVICE_INFO_IS_DEV_KEY] ?? false;
    res.bootCount = (deviceInfo[DEVICE_INFO_BOOT_COUNT_KEY] ?? 0).toInt();
    res.antiRollbackVersion = (deviceInfo[DEVICE_INFO_ANTI_ROLLBACK_KEY] ?? 0).toInt();
    res.dishyCohoused = deviceInfo[DEVICE_DISH_COHOUSED_KEY] ?? false;

    res.timestamp = (json_object[DEVICE_TIMESTAMP_KEY] ?? 0).toInt();
    res.uptime = (deviceState[DEVICE_UPTIME_KEY] ?? 0).toInt();

    res.hasActuators = ActuatorState.byVal(json_object[DEVICE_HAS_ACTUATORS_KEY] ?? 0);
    res.stowRequested = json_object[DEVICE_STOW_REQUESTED_KEY] ?? false;
    res.mobilityClass = MobylityClass.byVal(json_object[DEVICE_MOBILITY_CLASS_KEY] ?? 0);
    res.classOfService = ServiceClass.byVal(json_object[DEVICE_CLASS_OF_SERVICE_KEY] ?? 0);
    res.disablementCode = DisablementCode.byVal(json_object[DEVICE_DISABLEMENT_CODE_KEY] ?? 0);

    res.softwareUpdState = SoftwareUpdateState.byVal(json_object[DEVICE_SOFTWARE_UPDATE_ST_KEY] ?? 0);

    var alerts = ModuleAlerts(json_object);
    res.alertsCount = alerts.data.length;
    res.plugins.add(alerts);
    res.plugins.add(DishyNetwork.of(json_object));
    res.plugins.add(DishyGPS.of(json_object));
    res.plugins.add(DishyAntenna.of(json_object));
    res.plugins.add(Features.of(json_object));
    res.plugins.add(DishyReadyStates.of(json_object));
    res.plugins.add(DishyOutage.of(json_object));
    res.plugins.add(DishyObstructions.of(json_object));

    return res;
  }

  /// This is SpaceX device
  @override
  bool is_sx_device() {
    return true;
  }

  @override
  String get_module_readable_name() => _('Dish');

  /// Get device image
  @override
  String? get_device_image_file() {
    // Special handle for the HP without actuators
    if (hwVersion == 'hp1_proto0' || hwVersion == 'hp1_proto1') {
      if (hasActuators == ActuatorState.UNKNOWN ||
          hasActuators == ActuatorState.NO_ACTUATORS) {
        return dev_images['hp_flat']!;
      }
    }

    return dev_images[hwVersion ?? 'unknown']!;
  }

  void get_readable_params(KVConsumer kv) {
    kv.kv(_('Hardware revision'), hwVersion);
    kv.kv(_('Software version'), swVersion);
    kv.kv(_('Software update state'), _(softwareUpdState.str));
    kv.kv(_('User terminal ID'), deviceId);
    kv.kv(_('Development hardware'), yes_or_no(isDeveloper));
    kv.kv(_('Starlink cohoused'), yes_or_no(dishyCohoused));
    kv.kv(_('Actuators'), _(hasActuators.str));
    kv.kv(_('Stow requested'), yes_or_no(stowRequested));

    if (mfVersion != '') {
      kv.kv(_('Manufactured version'), mfVersion);
    }

    kv.kv(_('Boot count'), bootCount);
    kv.kv(_('Software parts equal'), yes_or_no(swPartsEq));

    if (antiRollbackVersion != 0) {
      kv.kv(_('Anti-Rollback version'), "$antiRollbackVersion");
    }

    kv.spacer();

    kv.kv(_('Country code'), countryCode);
    kv.kv(_('Device date/time'), DateTime.fromMillisecondsSinceEpoch(timestamp * 1000));
    kv.kv(_('Device timezone'), 'GMT${(utcOffHours / 60 / 60).floor()}');
    kv.kv(_('Uptime'), '$uptime ${_('seconds')}');

    kv.spacer();

    kv.kv(_('Class of service'), _(classOfService.str));
    kv.kv(_('Mobility class'), _(mobilityClass.str));
    kv.kv(_('Service state'), _(disablementCode.str));
  }

}

/// Additional data plugins


/// Network info
class DishyNetwork extends EntityModule {
  int etherSpeed = 0;
  double downlinkTputBps = 0;
  double uplinkTputBps = 0;
  double popPingLatency = 0;
  int popPingDropRate = 0;
  int secondsToFirstNonEmptySlot = 0;

  static DishyNetwork of(Map<String, dynamic> jsonObject) {
    var res = DishyNetwork();
    res.etherSpeed = jsonObject[DEVICE_ETHER_SPEED_KEY] ?? 100;
    res.downlinkTputBps = (jsonObject[NET_DOWNLINK_TPUT_BPS_KEY] ?? 0.0).toDouble();
    res.uplinkTputBps = (jsonObject[NET_UPLINK_TPUT_BPS_KEY] ?? 0.0).toDouble();
    res.popPingLatency = (jsonObject[NET_POP_PING_LATENCY_MS_KEY] ?? 0.0).toDouble();
    res.popPingDropRate = (jsonObject[NET_POP_PING_DROP_RATE_KEY] ?? 0).toInt();
    res.secondsToFirstNonEmptySlot =
        (jsonObject[NET_SECONDS_TO_FIRST_NON_EMPTY_SLOT_KEY] ?? 0).toInt();

    return res;
  }

  @override
  String get_name() {
    return _('Network');
  }

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('Ethernet speed'), '${etherSpeed} Mbps ${etherSpeed < 1000 ? "(slow, check your cable or device)" : "(nominal)"}');
      kv.kv(_('Downlink Throughput, Kbps'), (downlinkTputBps / 1024).toStringAsFixed(3));
      kv.kv(_('Uplink Throughput, Kbps'), (uplinkTputBps / 1024).toStringAsFixed(3));
      kv.kv(_('PoP ping latency, ms'), popPingLatency.toString());
      kv.kv(_('PoP ping drop rate'), popPingDropRate.toString());
      kv.kv(_('Seconds to first non-empty slot'), secondsToFirstNonEmptySlot.toString());
  }
}

class DishyGPS extends EntityModule {
  bool gpsValid = false;
  int gpsSats = 0;
  bool gpsNoSatsAfterFix = false;
  bool gpsInhibit = false;

  static DishyGPS? of(Map<String, dynamic> jsonObject) {
    if (!jsonObject.containsKey(DEVICE_GPS_STATS_KEY))
      return null;

    DishyGPS res = DishyGPS();

    final gpsStats = jsonObject[DEVICE_GPS_STATS_KEY];

    res.gpsValid = gpsStats[DEVICE_GPS_STATS_GPS_VALID_KEY] ?? false;
    res.gpsSats = (gpsStats[DEVICE_GPS_STATS_GPS_SATS_KEY] ?? 0).toInt();
    res.gpsNoSatsAfterFix = gpsStats[DEVICE_GPS_STATS_NO_SATS_AFTER_FFIX_KEY] ?? false;
    res.gpsInhibit = gpsStats[DEVICE_GPS_INHIBIT_KEY] ?? false;

    return res;
  }

  @override
  String get_name() => _('GPS');

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('GPS valid'), yes_or_no(gpsValid));
      kv.kv(_('GPS satellites'), gpsSats);
      kv.kv(_('No GPS satellites after first fix'), yes_or_no(gpsNoSatsAfterFix));
      kv.kv(_('Don\'t trust Dishy\'s GPS'), yes_or_no(gpsInhibit));
  }

}

class DishyAntenna extends EntityModule {
  bool snrAboveNoiseFloor = false;
  bool snrPersistentlyLow = false;
  int boresightAzDeg = 0;
  int boresightElDeg = 0;

  static DishyAntenna? of(Map<String, dynamic> jsonObject) {
    DishyAntenna res = DishyAntenna();
    res.snrAboveNoiseFloor = jsonObject[DEVICE_IS_SNR_ABOVE_NOISE_FLOOR_KEY] ?? false;
    res.snrPersistentlyLow = jsonObject[DEVICE_IS_SNR_PERSISTENTLY_LOW_KEY] ?? false;
    res.boresightAzDeg = (jsonObject[DEVICE_BORESIGHT_AZIMUTH_DEG_KEY] ?? 0).toInt();
    res.boresightElDeg = (jsonObject[DEVICE_BORESIGHT_ELEVATION_DEG_KEY] ?? 0).toInt();

    return res;
  }

  @override
  String get_name() => _('Antenna');

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('Signal level'), snrAboveNoiseFloor ? 'Good' : 'Bad');
      kv.kv(_('SNR persistently low'), yes_or_no(snrPersistentlyLow));
      kv.kv(_('Panel boresight Azimuth angle, deg'), boresightAzDeg);
      kv.kv(_('Panel boresight Elevation angle, deg'), boresightElDeg);
  }

}

/* Ready states */
class DishyReadyStates extends EntityModule {
  bool cady = false;
  bool scp = false;
  bool l1l2 = false;
  bool xphy = false;
  bool aap = false;
  bool rf = false;


  static DishyReadyStates? of(Map<String, dynamic> jsonObject) {
    Map<String, dynamic>? readyStates = jsonObject[DEVICE_READY_STATES_KEY];
    if (readyStates==null)
      return null;

    var res = DishyReadyStates();

    res.cady = readyStates[DEVICE_READY_STATES_CADY_KEY] ?? false;
    res.scp = readyStates[DEVICE_READY_STATES_SCP_KEY] ?? false;
    res.l1l2 = readyStates[DEVICE_READY_STATES_L1L2_KEY] ?? false;
    res.xphy = readyStates[DEVICE_READY_STATES_XPHY_KEY] ?? false;
    res.aap = readyStates[DEVICE_READY_STATES_AAP_KEY] ?? false;
    res.rf = readyStates[DEVICE_READY_STATES_RF_KEY] ?? false;

    return res;
  }

  @override
  String get_name() {
    return _('Ready states');
  }

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('Clock generator'), yes_or_no(cady));
      kv.kv(_('RFFE bus interface'), yes_or_no(scp));
      kv.kv(_('Modem L1L2'), yes_or_no(l1l2));
      kv.kv(_('Xilinx XPHY interface'), yes_or_no(xphy));
      kv.kv(_('Digital beamformers'), yes_or_no(aap));
      kv.kv(_('RF front end'), yes_or_no(rf));
  }
}


/// Outages info
class DishyOutage extends EntityModule {
  OutageCause cause = OutageCause.UNKNOWN;
  int startTimestampNs = 0;
  int outageDurationNs = 0;
  bool didSwitch = false;

  static DishyOutage? of (Map<String, dynamic> jsonObject) {
    if (!jsonObject.containsKey(DEVICE_OUTAGE_KEY))
      return null;

    var res = DishyOutage();

    final outageData = jsonObject[DEVICE_OUTAGE_KEY];

    res.cause = OutageCause.byVal(outageData[DEVICE_OUTAGE_CAUSE_KEY] ?? 0);
    res.startTimestampNs = (outageData[DEVICE_OUTAGE_START_TIMESTAMP_NS_KEY] ?? 0).toInt();
    res.outageDurationNs = (outageData[DEVICE_OUTAGE_DURATION_NS_KEY] ?? 0).toInt();
    res.didSwitch = outageData[DEVICE_OUTAGE_DID_SWITCH_KEY] ?? false;

    return res;
  }

  @override
  String get_name() => _('Outage');

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('Cause'), _(cause.str));
      kv.kv(_('Start timestamp, ns'), startTimestampNs);
      kv.kv(_('Duration, ns'), outageDurationNs);
      kv.kv(_('Did switch'), yes_or_no(didSwitch));
  }
}


/* Obstructions info */
class DishyObstructions extends EntityModule {
  bool currently_obstructed = false;
  double fraction_obstructed = 0;
  int time_obstructed = 0;
  int valid_sec = 0;
  int patches_valid = 0;
  List<double> frac_obstr_list = [];
  List<bool> abs_obstr_list = [];
  int avg_pr_dur_sec = 0;
  int avg_pr_int_sec = 0;
  bool avg_pr_valid = false;
  dynamic image;

  static DishyObstructions? of (Map<String, dynamic> json_object){
    if (!json_object.containsKey(DEVICE_OBSTRUCTION_STATS_KEY))
      return null;

    var res = DishyObstructions();

    Map<String, dynamic> obstr_data = json_object[DEVICE_OBSTRUCTION_STATS_KEY];

    res.currently_obstructed = obstr_data[DEVICE_OBSTRUCTION_STATS_CURRENTLY_OBSTRUCTED_KEY] ?? false;
    res.fraction_obstructed = (obstr_data[DEVICE_OBSTRUCTION_STATS_FRACTION_OBSTRUCTED_KEY] ?? 0.0).toDouble();
    res.time_obstructed = (obstr_data[DEVICE_OBSTRUCTION_STATS_TIME_OBSTRUCTED_KEY] ?? 0).toInt();
    res.valid_sec = (obstr_data[DEVICE_OBSTRUCTION_STATS_VALID_SEC_KEY] ?? 0).toInt();
    res.patches_valid = (obstr_data[DEVICE_OBSTRUCTION_STATS_PATCHES_VALID_KEY] ?? 0).toInt();
    res.frac_obstr_list = [for (var f in obstr_data[DEVICE_OBSTRUCTION_STATS_WEDGE_FRAC_OBSTRUCTED_LIST_KEY] ?? []) f.toDouble() ];
    res.abs_obstr_list = obstr_data[DEVICE_OBSTRUCTION_STATS_WEDGE_ABS_OBSTRUCTED_LIST_KEY]?.cast<bool>() ?? [];
    res.avg_pr_dur_sec = (obstr_data[DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_DURATION_SEC_KEY] ?? 0).toInt();
    res.avg_pr_int_sec = (obstr_data[DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_INTERVAL_SEC_KEY] ?? 0).toInt();
    res.avg_pr_valid = obstr_data[DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_VALID] ?? false;

    res.image = null;

    if (res.frac_obstr_list.length > 0) {
      // image = generateImgFromList(frac_obstr_list);
    }

    return res;
  }

  String get_name() {
    return _('Obstructions');
  }

  void get_data(KVConsumer kv) {
      kv.kv(_('Currently obstructed'), yes_or_no(currently_obstructed));
      kv.kv(_('Fraction obstructed'), fraction_obstructed);
      kv.kv(_('Time obstructed'), time_obstructed);
      kv.kv(_('Time valid, sec'), valid_sec);
      kv.kv(_('Patches valid'), patches_valid);
      kv.kv(_('Average prolonged obstruction duration, sec'), avg_pr_dur_sec);
      kv.kv(_('Average prolonged obstruction interval, sec'), avg_pr_int_sec);
      kv.kv(_('Average prolonged obstruction valid'), yes_or_no(avg_pr_valid));
      // kv.kv('image_blob', image);
  }
}
