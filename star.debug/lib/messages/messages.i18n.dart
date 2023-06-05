// GENERATED FILE, do not edit!
// ignore_for_file: unused_element, unused_field
import 'package:i18n/i18n.dart' as i18n;

String get _languageCode => 'en';
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

class Messages {
  const Messages();
  String get locale => "en";
  String get languageCode => "en";
  GeneralMessages get general => GeneralMessages(this);
  AboutMessages get about => AboutMessages(this);
  WifiMessages get wifi => WifiMessages(this);
  LiveMessages get live => LiveMessages(this);
  HeaderMessages get header => HeaderMessages(this);
  TabsMessages get tabs => TabsMessages(this);
  OnlineMessages get online => OnlineMessages(this);
  GrpcMessages get grpc => GrpcMessages(this);
}

class GeneralMessages {
  final Messages _parent;
  const GeneralMessages(this._parent);
  String get lang => """English""";
  String get app_name => """Star Debug""";
  String get close => """Close""";
  String get cancel => """Cancel""";
  String get next => """Next""";
  String get back => """Back""";
  String get save => """Save""";
  String get no_changes => """No changes""";
  String get try_again => """Try again""";
  String get loading => """Loading ...""";
  String get loading_error => """Loading error occurred""";
  String get error_occured => """Error occurred""";
  String get refresh => """Refresh""";
  String get copied_to_clipboard => """Copied to clipboard""";
  String get confirm => """Confirm""";
  String get reject => """Reject""";
  String get no_items => """No items""";
  String get got_it => """Got it""";
  String get ok => """OK""";
  String get select_lang => """Select language""";
  String get change_language => """Change language""";
  String get dish => """Dish""";
  String get router => """Router""";
  String get device_app => """Device App""";
  String get open_json_file => """Open JSON file""";
  String get open_clipboard => """Open JSON from clipboard""";
  String get debug_data_viewer => """Debug Data Viewer""";
  String get no_data_found => """No data found""";
  String get dark_mode => """Dark mode""";
  String get online => """Online""";
  String get version => """Version""";
  String get charts => """Charts""";
  String get save_debug_data => """Save Debug Data""";
  String get to_clipboard => """To Clipboard""";
  String get to_file => """To File""";
  String get share => """Share""";
  String get view_in_app => """View in app""";
  String get reboot => """Reboot""";
  String get stow => """Stow""";
  String get unstow => """Unstow""";
  String get inhibit_gps => """Inhibit GPS""";
  String get uninhibit_gps => """Uninhibit GPS""";
  String get dump_created_time => """Dump created time""";
  String get no_alerts => """No alerts""";
}

class AboutMessages {
  final Messages _parent;
  const AboutMessages(this._parent);
  String get about => """About""";
  String get about_starlink_for_ukraine => """About Narodnyi Starlink""";
  String get starlink_for_ukraine => """Narodnyi Starlink""";
  String get starlink_for_ukraine_in_fb => """Narodnyi Starlink on Facebook""";
  String get about_text =>
      """This application was created as part of the volunteer initiative "**Narodnyi Starlink**" for the needs 
of people who care about the availability of communications even in the places where 
the russian aggressor tries to turn cities into ashes.
""";
  String get project_on_github => """Project on GitHub""";
}

class WifiMessages {
  final Messages _parent;
  const WifiMessages(this._parent);
  String get setup => """Setup""";
  String get setup_wifi => """Setup Wifi""";
  String get network_name => """Network name""";
  String get password => """Network password""";
  String get skip => """Skip""";
  String get apply => """Apply""";
}

class LiveMessages {
  final Messages _parent;
  const LiveMessages(this._parent);
  String get starlink_live => """Starlink Live""";
}

class HeaderMessages {
  final Messages _parent;
  const HeaderMessages(this._parent);
  String get general => """General""";
  String get signal => """Signal""";
  String get network => """Network""";
  String get alerts => """Alerts""";
  String get device_info => """Device Info""";
  String get config => """Config""";
  String get gps_stats => """GPS Stats""";
  String get antenna => """Antenna""";
  String get ready_states => """Ready States""";
  String get networks => """Networks""";
  String get boot => """Boot""";
  String get client => """Client""";
  String get features => """Features""";
}

class TabsMessages {
  final Messages _parent;
  const TabsMessages(this._parent);
  AppTabsMessages get app => AppTabsMessages(this);
}

class AppTabsMessages {
  final TabsMessages _parent;
  const AppTabsMessages(this._parent);
  String get unknown => """Unknown""";
  String get app_version => """App version""";
  String get app_environment => """App environment""";
  String get app_build => """App build""";
  String get app_hash => """App hash""";
  String get app_timestamp => """App timestamp""";
  String get platform_os => """Platform OS""";
  String get platform_os_version => """Platform OS version""";
  String get device => """Device""";
  String get device_model => """Device model""";
  String get device_id => """Device id""";
  String get device_timestamp => """Device timestamp""";
  String get device_uptime => """Device uptime""";
  String get wifi_ip_address => """WiFi IP address""";
  String get local_connection_type => """Local connection type""";
  String get local_connection_speed => """Local connection speed""";
  String get is_vpn => """Is VPN""";
  String get is_connected => """Is connected""";
  String get internet_available => """Internet available""";
  String get connected_via_starlink => """Connected via Starlink""";
  String get starlink_router_bypass_mode => """Starlink router bypass mode""";
  String get local_ip_address => """Local IP address""";
  String get gateway_ip_address => """Gateway IP address""";
  String get public_ip_address => """Public IP address""";
  String get wifi_ssid => """WiFi SSID""";
  String get wifi_bssid => """WiFi BSSID""";
  String get wifi_frequency => """WiFi frequency""";
  String get wifi_signal_strength => """WiFi signal strength""";
  String get sensors => """Sensors""";
  String get available => """Available""";
  String get active => """Active""";
}

class OnlineMessages {
  final Messages _parent;
  const OnlineMessages(this._parent);
  String get internet => """Internet""";
  String get starlink_internet => """Starlink Internet""";
}

class GrpcMessages {
  final Messages _parent;
  const GrpcMessages(this._parent);
  DeviceInfoGrpcMessages get DeviceInfo => DeviceInfoGrpcMessages(this);
  BootInfoGrpcMessages get BootInfo => BootInfoGrpcMessages(this);
  DishOutageGrpcMessages get DishOutage => DishOutageGrpcMessages(this);
  DishGpsStatsGrpcMessages get DishGpsStats => DishGpsStatsGrpcMessages(this);
  DishReadyStatesGrpcMessages get DishReadyStates =>
      DishReadyStatesGrpcMessages(this);
  DishConfigGrpcMessages get DishConfig => DishConfigGrpcMessages(this);
  DishObstructionStatsGrpcMessages get DishObstructionStats =>
      DishObstructionStatsGrpcMessages(this);
  DishGetStatusGrpcMessages get DishGetStatus =>
      DishGetStatusGrpcMessages(this);
  ClientNameGrpcMessages get ClientName => ClientNameGrpcMessages(this);
  NetworkGrpcMessages get Network => NetworkGrpcMessages(this);
  BasicServiceSetGrpcMessages get BasicServiceSet =>
      BasicServiceSetGrpcMessages(this);
  WifiConfigGrpcMessages get WifiConfig => WifiConfigGrpcMessages(this);
  PingMetricsGrpcMessages get PingMetrics => PingMetricsGrpcMessages(this);
  RxTxStatsGrpcMessages get RxTxStats => RxTxStatsGrpcMessages(this);
  WifiClientGrpcMessages get WifiClient => WifiClientGrpcMessages(this);
  WifiGetStatusGrpcMessages get WifiGetStatus =>
      WifiGetStatusGrpcMessages(this);
}

class DeviceInfoGrpcMessages {
  final GrpcMessages _parent;
  const DeviceInfoGrpcMessages(this._parent);
  String get id => """Id""";
  String get hardware_version => """Hardware revision""";
  String get software_version => """Software version""";
  String get country_code => """Country code""";
  String get utc_offset_s => """UTC offset, s""";
  String get software_partitions_equal => """Software partitions equal""";
  String get is_dev => """Development hardware""";
  String get bootcount => """Boot count""";
  String get anti_rollback_version => """Anti-Rollback version""";
  String get is_hitl => """is_hitl""";
  String get manufactured_version => """Software version (manufactured)""";
  String get generation_number => """Generation number""";
  String get dish_cohoused => """Starlink cohoused""";
  String get x_build_date => """Build date""";
  String get x_timezone => """Timezone""";
}

class BootInfoGrpcMessages {
  final GrpcMessages _parent;
  const BootInfoGrpcMessages(this._parent);
  String get last_reason => """Last reason""";
}

class DishOutageGrpcMessages {
  final GrpcMessages _parent;
  const DishOutageGrpcMessages(this._parent);
  String get cause => """Cause""";
  String get cause__hint =>
      """The reason why the dish is offline. The possible options are:

- **UNKNOWN**
- **BOOTING** - Dish is trying to initialize satellite connection
- **STOWED** - The dish is stowed to be packaged for storage
- **THERMAL_SHUTDOWN** - Dish is overheated
- **NO_SCHEDULE**
- **NO_SATS** - No enough GPS signal received
- **OBSTRUCTED** - Too much signal obstructions
- **NO_DOWNLINK** - No downlink from satellites is established 
- **NO_PINGS**
- **ACTUATOR_ACTIVITY**
- **CABLE_TEST**
- **SLEEPING**
- **MOVING_WHILE_NOT_ALLOWED**
""";
  String get start_timestamp_ns => """Start timestamp, ns""";
  String get duration_ns => """Duration, ns""";
  String get did_switch => """Did switch""";
}

class DishGpsStatsGrpcMessages {
  final GrpcMessages _parent;
  const DishGpsStatsGrpcMessages(this._parent);
  String get gps_valid => """GPS valid""";
  String get gps_sats => """GPS satellites""";
  String get no_sats_after_ttff => """No GPS satellites after first fix""";
  String get inhibit_gps => """Don't trust Dishy's GPS""";
}

class DishReadyStatesGrpcMessages {
  final GrpcMessages _parent;
  const DishReadyStatesGrpcMessages(this._parent);
  String get cady => """Clock generator""";
  String get scp => """RFFE bus interface""";
  String get l1l2 => """Modem L1L2""";
  String get xphy => """Xilinx XPHY interface""";
  String get aap => """Digital beamformers""";
  String get rf => """RF front end""";
}

class DishConfigGrpcMessages {
  final GrpcMessages _parent;
  const DishConfigGrpcMessages(this._parent);
  String get snow_melt_mode => """snow_melt_mode""";
  String get location_request_mode => """location_request_mode""";
  String get level_dish_mode => """level_dish_mode""";
  String get power_save_start_minutes => """power_save_start_minutes""";
  String get power_save_duration_minutes => """power_save_duration_minutes""";
  String get power_save_mode => """power_save_mode""";
}

class DishObstructionStatsGrpcMessages {
  final GrpcMessages _parent;
  const DishObstructionStatsGrpcMessages(this._parent);
  String get fraction_obstructed => """Fraction obstructed""";
  String get valid_s => """Time valid""";
  String get currently_obstructed => """Currently obstructed""";
  String get avg_prolonged_obstruction_duration_s =>
      """Average prolonged obstruction duration""";
  String get avg_prolonged_obstruction_interval_s =>
      """Average prolonged obstruction interval""";
  String get avg_prolonged_obstruction_valid =>
      """Average prolonged obstruction valid""";
  String get time_obstructed => """Time obstructed""";
  String get patches_valid => """Patches valid""";
}

class DishGetStatusGrpcMessages {
  final GrpcMessages _parent;
  const DishGetStatusGrpcMessages(this._parent);
  String get uptime_s => """Uptime""";
  String get uptime_s__hint =>
      """Time the dish is running since the last reboot.
""";
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
  String get downlink_throughput_bps => """Downlink Throughput""";
  String get uplink_throughput_bps => """Uplink Throughput""";
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

class ClientNameGrpcMessages {
  final GrpcMessages _parent;
  const ClientNameGrpcMessages(this._parent);
  String get mac_address => """mac_address""";
  String get given_name => """given_name""";
}

class NetworkGrpcMessages {
  final GrpcMessages _parent;
  const NetworkGrpcMessages(this._parent);
  String get ipv4 => """ipv4""";
  String get client_isolation => """client_isolation""";
  String get guest => """guest""";
  String get landing => """landing""";
  String get domain => """domain""";
  String get dhcpv4_start => """dhcpv4_start""";
}

class BasicServiceSetGrpcMessages {
  final GrpcMessages _parent;
  const BasicServiceSetGrpcMessages(this._parent);
  String get bssid => """bssid""";
  String get ssid => """ssid""";
  String get band => """band""";
  String get disable => """disable""";
  String get hidden => """hidden""";
  String get iface_name => """iface_name""";
  String get auth => """auth""";
}

class WifiConfigGrpcMessages {
  final GrpcMessages _parent;
  const WifiConfigGrpcMessages(this._parent);
  String get country_code => """Country code""";
  String get setup_complete => """Setup complete""";
  String get version => """Version""";
  String get channel_2ghz => """channel_2ghz""";
  String get channel_5ghz => """channel_5ghz""";
  String get is_repeater => """is_repeater""";
  String get boot_count => """Boot count""";
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

class PingMetricsGrpcMessages {
  final GrpcMessages _parent;
  const PingMetricsGrpcMessages(this._parent);
  String get in_unhappy_hour_2s => """in_unhappy_hour_2s""";
  String get in_unhappy_hour_5s => """in_unhappy_hour_5s""";
  String get drop_rate_5m => """drop_rate_5m""";
  String get latency_5m => """latency_5m""";
}

class RxTxStatsGrpcMessages {
  final GrpcMessages _parent;
  const RxTxStatsGrpcMessages(this._parent);
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

class WifiClientGrpcMessages {
  final GrpcMessages _parent;
  const WifiClientGrpcMessages(this._parent);
  String get name => """name""";
  String get mac_address => """MAC address""";
  String get ip_address => """IP address""";
  String get signal_strength => """Signal strength""";
  String get rx_stats => """rx_stats""";
  String get tx_stats => """tx_stats""";
  String get associated_time_s => """Associated time, s""";
  String get mode_str => """mode_str""";
  String get iface => """Interface""";
  String get snr => """Signal to noice""";
  String get psmode => """psmode""";
  String get channel_width => """channel_width""";
  String get upstream_mac_address => """upstream_mac_address""";
  String get role => """Role""";
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
  String get ipv6_addresses => """IPv6 addresses""";
  String get x_rx_bytes => """Received""";
  String get x_tx_bytes => """Transmitted""";
}

class WifiGetStatusGrpcMessages {
  final GrpcMessages _parent;
  const WifiGetStatusGrpcMessages(this._parent);
  String get captive_portal_enabled => """Captive portal enabled""";
  String get uptime_s => """Uptime""";
  String get ipv4_wan_address => """WAN IPv4""";
  String get ping_drop_rate => """Ping drop rate""";
  String get ping_latency_ms => """Ping latency, ms""";
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

Map<String, String> get messagesMap => {
      """general.lang""": """English""",
      """general.app_name""": """Star Debug""",
      """general.close""": """Close""",
      """general.cancel""": """Cancel""",
      """general.next""": """Next""",
      """general.back""": """Back""",
      """general.save""": """Save""",
      """general.no_changes""": """No changes""",
      """general.try_again""": """Try again""",
      """general.loading""": """Loading ...""",
      """general.loading_error""": """Loading error occurred""",
      """general.error_occured""": """Error occurred""",
      """general.refresh""": """Refresh""",
      """general.copied_to_clipboard""": """Copied to clipboard""",
      """general.confirm""": """Confirm""",
      """general.reject""": """Reject""",
      """general.no_items""": """No items""",
      """general.got_it""": """Got it""",
      """general.ok""": """OK""",
      """general.select_lang""": """Select language""",
      """general.change_language""": """Change language""",
      """general.dish""": """Dish""",
      """general.router""": """Router""",
      """general.device_app""": """Device App""",
      """general.open_json_file""": """Open JSON file""",
      """general.open_clipboard""": """Open JSON from clipboard""",
      """general.debug_data_viewer""": """Debug Data Viewer""",
      """general.no_data_found""": """No data found""",
      """general.dark_mode""": """Dark mode""",
      """general.online""": """Online""",
      """general.version""": """Version""",
      """general.charts""": """Charts""",
      """general.save_debug_data""": """Save Debug Data""",
      """general.to_clipboard""": """To Clipboard""",
      """general.to_file""": """To File""",
      """general.share""": """Share""",
      """general.view_in_app""": """View in app""",
      """general.reboot""": """Reboot""",
      """general.stow""": """Stow""",
      """general.unstow""": """Unstow""",
      """general.inhibit_gps""": """Inhibit GPS""",
      """general.uninhibit_gps""": """Uninhibit GPS""",
      """general.dump_created_time""": """Dump created time""",
      """general.no_alerts""": """No alerts""",
      """about.about""": """About""",
      """about.about_starlink_for_ukraine""": """About Narodnyi Starlink""",
      """about.starlink_for_ukraine""": """Narodnyi Starlink""",
      """about.starlink_for_ukraine_in_fb""":
          """Narodnyi Starlink on Facebook""",
      """about.about_text""":
          """This application was created as part of the volunteer initiative "**Narodnyi Starlink**" for the needs 
of people who care about the availability of communications even in the places where 
the russian aggressor tries to turn cities into ashes.
""",
      """about.project_on_github""": """Project on GitHub""",
      """wifi.setup""": """Setup""",
      """wifi.setup_wifi""": """Setup Wifi""",
      """wifi.network_name""": """Network name""",
      """wifi.password""": """Network password""",
      """wifi.skip""": """Skip""",
      """wifi.apply""": """Apply""",
      """live.starlink_live""": """Starlink Live""",
      """header.general""": """General""",
      """header.signal""": """Signal""",
      """header.network""": """Network""",
      """header.alerts""": """Alerts""",
      """header.device_info""": """Device Info""",
      """header.config""": """Config""",
      """header.gps_stats""": """GPS Stats""",
      """header.antenna""": """Antenna""",
      """header.ready_states""": """Ready States""",
      """header.networks""": """Networks""",
      """header.boot""": """Boot""",
      """header.client""": """Client""",
      """header.features""": """Features""",
      """tabs.app.unknown""": """Unknown""",
      """tabs.app.app_version""": """App version""",
      """tabs.app.app_environment""": """App environment""",
      """tabs.app.app_build""": """App build""",
      """tabs.app.app_hash""": """App hash""",
      """tabs.app.app_timestamp""": """App timestamp""",
      """tabs.app.platform_os""": """Platform OS""",
      """tabs.app.platform_os_version""": """Platform OS version""",
      """tabs.app.device""": """Device""",
      """tabs.app.device_model""": """Device model""",
      """tabs.app.device_id""": """Device id""",
      """tabs.app.device_timestamp""": """Device timestamp""",
      """tabs.app.device_uptime""": """Device uptime""",
      """tabs.app.wifi_ip_address""": """WiFi IP address""",
      """tabs.app.local_connection_type""": """Local connection type""",
      """tabs.app.local_connection_speed""": """Local connection speed""",
      """tabs.app.is_vpn""": """Is VPN""",
      """tabs.app.is_connected""": """Is connected""",
      """tabs.app.internet_available""": """Internet available""",
      """tabs.app.connected_via_starlink""": """Connected via Starlink""",
      """tabs.app.starlink_router_bypass_mode""":
          """Starlink router bypass mode""",
      """tabs.app.local_ip_address""": """Local IP address""",
      """tabs.app.gateway_ip_address""": """Gateway IP address""",
      """tabs.app.public_ip_address""": """Public IP address""",
      """tabs.app.wifi_ssid""": """WiFi SSID""",
      """tabs.app.wifi_bssid""": """WiFi BSSID""",
      """tabs.app.wifi_frequency""": """WiFi frequency""",
      """tabs.app.wifi_signal_strength""": """WiFi signal strength""",
      """tabs.app.sensors""": """Sensors""",
      """tabs.app.available""": """Available""",
      """tabs.app.active""": """Active""",
      """online.internet""": """Internet""",
      """online.starlink_internet""": """Starlink Internet""",
      """grpc.DeviceInfo.id""": """Id""",
      """grpc.DeviceInfo.hardware_version""": """Hardware revision""",
      """grpc.DeviceInfo.software_version""": """Software version""",
      """grpc.DeviceInfo.country_code""": """Country code""",
      """grpc.DeviceInfo.utc_offset_s""": """UTC offset, s""",
      """grpc.DeviceInfo.software_partitions_equal""":
          """Software partitions equal""",
      """grpc.DeviceInfo.is_dev""": """Development hardware""",
      """grpc.DeviceInfo.bootcount""": """Boot count""",
      """grpc.DeviceInfo.anti_rollback_version""": """Anti-Rollback version""",
      """grpc.DeviceInfo.is_hitl""": """is_hitl""",
      """grpc.DeviceInfo.manufactured_version""":
          """Software version (manufactured)""",
      """grpc.DeviceInfo.generation_number""": """Generation number""",
      """grpc.DeviceInfo.dish_cohoused""": """Starlink cohoused""",
      """grpc.DeviceInfo.x_build_date""": """Build date""",
      """grpc.DeviceInfo.x_timezone""": """Timezone""",
      """grpc.BootInfo.last_reason""": """Last reason""",
      """grpc.DishOutage.cause""": """Cause""",
      """grpc.DishOutage.cause__hint""":
          """The reason why the dish is offline. The possible options are:

- **UNKNOWN**
- **BOOTING** - Dish is trying to initialize satellite connection
- **STOWED** - The dish is stowed to be packaged for storage
- **THERMAL_SHUTDOWN** - Dish is overheated
- **NO_SCHEDULE**
- **NO_SATS** - No enough GPS signal received
- **OBSTRUCTED** - Too much signal obstructions
- **NO_DOWNLINK** - No downlink from satellites is established 
- **NO_PINGS**
- **ACTUATOR_ACTIVITY**
- **CABLE_TEST**
- **SLEEPING**
- **MOVING_WHILE_NOT_ALLOWED**
""",
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
      """grpc.DishObstructionStats.valid_s""": """Time valid""",
      """grpc.DishObstructionStats.currently_obstructed""":
          """Currently obstructed""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s""":
          """Average prolonged obstruction duration""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s""":
          """Average prolonged obstruction interval""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_valid""":
          """Average prolonged obstruction valid""",
      """grpc.DishObstructionStats.time_obstructed""": """Time obstructed""",
      """grpc.DishObstructionStats.patches_valid""": """Patches valid""",
      """grpc.DishGetStatus.uptime_s""": """Uptime""",
      """grpc.DishGetStatus.uptime_s__hint""":
          """Time the dish is running since the last reboot.
""",
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
          """Downlink Throughput""",
      """grpc.DishGetStatus.uplink_throughput_bps""": """Uplink Throughput""",
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
      """grpc.WifiConfig.boot_count""": """Boot count""",
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
      """grpc.WifiClient.mac_address""": """MAC address""",
      """grpc.WifiClient.ip_address""": """IP address""",
      """grpc.WifiClient.signal_strength""": """Signal strength""",
      """grpc.WifiClient.rx_stats""": """rx_stats""",
      """grpc.WifiClient.tx_stats""": """tx_stats""",
      """grpc.WifiClient.associated_time_s""": """Associated time, s""",
      """grpc.WifiClient.mode_str""": """mode_str""",
      """grpc.WifiClient.iface""": """Interface""",
      """grpc.WifiClient.snr""": """Signal to noice""",
      """grpc.WifiClient.psmode""": """psmode""",
      """grpc.WifiClient.channel_width""": """channel_width""",
      """grpc.WifiClient.upstream_mac_address""": """upstream_mac_address""",
      """grpc.WifiClient.role""": """Role""",
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
      """grpc.WifiClient.ipv6_addresses""": """IPv6 addresses""",
      """grpc.WifiClient.x_rx_bytes""": """Received""",
      """grpc.WifiClient.x_tx_bytes""": """Transmitted""",
      """grpc.WifiGetStatus.captive_portal_enabled""":
          """Captive portal enabled""",
      """grpc.WifiGetStatus.uptime_s""": """Uptime""",
      """grpc.WifiGetStatus.ipv4_wan_address""": """WAN IPv4""",
      """grpc.WifiGetStatus.ping_drop_rate""": """Ping drop rate""",
      """grpc.WifiGetStatus.ping_latency_ms""": """Ping latency, ms""",
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
