// Generated file. DO NOT edit manually
import 'package:star_debug/preloaded.dart';

var _ = R.text.t;

var dev_images = {
  'v1': 'resources/devices/router_v1.png',
  'v2': 'resources/devices/router_v2.png',
};

enum BootReason {
  BOOT_REASON_UNKNOWN(0, 'Unknown'),
  FORGOTTEN(1, 'Forgotten'),
  POWER_CYCLE(2, 'Power cycle'),
  COMMAND(3, 'Command'),
  SOFTWARE_UPDATE(4, 'Software update'),
  CONFIG_UPDATE(5, 'Configuration update'),
  ;
  final int val;
  final String str;
  String get strt => _(str);
  const BootReason(this.val, this.str);
  static BootReason byVal(int val) {
    var res = BootReason.values.where((e) => e.val==val);
    return res.length==1 ? res.single : BootReason.BOOT_REASON_UNKNOWN;
  }
}

const DEVICE_ALERTS_KEY = 'alerts';
const DEVICE_FEATURES_KEY = 'features';
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
const DEVICE_STATE_KEY = 'deviceState';
const DEVICE_TIMESTAMP_KEY = 'timestamp';
const DEVICE_UPTIME_KEY = 'uptimeS';
const ROUTER_BOOT_COUNT_BY_REASON_MAP_KEY = 'countByReasonMap';
const ROUTER_BOOT_KEY = 'boot';
const ROUTER_BOOT_LAST_COUNT = 'lastCount';
const ROUTER_BOOT_LAST_REASON = 'lastReason';
const ROUTER_CAPTIVE_PORTAL_ENABLED_KEY = 'captivePortalEnabled';
const ROUTER_CLOUD_ACCESS_KEY = 'cloud';
const ROUTER_DISH_PING_DROP_RATE_KEY = 'dishPingDropRate';
const ROUTER_DISH_PING_LATENCY_MS_KEY = 'dishPingLatencyMs';
const ROUTER_IS_AVIATION_CONFORMED_KEY = 'isAviationConformed';
const ROUTER_IS_AVIATION_KEY = 'isAviation';
const ROUTER_KEY = 'router';
const ROUTER_PING_DROP_RATE_KEY = 'pingDropRate';
const ROUTER_PING_LATENCY_MS_KEY = 'pingLatencyMs';
const ROUTER_POP_PING_DROP_RATE_KEY = 'popPingDropRate';
const ROUTER_POP_PING_LATENCY_MS_KEY = 'popPingLatencyMs';
const ROUTER_REACHABLE_KEY = 'reachable';
const ROUTER_WAN_DHPS_SERVERS_LIST_KEY = 'dhcpServersList';
const ROUTER_WAN_IPV4_ADDRESS_KEY = 'ipv4WanAddress';
const ROUTER_WAN_IPV6_ADDRESS_LIST_KEY = 'ipv6WanAddressesList';

