import 'dart:convert';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/router_data.dart';

import 'entity.dart';

var _ = R.text.t;

class Router extends Entity {
  String device_id = "";
  String sw_version = "";
  String hw_version = "";
  String mf_version = "";
  String gen_number = "";
  String country_code = "";
  int utc_off_hours = 0;
  bool sw_parts_eq = false;
  bool is_developer = false;
  int boot_count = 0;
  int anti_rollback_version = 0;
  int timestamp = 0;
  int uptime = 0;
  bool is_aviation = false;
  bool captiva_portal_enabled = false;


  static Router? of(dynamic json_object) {
    if (!json_object.containsKey(DEVICE_INFO_KEY))
      return null;

    var res = Router();

    res.name = "Router";
    res.reachable = json_object[ROUTER_REACHABLE_KEY] ?? false;
    res.cloud_access = json_object[ROUTER_CLOUD_ACCESS_KEY] ?? false;

    if (!res.reachable)
      return null;

    Map<String, dynamic> device_info = json_object[DEVICE_INFO_KEY];
    Map<String, dynamic> device_state = json_object[DEVICE_STATE_KEY];

    res.device_id = device_info[DEVICE_INFO_ID_KEY] ?? _('Unknown');
    res.sw_version = device_info[DEVICE_INFO_SW_VER_KEY] ?? _('Unknown');
    res.hw_version = device_info[DEVICE_INFO_HW_VER_KEY] ?? _('Unknown');
    res.mf_version = device_info[DEVICE_INFO_MF_VER_KEY] ?? _('Unknown');
    res.gen_number = "${device_info[DEVICE_INFO_GEN_NUMBER] ?? _('Unknown')}";
    res.country_code = device_info[DEVICE_INFO_CC_KEY] ?? _('Unknown');
    res.utc_off_hours = (device_info[DEVICE_INFO_UTC_OFF_KEY] ?? 0).toInt();
    res.sw_parts_eq = device_info[DEVICE_INFO_SW_PARTS_EQ_KEY] ?? false;
    res.is_developer = device_info[DEVICE_INFO_IS_DEV_KEY] ?? false;
    res.boot_count = (device_info[DEVICE_INFO_BOOT_COUNT_KEY] ?? 0).toInt();
    res.anti_rollback_version = (device_info[DEVICE_INFO_ANTI_ROLLBACK_KEY] ?? 0).toInt();

    res.timestamp = (json_object[DEVICE_TIMESTAMP_KEY] ?? 0).toInt();
    res.uptime = (device_state[DEVICE_UPTIME_KEY] ?? 0).toInt();

    res.is_aviation = json_object[ROUTER_IS_AVIATION_KEY] ?? false;
    res.captiva_portal_enabled = json_object[ROUTER_CAPTIVE_PORTAL_ENABLED_KEY] ?? false;

    res.plugins = [];

    var alerts = ModuleAlerts(json_object);
    res.alertsCount = alerts.data.length;
    res.plugins.add(alerts);
    res.plugins.add(RouterNetwork.of(json_object));
    res.plugins.add(BootInfo.of(json_object));

    return res;
  }

  String get_device_image_file() {
    if (!dev_images.containsKey(hw_version)) {
      return dev_images['unknown']!;
    }
    return dev_images[hw_version]!;
  }

  bool is_sx_device() {
    return true;
  }

  String get_module_readable_name() {
    return _('Router');
  }

  void get_readable_params(KVConsumer kv) {
    kv.kv(_('Hardware revision'), hw_version);
    kv.kv(_('Router ID'), device_id);
    kv.kv(_('Software version'), sw_version);
    kv.kv(_('Manufactured version'), mf_version);
    kv.kv(_('Development hardware'), yes_or_no(is_developer));
    kv.kv(_('Anti-Rollback version'), anti_rollback_version);
    kv.kv(_('Software parts equal'), yes_or_no(sw_parts_eq));

    kv.spacer();

    kv.kv(_('Country code'), country_code);
    kv.kv(_('Device date/time'), DateTime.fromMillisecondsSinceEpoch(1000*timestamp));
    kv.kv(_('Device timezone'), 'GMT${utc_off_hours ~/ 3600}');
    kv.kv(_('Uptime'), '${uptime.toString()} ${_('seconds')}');
    kv.kv(_('Boot count'), boot_count);

    kv.spacer();

    kv.kv(_('Aviation'), yes_or_no(is_aviation));
    kv.kv(_('Captive portal enabled'), yes_or_no(captiva_portal_enabled));
  }

}

class RouterNetwork extends EntityModule {
  String wanIpv4 = "";
  int pingDropRate = 0;
  int dishPingDropRate = 0;
  int dishPingLatencyMs = 0;
  int popPingDropRate = 0;
  int popPingLatencyMs = 0;

  static RouterNetwork? of(Map<String, dynamic> jsonObject) {
    var res = RouterNetwork();
    res.wanIpv4 = jsonObject[ROUTER_WAN_IPV4_ADDRESS_KEY] ?? '0.0.0.0';
    res.pingDropRate = (jsonObject[ROUTER_PING_DROP_RATE_KEY] ?? 0).toInt();
    res.dishPingDropRate = (jsonObject[ROUTER_DISH_PING_DROP_RATE_KEY] ?? 0).toInt();
    res.dishPingLatencyMs = (jsonObject[ROUTER_DISH_PING_LATENCY_MS_KEY] ?? 0).toInt();
    res.popPingDropRate = (jsonObject[ROUTER_POP_PING_DROP_RATE_KEY] ?? 0).toInt();
    res.popPingLatencyMs = (jsonObject[ROUTER_POP_PING_LATENCY_MS_KEY] ?? 0).toInt();

    return res;
  }

  @override
  String get_name() => _('Network');

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('WAN IPv4'), wanIpv4);
      kv.kv(_('Ping drop rate'), pingDropRate);
      kv.kv(_('Starlink ping drop rate'), dishPingDropRate);
      kv.kv(_('Starlink ping latency, ms'), dishPingLatencyMs);
      kv.kv(_('PoP ping drop rate'), popPingDropRate);
      kv.kv(_('PoP ping latency, ms'), popPingLatencyMs);
  }
}

class BootInfo extends EntityModule {
  BootReason lastReason = BootReason.BOOT_REASON_UNKNOWN;
  int lastCount = 0;
  Map<int, int> countByReasonMap = {};

  static BootInfo? of(Map<String, dynamic> jsonObject) {
    Map<String, dynamic>? bootInfo = jsonObject[DEVICE_INFO_KEY]?[ROUTER_BOOT_KEY];

    if (bootInfo==null)
      return null;

    var res = BootInfo();

    res.lastReason = BootReason.byVal(bootInfo[ROUTER_BOOT_LAST_REASON] ?? 0);
    res.lastCount = (bootInfo[ROUTER_BOOT_LAST_COUNT] ?? 0).toInt();
    for (var v in bootInfo[ROUTER_BOOT_COUNT_BY_REASON_MAP_KEY] ?? [])
      res.countByReasonMap[v[0]] = v[1];

    return res;
  }

  @override
  String get_name() => _('Boot info');

  @override
  void get_data(KVConsumer kv) {
    kv.kv(_('Last reboot reason'), _(this.lastReason.str));
    kv.kv(_('Last boot count'), this.lastCount.toString());

    for (var e in this.countByReasonMap.entries) {
      BootReason bootReasonCode = BootReason.byVal(e.key);
      int bootReasonCount = e.value;
      kv.kv(
        '${_('Reason')}: ${_(bootReasonCode.str)}',
        '${_('count by this reason')}: $bootReasonCount'
      );
    }
  }
}
