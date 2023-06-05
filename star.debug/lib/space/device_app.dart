// ignore_for_file: non_constant_identifier_names

import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/app_data.dart';
import 'package:star_debug/utils/kv_consumer.dart';

import 'entity.dart';

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
    if (json_object==null || !json_object.containsKey(DEVICE_APP_KEY))
      return null;

    var res = DeviceApp();
    res.name = "App";
    res.reachable = true;
    res.cloud_access = false;

    dynamic device_app = json_object[DEVICE_APP_KEY];

    res.device_app_version = "${device_app[DEVICE_APP_VERSION_KEY] ?? M.tabs.app.unknown}";
    res.device_app_environment = "${device_app[DEVICE_APP_ENVIRONMENT_KEY] ?? M.tabs.app.unknown}";
    res.device_app_build = "${device_app[DEVICE_APP_BUILD_KEY] ?? ''}";
    res.device_app_hash = "${device_app[DEVICE_APP_HASH_KEY] ?? ''}";
    res.device_app_timestamp = (device_app[DEVICE_APP_TIMESTAMP_KEY] ?? 0).toInt();

    res.platform_os = 'unknown';

    if (json_object.containsKey(DEVICE_PLATFORM_KEY)) {
      res.platform_os = "${json_object[DEVICE_PLATFORM_KEY]?[DEVICE_PLATFORM_OS_KEY] ?? 'unknown'}";
    }

    res.plugins = [];

    if (res.platform_os != 'web' && res.platform_os != 'unknown') {
      res.platform_os_version = "${json_object[DEVICE_PLATFORM_KEY]?[DEVICE_PLATFORM_VERSION_KEY] ?? ''}";
      res.timestamp = (json_object[DEVICE_TIMESTAMP_KEY] ?? 0).toInt();
      res.uptime = (json_object[DEVICE_UPTIME_KEY] ?? 0).toInt();
      res.device = "${json_object[DEVICE_NAME_KEY] ?? ''}";
      res.device_model = "${json_object[DEVICE_MODEL_KEY] ?? ''}";
      res.device_id = "${json_object[DEVICE_ID_KEY] ?? ''}";
      res.wifi_ip = "${json_object[DEVICE_WIFI_KEY]?[DEVICE_WIFI_IP_ADDR_KEY] ?? '0.0.0.0'}";

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
  bool is_sx_device() {
    return false;
  }

  @override
  void get_readable_params(KVConsumer kv) {
    kv.kv(M.tabs.app.app_version, device_app_version);
    kv.kv(M.tabs.app.app_environment, device_app_environment);
    kv.kv(M.tabs.app.app_build, device_app_build);
    kv.kv(M.tabs.app.app_hash, device_app_hash);
    kv.kv(M.tabs.app.app_timestamp, DateTime.fromMillisecondsSinceEpoch(1000*device_app_timestamp));

    kv.spacer();

    kv.kv(M.tabs.app.platform_os, platform_os);

    if (platform_os != 'web' && platform_os != 'unknown') {
      kv.kv(M.tabs.app.platform_os_version, platform_os_version);
      kv.kv(M.tabs.app.device, device);
      kv.kv(M.tabs.app.device_model, device_model);
      kv.kv(M.tabs.app.device_id, device_id);

      kv.spacer();

      kv.kv(M.tabs.app.device_timestamp, DateTime.fromMillisecondsSinceEpoch(1000*timestamp));
      kv.kv(M.tabs.app.device_uptime, uptime);
      kv.kv(M.tabs.app.wifi_ip_address, wifi_ip);
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
  String get_name() => M.header.network;

  @override
  void get_data(KVConsumer kv) {
      kv.kv(M.tabs.app.local_connection_type, this.net_type);
      kv.kv(M.tabs.app.local_connection_speed, this.local_link_speed);
      kv.kv(M.tabs.app.is_vpn, this.isVpn);
      kv.kv(M.tabs.app.is_connected, this.isConnected);
      kv.kv(M.tabs.app.internet_available, this.isInternetAvailable);
      kv.kv(M.tabs.app.connected_via_starlink, is_starlink_conn);
      kv.kv(M.tabs.app.starlink_router_bypass_mode, is_bypass_mode);
      kv.kv(M.tabs.app.local_ip_address, ip_addr);
      kv.kv(M.tabs.app.gateway_ip_address, gateway_ip);
      kv.kv(M.tabs.app.public_ip_address, public_ip);

      if (net_type == 'wifi') {
        kv.kv(M.tabs.app.wifi_ssid, wifi_ssid);
        kv.kv(M.tabs.app.wifi_bssid, wifi_bssid);
        kv.kv(M.tabs.app.wifi_frequency, wifi_link_freq);
        kv.kv(M.tabs.app.wifi_signal_strength, wifi_signal_level);
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
  String get_name() => M.tabs.app.sensors;

  @override
  void get_data(KVConsumer kv) {
    for (var sensor in sensorsData.keys) {
      var sensorInfo = sensorsData[sensor];
      var sensorActive = sensorInfo['active'];
      var sensorAvailable = sensorInfo['available'];

      var sensorStr = '${M.tabs.app.available}: ${sensorAvailable}  ${M.tabs.app.active}: ${sensorActive}';

      kv.kv(sensor, sensorStr);
    }
  }
}
