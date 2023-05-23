// ignore_for_file: non_constant_identifier_names

import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/app_data.dart';

import 'entity.dart';

var _ = R.text.t;

class DeviceApp extends Entity {
  String device_app_version = "";
  String device_app_environment = "";
  String device_app_build = "";
  String device_app_hash = "";
  int device_app_timestamp = 0;
  String platform_os = "";
  String platform_os_version = "";
  int timestamp = 0;
  int uptime = 0;
  String device = "";
  String device_model = "";
  String device_id = "";
  String wifi_ip = "";

  DeviceApp();

  static DeviceApp? of(dynamic json_object) {
    if (!json_object.containsKey(DEVICE_APP_KEY))
      return null;

    var res = DeviceApp();
    res.name = "App";
    res.reachable = true;
    res.cloud_access = false;

    dynamic device_app = json_object[DEVICE_APP_KEY];

    res.device_app_version = "${device_app[DEVICE_APP_VERSION_KEY] ?? _('Unknown')}";
    res.device_app_environment = "${device_app[DEVICE_APP_ENVIRONMENT_KEY] ?? _('Unknown')}";
    res.device_app_build = "${device_app[DEVICE_APP_BUILD_KEY] ?? ''}";
    res.device_app_hash = "${device_app[DEVICE_APP_HASH_KEY] ?? ''}";
    res.device_app_timestamp = (device_app[DEVICE_APP_TIMESTAMP_KEY] ?? 0).toInt();

    res.platform_os = 'unknown';

    if (json_object.containsKey(DEVICE_PLATFORM_KEY)) {
      res.platform_os = "${json_object[DEVICE_PLATFORM_KEY][DEVICE_PLATFORM_OS_KEY] ?? 'unknown'}";
    }

    res.plugins = [];

    if (res.platform_os != 'web' && res.platform_os != 'unknown') {
      res.platform_os_version = "${json_object[DEVICE_PLATFORM_KEY][DEVICE_PLATFORM_VERSION_KEY] ?? ''}";
      res.timestamp = (json_object[DEVICE_TIMESTAMP_KEY] ?? 0).toInt();
      res.uptime = (json_object[DEVICE_UPTIME_KEY] ?? 0).toInt();
      res.device = "${json_object[DEVICE_NAME_KEY] ?? ''}";
      res.device_model = "${json_object[DEVICE_MODEL_KEY] ?? ''}";
      res.device_id = "${json_object[DEVICE_ID_KEY] ?? ''}";
      res.wifi_ip = "${json_object[DEVICE_WIFI_KEY][DEVICE_WIFI_IP_ADDR_KEY] ?? '0.0.0.0'}";

      res.plugins.add(DeviceNetwork.of(json_object));
      res.plugins.add(DeviceSensors.of(json_object));
    }

    return res;
  }

  @override
  String? get_device_image_file() {
    return dev_images[platform_os] ?? dev_images['unknown'];
  }

  @override
  String get_module_readable_name() {
    return _('Local device');
  }

  @override
  bool is_sx_device() {
    return false;
  }

  @override
  void get_readable_params(KVConsumer kv) {
    kv.kv(_('App version'), device_app_version);
    kv.kv(_('App environment'), device_app_environment);
    kv.kv(_('App build'), device_app_build);
    kv.kv(_('App hash'), device_app_hash);
    kv.kv(_('App timestamp'), DateTime.fromMillisecondsSinceEpoch(1000*device_app_timestamp));

    kv.spacer();

    kv.kv(_('Platform OS'), platform_os);

    if (platform_os != 'web' && platform_os != 'unknown') {
      kv.kv(_('Platform OS version'), platform_os_version);
      kv.kv(_('Device'), device);
      kv.kv(_('Device model'), device_model);
      kv.kv(_('Device id'), device_id);

      kv.spacer();

      kv.kv(_('Device timestamp'), DateTime.fromMillisecondsSinceEpoch(1000*timestamp));
      kv.kv(_('Device uptime'), uptime);
      kv.kv(_('WiFi IP address'), wifi_ip);
    }
  }

}


class DeviceNetwork extends EntityModule {
  bool isVpn = false;
  String gateway_ip = "";
  String public_ip = "";
  bool is_starlink_conn = false;
  String net_type = "";
  bool is_bypass_mode = false;
  bool isConnected = false;
  bool isInternetAvailable = false;
  String ip_addr = "";

  String local_link_speed = "";
  int wifi_link_freq = 0;
  String wifi_ssid = "";
  String wifi_bssid = "";
  int wifi_signal_level = 0;

  static DeviceNetwork? of(Map<String, dynamic> jsonObject) {
    if (!jsonObject.containsKey(DEVICE_NETWORK_KEY))
      return null;

    var res = DeviceNetwork();

    Map<String, dynamic> network = jsonObject[DEVICE_NETWORK_KEY];
    Map<String, dynamic> networkInfo = network[DEVICE_NETWORK_NETINFO_KEY];
    Map<String, dynamic> networkInfoDetails = networkInfo[DEVICE_NETWORK_NETINFO_DETAILS_KEY];

    res.isVpn = network[DEVICE_NETWORK_VPN_KEY] ?? false;
    res.gateway_ip = "${network[DEVICE_NETWORK_GATEWAY_IP_ADDR_KEY] ?? '0.0.0.0'}";
    res.public_ip = "${network[DEVICE_NETWORK_PUBLIC_IP_KEY] ?? '0.0.0.0'}";
    res.is_starlink_conn = network[DEVICE_NETWORK_IS_STARLINK_KEY] ?? false;

    res.net_type = "${networkInfo[DEVICE_NETWORK_NETINFO_TYPE_KEY] ?? 'wifi'}";
    res.is_bypass_mode = !(networkInfo[DEVICE_NETWORK_NETINFO_WIFI_ENABLED_KEY] ?? true);
    res.isConnected = networkInfo[DEVICE_NETWORK_NETINFO_IS_CONNECTED_KEY] ?? false;
    res.isInternetAvailable = networkInfo[DEVICE_NETWORK_IS_INTERNET_REACHABLE] ?? false;

    res.ip_addr = "${networkInfoDetails[DEVICE_NETWORK_NETINFO_DETAILS_IP_ADDR_KEY] ?? '0.0.0.0'}";
    res.local_link_speed =  "${networkInfoDetails[DEVICE_NETWORK_NETINFO_DETAILS_LINK_SPEED_KEY] ?? 0}  Mbps";

    res.wifi_link_freq = (networkInfoDetails[DEVICE_NETWORK_NETINFO_DETAILS_FREQ_KEY] ?? 0).toInt();
    res.wifi_ssid = "${networkInfoDetails[DEVICE_NETWORK_NETINFO_DETAILS_SSID_KEY] ?? ''}";
    res.wifi_bssid = "${networkInfoDetails[DEVICE_NETWORK_NETINFO_DETAILS_BSSID_KEY] ?? ''}";
    res.wifi_signal_level = (networkInfoDetails[DEVICE_NETWORK_NETINFO_DTAILS_SIGNAL_LEVEL_KEY] ?? 150).toInt();

    return res;
  }

  @override
  String get_name() => _('Network');

  @override
  void get_data(KVConsumer kv) {
      kv.kv(_('Local connection type'), this.net_type);
      kv.kv(_('Local connection speed'), this.local_link_speed);
      kv.kv(_('Is VPN'), yes_or_no(this.isVpn));
      kv.kv(_('Is connected'), yes_or_no(this.isConnected));
      kv.kv(_('Internet available'), yes_or_no(this.isInternetAvailable));
      kv.kv(_('Connected via Starlink'), yes_or_no(is_starlink_conn));
      kv.kv(_('Starlink router bypass mode'), yes_or_no(is_bypass_mode));
      kv.kv(_('Local IP address'), ip_addr);
      kv.kv(_('Gateway IP address'), gateway_ip);
      kv.kv(_('Public IP address'), public_ip);

      if (net_type == 'wifi') {
        kv.kv(_('WiFi SSID'), wifi_ssid);
        kv.kv(_('WiFi BSSID'), wifi_bssid);
        kv.kv(_('WiFi frequency'), wifi_link_freq);
        kv.kv(_('WiFi signal strength'), wifi_signal_level);
      }
  }
}


class DeviceSensors extends EntityModule {
  Map<String, dynamic> sensorsData = {};

  static DeviceSensors? of(Map<String, dynamic> jsonObject) {
    if (!jsonObject.containsKey(DEVICE_SENSORS_KEY))
      return null;

    var res = DeviceSensors();

    res.sensorsData = jsonObject[DEVICE_SENSORS_KEY];

    return res;
  }

  @override
  String get_name() => _('Sensors');

  @override
  void get_data(KVConsumer kv) {
    for (var sensor in sensorsData.keys) {
      var sensorInfo = sensorsData[sensor];
      var sensorActive = sensorInfo['active'];
      var sensorAvailable = sensorInfo['available'];

      var sensorStr = '${_('Available')}: ${yes_or_no(sensorAvailable)}  ${_('Active')}: ${yes_or_no(sensorActive)}';

      kv.kv(sensor, sensorStr);
    }
  }
}
