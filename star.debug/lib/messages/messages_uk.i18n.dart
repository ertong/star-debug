// GENERATED FILE, do not edit!
// ignore_for_file: unused_element, unused_field
import 'package:i18n/i18n.dart' as i18n;
import 'messages.i18n.dart';

String get _languageCode => 'uk';
String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i18n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i18n.ordinal(
      count,
      _languageCode,
      zero: zero,
      one: one,
      two: two,
      few: few,
      many: many,
      other: other,
    );
String _cardinal(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) =>
    i18n.cardinal(
      count,
      _languageCode,
      zero: zero,
      one: one,
      two: two,
      few: few,
      many: many,
      other: other,
    );

class MessagesUk extends Messages {
  const MessagesUk();
  String get locale => "uk";
  String get languageCode => "uk";
  GeneralMessagesUk get general => GeneralMessagesUk(this);
  LiveMessagesUk get live => LiveMessagesUk(this);
  GrpcMessagesUk get grpc => GrpcMessagesUk(this);
}

class GeneralMessagesUk extends GeneralMessages {
  final MessagesUk _parent;
  const GeneralMessagesUk(this._parent) : super(_parent);
  String get lang => """Українська""";
  String get app_name => """Star Debug""";
  String get close => """Закрити""";
  String get cancel => """Скасувати""";
  String get next => """Далі""";
  String get back => """Назад""";
  String get save => """Зберегти""";
  String get no_changes => """Немає змін""";
  String get try_again => """Повторити""";
  String get loading => """Завантаження ...""";
  String get loading_error => """Помилка завантаження""";
  String get error_occured => """Виникла помилка""";
  String get refresh => """Оновити""";
  String get copied_to_clipboard => """Скопійовано в буфер обміну""";
  String get confirm => """Підтвердити""";
  String get reject => """Відхилити""";
  String get no_items => """Пустий список""";
  String get got_it => """Зрозуміло""";
  String get ok => """OK""";
  String get select_lang => """Оберіть мову""";
  String get change_language => """Змінити мову""";
  String get dish => """Тарілка""";
  String get router => """Роутер""";
  String get device_app => """Додаток""";
  String get open_json_file => """Відкрити JSON файл""";
  String get open_clipboard => """Відкрити JSON з буфера обміну""";
  String get debug_data_viewer => """Перегляд Debug Data""";
  String get no_data_found => """Дані не знайдено""";
  String get dark_mode => """Dark mode""";
}

class LiveMessagesUk extends LiveMessages {
  final MessagesUk _parent;
  const LiveMessagesUk(this._parent) : super(_parent);
  String get starlink_live => """Starlink Live""";
}

class GrpcMessagesUk extends GrpcMessages {
  final MessagesUk _parent;
  const GrpcMessagesUk(this._parent) : super(_parent);
  DeviceInfoGrpcMessagesUk get DeviceInfo => DeviceInfoGrpcMessagesUk(this);
  BootInfoGrpcMessagesUk get BootInfo => BootInfoGrpcMessagesUk(this);
  DishAlertsGrpcMessagesUk get DishAlerts => DishAlertsGrpcMessagesUk(this);
  DishOutageGrpcMessagesUk get DishOutage => DishOutageGrpcMessagesUk(this);
  DishGpsStatsGrpcMessagesUk get DishGpsStats =>
      DishGpsStatsGrpcMessagesUk(this);
  DishReadyStatesGrpcMessagesUk get DishReadyStates =>
      DishReadyStatesGrpcMessagesUk(this);
  DishConfigGrpcMessagesUk get DishConfig => DishConfigGrpcMessagesUk(this);
  DishObstructionStatsGrpcMessagesUk get DishObstructionStats =>
      DishObstructionStatsGrpcMessagesUk(this);
  DishGetStatusGrpcMessagesUk get DishGetStatus =>
      DishGetStatusGrpcMessagesUk(this);
  ClientNameGrpcMessagesUk get ClientName => ClientNameGrpcMessagesUk(this);
  NetworkGrpcMessagesUk get Network => NetworkGrpcMessagesUk(this);
  BasicServiceSetGrpcMessagesUk get BasicServiceSet =>
      BasicServiceSetGrpcMessagesUk(this);
  WifiConfigGrpcMessagesUk get WifiConfig => WifiConfigGrpcMessagesUk(this);
  PingMetricsGrpcMessagesUk get PingMetrics => PingMetricsGrpcMessagesUk(this);
  RxTxStatsGrpcMessagesUk get RxTxStats => RxTxStatsGrpcMessagesUk(this);
  WifiClientGrpcMessagesUk get WifiClient => WifiClientGrpcMessagesUk(this);
  WifiAlertsGrpcMessagesUk get WifiAlerts => WifiAlertsGrpcMessagesUk(this);
  WifiGetStatusGrpcMessagesUk get WifiGetStatus =>
      WifiGetStatusGrpcMessagesUk(this);
}

class DeviceInfoGrpcMessagesUk extends DeviceInfoGrpcMessages {
  final GrpcMessagesUk _parent;
  const DeviceInfoGrpcMessagesUk(this._parent) : super(_parent);
  String get _ => """Device Info""";
  String get id => """User terminal ID""";
  String get hardware_version => """Hardware revision""";
  String get software_version => """Software version""";
  String get country_code => """Country code""";
  String get utc_offset_s => """utc_offset_s""";
  String get software_partitions_equal => """Software partitions equal""";
  String get is_dev => """Development hardware""";
  String get bootcount => """Boot count""";
  String get anti_rollback_version => """Anti-Rollback version""";
  String get is_hitl => """is_hitl""";
  String get manufactured_version => """Manufactured version""";
  String get generation_number => """generation_number""";
  String get dish_cohoused => """Starlink cohoused""";
}

class BootInfoGrpcMessagesUk extends BootInfoGrpcMessages {
  final GrpcMessagesUk _parent;
  const BootInfoGrpcMessagesUk(this._parent) : super(_parent);
  String get _ => """Boot Info""";
  String get count_by_reason => """count_by_reason""";
  String get last_reason => """last_reason""";
  String get last_count => """last_count""";
  String get count_by_reason_delta => """count_by_reason_delta""";
}

class DishAlertsGrpcMessagesUk extends DishAlertsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishAlertsGrpcMessagesUk(this._parent) : super(_parent);
  String get motors_stuck => """motors_stuck""";
  String get thermal_shutdown => """thermal_shutdown""";
  String get thermal_throttle => """thermal_throttle""";
  String get unexpected_location => """unexpected_location""";
  String get mast_not_near_vertical => """mast_not_near_vertical""";
  String get slow_ethernet_speeds => """slow_ethernet_speeds""";
  String get roaming => """roaming""";
  String get install_pending => """install_pending""";
  String get is_heating => """is_heating""";
  String get power_supply_thermal_throttle =>
      """power_supply_thermal_throttle""";
  String get is_power_save_idle => """is_power_save_idle""";
  String get moving_while_not_mobile => """moving_while_not_mobile""";
  String get moving_fast_while_not_aviation =>
      """moving_fast_while_not_aviation""";
}

class DishOutageGrpcMessagesUk extends DishOutageGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishOutageGrpcMessagesUk(this._parent) : super(_parent);
  String get cause => """Cause""";
  String get start_timestamp_ns => """Start timestamp, ns""";
  String get duration_ns => """Duration, ns""";
  String get did_switch => """Did switch""";
}

class DishGpsStatsGrpcMessagesUk extends DishGpsStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGpsStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get gps_valid => """GPS valid""";
  String get gps_sats => """GPS satellites""";
  String get no_sats_after_ttff => """No GPS satellites after first fix""";
  String get inhibit_gps => """Don't trust Dishy's GPS""";
}

class DishReadyStatesGrpcMessagesUk extends DishReadyStatesGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishReadyStatesGrpcMessagesUk(this._parent) : super(_parent);
  String get cady => """Clock generator""";
  String get scp => """RFFE bus interface""";
  String get l1l2 => """Modem L1L2""";
  String get xphy => """Xilinx XPHY interface""";
  String get aap => """Digital beamformers""";
  String get rf => """RF front end""";
}

class DishConfigGrpcMessagesUk extends DishConfigGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishConfigGrpcMessagesUk(this._parent) : super(_parent);
  String get snow_melt_mode => """snow_melt_mode""";
  String get location_request_mode => """location_request_mode""";
  String get level_dish_mode => """level_dish_mode""";
  String get power_save_start_minutes => """power_save_start_minutes""";
  String get power_save_duration_minutes => """power_save_duration_minutes""";
  String get power_save_mode => """power_save_mode""";
}

class DishObstructionStatsGrpcMessagesUk
    extends DishObstructionStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishObstructionStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get fraction_obstructed => """Fraction obstructed""";
  String get valid_s => """Time valid, sec""";
  String get currently_obstructed => """Currently obstructed""";
  String get avg_prolonged_obstruction_duration_s =>
      """Average prolonged obstruction duration, sec""";
  String get avg_prolonged_obstruction_interval_s =>
      """Average prolonged obstruction interval, sec""";
  String get avg_prolonged_obstruction_valid =>
      """Average prolonged obstruction valid""";
  String get time_obstructed => """Time obstructed""";
  String get patches_valid => """Patches valid""";
}

class DishGetStatusGrpcMessagesUk extends DishGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGetStatusGrpcMessagesUk(this._parent) : super(_parent);
  String get uptime_s => """Uptime""";
  String get seconds_to_first_nonempty_slot =>
      """Seconds to first non-empty slot""";
  String get pop_ping_drop_rate => """PoP ping drop rate""";
  String get fraction_obstructed => """fraction_obstructed""";
  String get valid_s => """valid_s""";
  String get currently_obstructed => """currently_obstructed""";
  String get avg_prolonged_obstruction_duration_s =>
      """avg_prolonged_obstruction_duration_s""";
  String get avg_prolonged_obstruction_interval_s =>
      """avg_prolonged_obstruction_interval_s""";
  String get avg_prolonged_obstruction_valid =>
      """avg_prolonged_obstruction_valid""";
  String get time_obstructed => """time_obstructed""";
  String get patches_valid => """patches_valid""";
  String get downlink_throughput_bps => """Downlink Throughput, B/s""";
  String get uplink_throughput_bps => """Uplink Throughput, B/s""";
  String get pop_ping_latency_ms => """PoP ping latency, ms""";
  String get stow_requested => """Stow requested""";
  String get boresight_azimuth_deg => """Panel boresight Azimuth angle, deg""";
  String get boresight_elevation_deg =>
      """Panel boresight Elevation agngle, deg""";
  String get eth_speed_mbps => """Ethernet speed""";
  String get mobility_class => """Mobility class""";
  String get is_snr_above_noise_floor => """SNR above noise floor""";
  String get class_of_service => """Class of service""";
  String get software_update_state => """Software update state""";
  String get is_snr_persistently_low => """SNR persistently low""";
  String get has_actuators => """Actuators""";
  String get disablement_code => """Service state""";
}

class ClientNameGrpcMessagesUk extends ClientNameGrpcMessages {
  final GrpcMessagesUk _parent;
  const ClientNameGrpcMessagesUk(this._parent) : super(_parent);
  String get mac_address => """mac_address""";
  String get given_name => """given_name""";
}

class NetworkGrpcMessagesUk extends NetworkGrpcMessages {
  final GrpcMessagesUk _parent;
  const NetworkGrpcMessagesUk(this._parent) : super(_parent);
  String get ipv4 => """ipv4""";
  String get client_isolation => """client_isolation""";
  String get guest => """guest""";
  String get landing => """landing""";
  String get domain => """domain""";
  String get dhcpv4_start => """dhcpv4_start""";
}

class BasicServiceSetGrpcMessagesUk extends BasicServiceSetGrpcMessages {
  final GrpcMessagesUk _parent;
  const BasicServiceSetGrpcMessagesUk(this._parent) : super(_parent);
  String get bssid => """bssid""";
  String get ssid => """ssid""";
  String get band => """band""";
  String get disable => """disable""";
  String get hidden => """hidden""";
  String get iface_name => """iface_name""";
  String get auth => """auth""";
}

class WifiConfigGrpcMessagesUk extends WifiConfigGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiConfigGrpcMessagesUk(this._parent) : super(_parent);
  String get country_code => """Country code""";
  String get setup_complete => """Setup complete""";
  String get version => """Version""";
  String get channel_2ghz => """channel_2ghz""";
  String get channel_5ghz => """channel_5ghz""";
  String get is_repeater => """is_repeater""";
  String get boot_count => """boot_count""";
  String get string => """string""";
  String get bypass_mode => """bypass_mode""";
  String get apply_dynamic_keys => """apply_dynamic_keys""";
  String get dfs_enabled => """dfs_enabled""";
  String get incarnation => """incarnation""";
  String get wireless_mode_2ghz => """wireless_mode_2ghz""";
  String get wireless_mode_5ghz => """wireless_mode_5ghz""";
  String get ht_bandwidth_2ghz => """ht_bandwidth_2ghz""";
  String get ht_bandwidth_5ghz => """ht_bandwidth_5ghz""";
  String get vht_bandwidth => """vht_bandwidth""";
  String get is_aviation => """is_aviation""";
  String get secure_dns => """secure_dns""";
  String get ap_mode => """ap_mode""";
  String get disable_mesh_onboarding => """disable_mesh_onboarding""";
  String get pin_country_code => """pin_country_code""";
  String get custom_power_table => """custom_power_table""";
  String get use_public_services => """use_public_services""";
  String get disable_automated_speedtests => """disable_automated_speedtests""";
  String get channel_5ghz_high => """channel_5ghz_high""";
  String get wireless_mode_5ghz_high => """wireless_mode_5ghz_high""";
  String get ht_bandwidth_5ghz_high => """ht_bandwidth_5ghz_high""";
  String get vht_bandwidth_5ghz_high => """vht_bandwidth_5ghz_high""";
  String get enable_umbilical_vlan => """enable_umbilical_vlan""";
  String get outdoor_mode => """outdoor_mode""";
  String get disable_2ghz => """disable_2ghz""";
  String get disable_5ghz => """disable_5ghz""";
  String get disable_5ghz_high => """disable_5ghz_high""";
  String get disable_x_mesh_backhaul => """disable_x_mesh_backhaul""";
  String get tx_power_level_2ghz => """tx_power_level_2ghz""";
  String get tx_power_level_5ghz => """tx_power_level_5ghz""";
  String get tx_power_level_5ghz_high => """tx_power_level_5ghz_high""";
}

class PingMetricsGrpcMessagesUk extends PingMetricsGrpcMessages {
  final GrpcMessagesUk _parent;
  const PingMetricsGrpcMessagesUk(this._parent) : super(_parent);
  String get in_unhappy_hour_2s => """in_unhappy_hour_2s""";
  String get in_unhappy_hour_5s => """in_unhappy_hour_5s""";
  String get drop_rate_5m => """drop_rate_5m""";
  String get latency_5m => """latency_5m""";
}

class RxTxStatsGrpcMessagesUk extends RxTxStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const RxTxStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get bytes => """bytes""";
  String get count_errors => """count_errors""";
  String get nss => """nss""";
  String get mcs => """mcs""";
  String get bandwidth => """bandwidth""";
  String get guard_ns => """guard_ns""";
  String get rate_mbps => """rate_mbps""";
  String get airtime_fraction_last_1s => """airtime_fraction_last_1s""";
  String get sampled_packets => """sampled_packets""";
  String get sampled_packets_retried => """sampled_packets_retried""";
  String get sampled_packets_dropped => """sampled_packets_dropped""";
  String get phy_mode => """phy_mode""";
  String get success_bytes => """success_bytes""";
}

class WifiClientGrpcMessagesUk extends WifiClientGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiClientGrpcMessagesUk(this._parent) : super(_parent);
  String get name => """name""";
  String get mac_address => """mac_address""";
  String get ip_address => """ip_address""";
  String get signal_strength => """signal_strength""";
  String get rx_stats => """rx_stats""";
  String get tx_stats => """tx_stats""";
  String get associated_time_s => """associated_time_s""";
  String get mode_str => """mode_str""";
  String get iface => """iface""";
  String get snr => """snr""";
  String get psmode => """psmode""";
  String get channel_width => """channel_width""";
  String get upstream_mac_address => """upstream_mac_address""";
  String get role => """role""";
  String get device_id => """device_id""";
  String get swq_checks => """swq_checks""";
  String get swq_checks_non_empty => """swq_checks_non_empty""";
  String get mib_steer_state => """mib_steer_state""";
  String get mib_steer_method => """mib_steer_method""";
  String get btm_requests => """btm_requests""";
  String get btm_requests_success => """btm_requests_success""";
  String get domain => """domain""";
  String get dot11v_support => """dot11v_support""";
  String get iface_name => """iface_name""";
  String get steer_req_success_last_1h => """steer_req_success_last_1h""";
  String get steer_req_fail_last_1h => """steer_req_fail_last_1h""";
  String get steer_req_fail_and_dissoc_last_1h =>
      """steer_req_fail_and_dissoc_last_1h""";
  String get steer_state => """steer_state""";
  String get given_name => """given_name""";
  String get hops_from_controller => """hops_from_controller""";
  String get est_tx_rate_mbps_from_controller =>
      """est_tx_rate_mbps_from_controller""";
  String get est_rx_rate_mbps_from_controller =>
      """est_rx_rate_mbps_from_controller""";
  String get hardware_version => """hardware_version""";
  String get software_version => """software_version""";
  String get api_version => """api_version""";
  String get ping_metrics => """ping_metrics""";
  String get ipv6_addresses => """ipv6_addresses""";
}

class WifiAlertsGrpcMessagesUk extends WifiAlertsGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiAlertsGrpcMessagesUk(this._parent) : super(_parent);
  String get thermal_throttle => """thermal_throttle""";
  String get install_pending => """install_pending""";
  String get freshly_fused => """freshly_fused""";
  String get lan_eth_slow_link_10 => """lan_eth_slow_link_10""";
  String get lan_eth_slow_link_100 => """lan_eth_slow_link_100""";
  String get wan_eth_poor_connection => """wan_eth_poor_connection""";
  String get mesh_topology_changing_often => """mesh_topology_changing_often""";
  String get mesh_unreliable_backhaul => """mesh_unreliable_backhaul""";
}

class WifiGetStatusGrpcMessagesUk extends WifiGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiGetStatusGrpcMessagesUk(this._parent) : super(_parent);
  String get captive_portal_enabled => """Captive portal enabled""";
  String get uptime_s => """Uptime""";
  String get ipv4_wan_address => """WAN IPv4""";
  String get ping_drop_rate => """Ping drop rate""";
  String get ping_latency_ms => """ping_latency_ms""";
  String get is_aviation => """Aviation""";
  String get dish_ping_drop_rate => """Dish ping drop rate""";
  String get dish_ping_latency_ms => """Dish ping latency, ms""";
  String get pop_ping_drop_rate => """PoP ping drop rate""";
  String get pop_ping_latency_ms => """PoP ping latency, ms""";
  String get is_aviation_conformed => """Aviation conformed""";
  String get ipv6_wan_addresses => """WAN IPv6""";
  String get dish_ping_drop_rate_5m => """Dish ping drop rate, 5m""";
  String get has_client_index => """has_client_index""";
  String get client_index => """client_index""";
}

Map<String, String> get messagesUkMap => {
      """general.lang""": """Українська""",
      """general.app_name""": """Star Debug""",
      """general.close""": """Закрити""",
      """general.cancel""": """Скасувати""",
      """general.next""": """Далі""",
      """general.back""": """Назад""",
      """general.save""": """Зберегти""",
      """general.no_changes""": """Немає змін""",
      """general.try_again""": """Повторити""",
      """general.loading""": """Завантаження ...""",
      """general.loading_error""": """Помилка завантаження""",
      """general.error_occured""": """Виникла помилка""",
      """general.refresh""": """Оновити""",
      """general.copied_to_clipboard""": """Скопійовано в буфер обміну""",
      """general.confirm""": """Підтвердити""",
      """general.reject""": """Відхилити""",
      """general.no_items""": """Пустий список""",
      """general.got_it""": """Зрозуміло""",
      """general.ok""": """OK""",
      """general.select_lang""": """Оберіть мову""",
      """general.change_language""": """Змінити мову""",
      """general.dish""": """Тарілка""",
      """general.router""": """Роутер""",
      """general.device_app""": """Додаток""",
      """general.open_json_file""": """Відкрити JSON файл""",
      """general.open_clipboard""": """Відкрити JSON з буфера обміну""",
      """general.debug_data_viewer""": """Перегляд Debug Data""",
      """general.no_data_found""": """Дані не знайдено""",
      """general.dark_mode""": """Dark mode""",
      """live.starlink_live""": """Starlink Live""",
      """grpc.DeviceInfo._""": """Device Info""",
      """grpc.DeviceInfo.id""": """User terminal ID""",
      """grpc.DeviceInfo.hardware_version""": """Hardware revision""",
      """grpc.DeviceInfo.software_version""": """Software version""",
      """grpc.DeviceInfo.country_code""": """Country code""",
      """grpc.DeviceInfo.utc_offset_s""": """utc_offset_s""",
      """grpc.DeviceInfo.software_partitions_equal""":
          """Software partitions equal""",
      """grpc.DeviceInfo.is_dev""": """Development hardware""",
      """grpc.DeviceInfo.bootcount""": """Boot count""",
      """grpc.DeviceInfo.anti_rollback_version""": """Anti-Rollback version""",
      """grpc.DeviceInfo.is_hitl""": """is_hitl""",
      """grpc.DeviceInfo.manufactured_version""": """Manufactured version""",
      """grpc.DeviceInfo.generation_number""": """generation_number""",
      """grpc.DeviceInfo.dish_cohoused""": """Starlink cohoused""",
      """grpc.BootInfo._""": """Boot Info""",
      """grpc.BootInfo.count_by_reason""": """count_by_reason""",
      """grpc.BootInfo.last_reason""": """last_reason""",
      """grpc.BootInfo.last_count""": """last_count""",
      """grpc.BootInfo.count_by_reason_delta""": """count_by_reason_delta""",
      """grpc.DishAlerts.motors_stuck""": """motors_stuck""",
      """grpc.DishAlerts.thermal_shutdown""": """thermal_shutdown""",
      """grpc.DishAlerts.thermal_throttle""": """thermal_throttle""",
      """grpc.DishAlerts.unexpected_location""": """unexpected_location""",
      """grpc.DishAlerts.mast_not_near_vertical""":
          """mast_not_near_vertical""",
      """grpc.DishAlerts.slow_ethernet_speeds""": """slow_ethernet_speeds""",
      """grpc.DishAlerts.roaming""": """roaming""",
      """grpc.DishAlerts.install_pending""": """install_pending""",
      """grpc.DishAlerts.is_heating""": """is_heating""",
      """grpc.DishAlerts.power_supply_thermal_throttle""":
          """power_supply_thermal_throttle""",
      """grpc.DishAlerts.is_power_save_idle""": """is_power_save_idle""",
      """grpc.DishAlerts.moving_while_not_mobile""":
          """moving_while_not_mobile""",
      """grpc.DishAlerts.moving_fast_while_not_aviation""":
          """moving_fast_while_not_aviation""",
      """grpc.DishOutage.cause""": """Cause""",
      """grpc.DishOutage.start_timestamp_ns""": """Start timestamp, ns""",
      """grpc.DishOutage.duration_ns""": """Duration, ns""",
      """grpc.DishOutage.did_switch""": """Did switch""",
      """grpc.DishGpsStats.gps_valid""": """GPS valid""",
      """grpc.DishGpsStats.gps_sats""": """GPS satellites""",
      """grpc.DishGpsStats.no_sats_after_ttff""":
          """No GPS satellites after first fix""",
      """grpc.DishGpsStats.inhibit_gps""": """Don't trust Dishy's GPS""",
      """grpc.DishReadyStates.cady""": """Clock generator""",
      """grpc.DishReadyStates.scp""": """RFFE bus interface""",
      """grpc.DishReadyStates.l1l2""": """Modem L1L2""",
      """grpc.DishReadyStates.xphy""": """Xilinx XPHY interface""",
      """grpc.DishReadyStates.aap""": """Digital beamformers""",
      """grpc.DishReadyStates.rf""": """RF front end""",
      """grpc.DishConfig.snow_melt_mode""": """snow_melt_mode""",
      """grpc.DishConfig.location_request_mode""": """location_request_mode""",
      """grpc.DishConfig.level_dish_mode""": """level_dish_mode""",
      """grpc.DishConfig.power_save_start_minutes""":
          """power_save_start_minutes""",
      """grpc.DishConfig.power_save_duration_minutes""":
          """power_save_duration_minutes""",
      """grpc.DishConfig.power_save_mode""": """power_save_mode""",
      """grpc.DishObstructionStats.fraction_obstructed""":
          """Fraction obstructed""",
      """grpc.DishObstructionStats.valid_s""": """Time valid, sec""",
      """grpc.DishObstructionStats.currently_obstructed""":
          """Currently obstructed""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s""":
          """Average prolonged obstruction duration, sec""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s""":
          """Average prolonged obstruction interval, sec""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_valid""":
          """Average prolonged obstruction valid""",
      """grpc.DishObstructionStats.time_obstructed""": """Time obstructed""",
      """grpc.DishObstructionStats.patches_valid""": """Patches valid""",
      """grpc.DishGetStatus.uptime_s""": """Uptime""",
      """grpc.DishGetStatus.seconds_to_first_nonempty_slot""":
          """Seconds to first non-empty slot""",
      """grpc.DishGetStatus.pop_ping_drop_rate""": """PoP ping drop rate""",
      """grpc.DishGetStatus.fraction_obstructed""": """fraction_obstructed""",
      """grpc.DishGetStatus.valid_s""": """valid_s""",
      """grpc.DishGetStatus.currently_obstructed""": """currently_obstructed""",
      """grpc.DishGetStatus.avg_prolonged_obstruction_duration_s""":
          """avg_prolonged_obstruction_duration_s""",
      """grpc.DishGetStatus.avg_prolonged_obstruction_interval_s""":
          """avg_prolonged_obstruction_interval_s""",
      """grpc.DishGetStatus.avg_prolonged_obstruction_valid""":
          """avg_prolonged_obstruction_valid""",
      """grpc.DishGetStatus.time_obstructed""": """time_obstructed""",
      """grpc.DishGetStatus.patches_valid""": """patches_valid""",
      """grpc.DishGetStatus.downlink_throughput_bps""":
          """Downlink Throughput, B/s""",
      """grpc.DishGetStatus.uplink_throughput_bps""":
          """Uplink Throughput, B/s""",
      """grpc.DishGetStatus.pop_ping_latency_ms""": """PoP ping latency, ms""",
      """grpc.DishGetStatus.stow_requested""": """Stow requested""",
      """grpc.DishGetStatus.boresight_azimuth_deg""":
          """Panel boresight Azimuth angle, deg""",
      """grpc.DishGetStatus.boresight_elevation_deg""":
          """Panel boresight Elevation agngle, deg""",
      """grpc.DishGetStatus.eth_speed_mbps""": """Ethernet speed""",
      """grpc.DishGetStatus.mobility_class""": """Mobility class""",
      """grpc.DishGetStatus.is_snr_above_noise_floor""":
          """SNR above noise floor""",
      """grpc.DishGetStatus.class_of_service""": """Class of service""",
      """grpc.DishGetStatus.software_update_state""":
          """Software update state""",
      """grpc.DishGetStatus.is_snr_persistently_low""":
          """SNR persistently low""",
      """grpc.DishGetStatus.has_actuators""": """Actuators""",
      """grpc.DishGetStatus.disablement_code""": """Service state""",
      """grpc.ClientName.mac_address""": """mac_address""",
      """grpc.ClientName.given_name""": """given_name""",
      """grpc.Network.ipv4""": """ipv4""",
      """grpc.Network.client_isolation""": """client_isolation""",
      """grpc.Network.guest""": """guest""",
      """grpc.Network.landing""": """landing""",
      """grpc.Network.domain""": """domain""",
      """grpc.Network.dhcpv4_start""": """dhcpv4_start""",
      """grpc.BasicServiceSet.bssid""": """bssid""",
      """grpc.BasicServiceSet.ssid""": """ssid""",
      """grpc.BasicServiceSet.band""": """band""",
      """grpc.BasicServiceSet.disable""": """disable""",
      """grpc.BasicServiceSet.hidden""": """hidden""",
      """grpc.BasicServiceSet.iface_name""": """iface_name""",
      """grpc.BasicServiceSet.auth""": """auth""",
      """grpc.WifiConfig.country_code""": """Country code""",
      """grpc.WifiConfig.setup_complete""": """Setup complete""",
      """grpc.WifiConfig.version""": """Version""",
      """grpc.WifiConfig.channel_2ghz""": """channel_2ghz""",
      """grpc.WifiConfig.channel_5ghz""": """channel_5ghz""",
      """grpc.WifiConfig.is_repeater""": """is_repeater""",
      """grpc.WifiConfig.boot_count""": """boot_count""",
      """grpc.WifiConfig.string""": """string""",
      """grpc.WifiConfig.bypass_mode""": """bypass_mode""",
      """grpc.WifiConfig.apply_dynamic_keys""": """apply_dynamic_keys""",
      """grpc.WifiConfig.dfs_enabled""": """dfs_enabled""",
      """grpc.WifiConfig.incarnation""": """incarnation""",
      """grpc.WifiConfig.wireless_mode_2ghz""": """wireless_mode_2ghz""",
      """grpc.WifiConfig.wireless_mode_5ghz""": """wireless_mode_5ghz""",
      """grpc.WifiConfig.ht_bandwidth_2ghz""": """ht_bandwidth_2ghz""",
      """grpc.WifiConfig.ht_bandwidth_5ghz""": """ht_bandwidth_5ghz""",
      """grpc.WifiConfig.vht_bandwidth""": """vht_bandwidth""",
      """grpc.WifiConfig.is_aviation""": """is_aviation""",
      """grpc.WifiConfig.secure_dns""": """secure_dns""",
      """grpc.WifiConfig.ap_mode""": """ap_mode""",
      """grpc.WifiConfig.disable_mesh_onboarding""":
          """disable_mesh_onboarding""",
      """grpc.WifiConfig.pin_country_code""": """pin_country_code""",
      """grpc.WifiConfig.custom_power_table""": """custom_power_table""",
      """grpc.WifiConfig.use_public_services""": """use_public_services""",
      """grpc.WifiConfig.disable_automated_speedtests""":
          """disable_automated_speedtests""",
      """grpc.WifiConfig.channel_5ghz_high""": """channel_5ghz_high""",
      """grpc.WifiConfig.wireless_mode_5ghz_high""":
          """wireless_mode_5ghz_high""",
      """grpc.WifiConfig.ht_bandwidth_5ghz_high""":
          """ht_bandwidth_5ghz_high""",
      """grpc.WifiConfig.vht_bandwidth_5ghz_high""":
          """vht_bandwidth_5ghz_high""",
      """grpc.WifiConfig.enable_umbilical_vlan""": """enable_umbilical_vlan""",
      """grpc.WifiConfig.outdoor_mode""": """outdoor_mode""",
      """grpc.WifiConfig.disable_2ghz""": """disable_2ghz""",
      """grpc.WifiConfig.disable_5ghz""": """disable_5ghz""",
      """grpc.WifiConfig.disable_5ghz_high""": """disable_5ghz_high""",
      """grpc.WifiConfig.disable_x_mesh_backhaul""":
          """disable_x_mesh_backhaul""",
      """grpc.WifiConfig.tx_power_level_2ghz""": """tx_power_level_2ghz""",
      """grpc.WifiConfig.tx_power_level_5ghz""": """tx_power_level_5ghz""",
      """grpc.WifiConfig.tx_power_level_5ghz_high""":
          """tx_power_level_5ghz_high""",
      """grpc.PingMetrics.in_unhappy_hour_2s""": """in_unhappy_hour_2s""",
      """grpc.PingMetrics.in_unhappy_hour_5s""": """in_unhappy_hour_5s""",
      """grpc.PingMetrics.drop_rate_5m""": """drop_rate_5m""",
      """grpc.PingMetrics.latency_5m""": """latency_5m""",
      """grpc.RxTxStats.bytes""": """bytes""",
      """grpc.RxTxStats.count_errors""": """count_errors""",
      """grpc.RxTxStats.nss""": """nss""",
      """grpc.RxTxStats.mcs""": """mcs""",
      """grpc.RxTxStats.bandwidth""": """bandwidth""",
      """grpc.RxTxStats.guard_ns""": """guard_ns""",
      """grpc.RxTxStats.rate_mbps""": """rate_mbps""",
      """grpc.RxTxStats.airtime_fraction_last_1s""":
          """airtime_fraction_last_1s""",
      """grpc.RxTxStats.sampled_packets""": """sampled_packets""",
      """grpc.RxTxStats.sampled_packets_retried""":
          """sampled_packets_retried""",
      """grpc.RxTxStats.sampled_packets_dropped""":
          """sampled_packets_dropped""",
      """grpc.RxTxStats.phy_mode""": """phy_mode""",
      """grpc.RxTxStats.success_bytes""": """success_bytes""",
      """grpc.WifiClient.name""": """name""",
      """grpc.WifiClient.mac_address""": """mac_address""",
      """grpc.WifiClient.ip_address""": """ip_address""",
      """grpc.WifiClient.signal_strength""": """signal_strength""",
      """grpc.WifiClient.rx_stats""": """rx_stats""",
      """grpc.WifiClient.tx_stats""": """tx_stats""",
      """grpc.WifiClient.associated_time_s""": """associated_time_s""",
      """grpc.WifiClient.mode_str""": """mode_str""",
      """grpc.WifiClient.iface""": """iface""",
      """grpc.WifiClient.snr""": """snr""",
      """grpc.WifiClient.psmode""": """psmode""",
      """grpc.WifiClient.channel_width""": """channel_width""",
      """grpc.WifiClient.upstream_mac_address""": """upstream_mac_address""",
      """grpc.WifiClient.role""": """role""",
      """grpc.WifiClient.device_id""": """device_id""",
      """grpc.WifiClient.swq_checks""": """swq_checks""",
      """grpc.WifiClient.swq_checks_non_empty""": """swq_checks_non_empty""",
      """grpc.WifiClient.mib_steer_state""": """mib_steer_state""",
      """grpc.WifiClient.mib_steer_method""": """mib_steer_method""",
      """grpc.WifiClient.btm_requests""": """btm_requests""",
      """grpc.WifiClient.btm_requests_success""": """btm_requests_success""",
      """grpc.WifiClient.domain""": """domain""",
      """grpc.WifiClient.dot11v_support""": """dot11v_support""",
      """grpc.WifiClient.iface_name""": """iface_name""",
      """grpc.WifiClient.steer_req_success_last_1h""":
          """steer_req_success_last_1h""",
      """grpc.WifiClient.steer_req_fail_last_1h""":
          """steer_req_fail_last_1h""",
      """grpc.WifiClient.steer_req_fail_and_dissoc_last_1h""":
          """steer_req_fail_and_dissoc_last_1h""",
      """grpc.WifiClient.steer_state""": """steer_state""",
      """grpc.WifiClient.given_name""": """given_name""",
      """grpc.WifiClient.hops_from_controller""": """hops_from_controller""",
      """grpc.WifiClient.est_tx_rate_mbps_from_controller""":
          """est_tx_rate_mbps_from_controller""",
      """grpc.WifiClient.est_rx_rate_mbps_from_controller""":
          """est_rx_rate_mbps_from_controller""",
      """grpc.WifiClient.hardware_version""": """hardware_version""",
      """grpc.WifiClient.software_version""": """software_version""",
      """grpc.WifiClient.api_version""": """api_version""",
      """grpc.WifiClient.ping_metrics""": """ping_metrics""",
      """grpc.WifiClient.ipv6_addresses""": """ipv6_addresses""",
      """grpc.WifiAlerts.thermal_throttle""": """thermal_throttle""",
      """grpc.WifiAlerts.install_pending""": """install_pending""",
      """grpc.WifiAlerts.freshly_fused""": """freshly_fused""",
      """grpc.WifiAlerts.lan_eth_slow_link_10""": """lan_eth_slow_link_10""",
      """grpc.WifiAlerts.lan_eth_slow_link_100""": """lan_eth_slow_link_100""",
      """grpc.WifiAlerts.wan_eth_poor_connection""":
          """wan_eth_poor_connection""",
      """grpc.WifiAlerts.mesh_topology_changing_often""":
          """mesh_topology_changing_often""",
      """grpc.WifiAlerts.mesh_unreliable_backhaul""":
          """mesh_unreliable_backhaul""",
      """grpc.WifiGetStatus.captive_portal_enabled""":
          """Captive portal enabled""",
      """grpc.WifiGetStatus.uptime_s""": """Uptime""",
      """grpc.WifiGetStatus.ipv4_wan_address""": """WAN IPv4""",
      """grpc.WifiGetStatus.ping_drop_rate""": """Ping drop rate""",
      """grpc.WifiGetStatus.ping_latency_ms""": """ping_latency_ms""",
      """grpc.WifiGetStatus.is_aviation""": """Aviation""",
      """grpc.WifiGetStatus.dish_ping_drop_rate""": """Dish ping drop rate""",
      """grpc.WifiGetStatus.dish_ping_latency_ms""":
          """Dish ping latency, ms""",
      """grpc.WifiGetStatus.pop_ping_drop_rate""": """PoP ping drop rate""",
      """grpc.WifiGetStatus.pop_ping_latency_ms""": """PoP ping latency, ms""",
      """grpc.WifiGetStatus.is_aviation_conformed""": """Aviation conformed""",
      """grpc.WifiGetStatus.ipv6_wan_addresses""": """WAN IPv6""",
      """grpc.WifiGetStatus.dish_ping_drop_rate_5m""":
          """Dish ping drop rate, 5m""",
      """grpc.WifiGetStatus.has_client_index""": """has_client_index""",
      """grpc.WifiGetStatus.client_index""": """client_index""",
    };
