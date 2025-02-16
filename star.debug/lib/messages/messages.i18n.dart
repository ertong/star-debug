// GENERATED FILE, do not edit!
// ignore_for_file: annotate_overrides, non_constant_identifier_names, prefer_single_quotes, unused_element, unused_field
import 'package:i18n/i18n.dart' as i18n;

String get _languageCode => 'en';
String _plural(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) => i18n.plural(
  count,
  _languageCode,
  zero: zero,
  one: one,
  two: two,
  few: few,
  many: many,
  other: other,
);
String _ordinal(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) => i18n.ordinal(
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
}) => i18n.cardinal(
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
  RecentMessages get recent => RecentMessages(this);
  MyMessages get my => MyMessages(this);
  AboutMessages get about => AboutMessages(this);
  SettingsMessages get settings => SettingsMessages(this);
  ValkyrieMessages get valkyrie => ValkyrieMessages(this);
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

  /// ```dart
  /// "English"
  /// ```
  String get lang => """English""";

  /// ```dart
  /// "Star Debug"
  /// ```
  String get app_name => """Star Debug""";

  /// ```dart
  /// "Language"
  /// ```
  String get language => """Language""";

  /// ```dart
  /// "Close"
  /// ```
  String get close => """Close""";

  /// ```dart
  /// "Cancel"
  /// ```
  String get cancel => """Cancel""";

  /// ```dart
  /// "Next"
  /// ```
  String get next => """Next""";

  /// ```dart
  /// "Back"
  /// ```
  String get back => """Back""";

  /// ```dart
  /// "Save"
  /// ```
  String get save => """Save""";

  /// ```dart
  /// "No changes"
  /// ```
  String get no_changes => """No changes""";

  /// ```dart
  /// "Try again"
  /// ```
  String get try_again => """Try again""";

  /// ```dart
  /// "Loading ..."
  /// ```
  String get loading => """Loading ...""";

  /// ```dart
  /// "Loading error occurred"
  /// ```
  String get loading_error => """Loading error occurred""";

  /// ```dart
  /// "Error occurred"
  /// ```
  String get error_occured => """Error occurred""";

  /// ```dart
  /// "Refresh"
  /// ```
  String get refresh => """Refresh""";

  /// ```dart
  /// "Copied to clipboard"
  /// ```
  String get copied_to_clipboard => """Copied to clipboard""";

  /// ```dart
  /// "Confirm"
  /// ```
  String get confirm => """Confirm""";

  /// ```dart
  /// "Reject"
  /// ```
  String get reject => """Reject""";

  /// ```dart
  /// "No items"
  /// ```
  String get no_items => """No items""";

  /// ```dart
  /// "Got it"
  /// ```
  String get got_it => """Got it""";

  /// ```dart
  /// "OK"
  /// ```
  String get ok => """OK""";

  /// ```dart
  /// "Select language"
  /// ```
  String get select_lang => """Select language""";

  /// ```dart
  /// "Change language"
  /// ```
  String get change_language => """Change language""";

  /// ```dart
  /// "Dish"
  /// ```
  String get dish => """Dish""";

  /// ```dart
  /// "Router"
  /// ```
  String get router => """Router""";

  /// ```dart
  /// "Security"
  /// ```
  String get security => """Security""";

  /// ```dart
  /// "Device App"
  /// ```
  String get device_app => """Device App""";

  /// ```dart
  /// "Open JSON file"
  /// ```
  String get open_json_file => """Open JSON file""";

  /// ```dart
  /// "Open JSON from the clipboard"
  /// ```
  String get open_clipboard => """Open JSON from the clipboard""";

  /// ```dart
  /// "Debug Data Viewer"
  /// ```
  String get debug_data_viewer => """Debug Data Viewer""";

  /// ```dart
  /// "No data found"
  /// ```
  String get no_data_found => """No data found""";

  /// ```dart
  /// "Dark mode"
  /// ```
  String get dark_mode => """Dark mode""";

  /// ```dart
  /// "Online"
  /// ```
  String get online => """Online""";

  /// ```dart
  /// "Version"
  /// ```
  String get version => """Version""";

  /// ```dart
  /// "Charts"
  /// ```
  String get charts => """Charts""";

  /// ```dart
  /// "Save Debug Data"
  /// ```
  String get save_debug_data => """Save Debug Data""";

  /// ```dart
  /// "To Clipboard"
  /// ```
  String get to_clipboard => """To Clipboard""";

  /// ```dart
  /// "To File"
  /// ```
  String get to_file => """To File""";

  /// ```dart
  /// "Save As"
  /// ```
  String get save_as => """Save As""";

  /// ```dart
  /// "Share"
  /// ```
  String get share => """Share""";

  /// ```dart
  /// "View in the app"
  /// ```
  String get view_in_app => """View in the app""";

  /// ```dart
  /// "Reboot"
  /// ```
  String get reboot => """Reboot""";

  /// ```dart
  /// "Stow"
  /// ```
  String get stow => """Stow""";

  /// ```dart
  /// "Unstow"
  /// ```
  String get unstow => """Unstow""";

  /// ```dart
  /// "Inhibit GPS"
  /// ```
  String get inhibit_gps => """Inhibit GPS""";

  /// ```dart
  /// "Uninhibit GPS"
  /// ```
  String get uninhibit_gps => """Uninhibit GPS""";

  /// ```dart
  /// "Dump created time"
  /// ```
  String get dump_created_time => """Dump created time""";

  /// ```dart
  /// "No alerts"
  /// ```
  String get no_alerts => """No alerts""";

  /// ```dart
  /// "Confirmation"
  /// ```
  String get confirmation => """Confirmation""";

  /// ```dart
  /// "Just now"
  /// ```
  String get just_now => """Just now""";

  /// ```dart
  /// "${t}m ago"
  /// ```
  String x_min_ago(t) => """${t}m ago""";

  /// ```dart
  /// "${t}h ago"
  /// ```
  String x_hours_ago(t) => """${t}h ago""";

  /// ```dart
  /// "${t}d ago"
  /// ```
  String x_days_ago(t) => """${t}d ago""";

  /// ```dart
  /// "Should not be empty"
  /// ```
  String get should_not_be_empty => """Should not be empty""";

  /// ```dart
  /// "yes"
  /// ```
  String get yes => """yes""";

  /// ```dart
  /// "no"
  /// ```
  String get no => """no""";
}

class RecentMessages {
  final Messages _parent;
  const RecentMessages(this._parent);

  /// ```dart
  /// "Search"
  /// ```
  String get search => """Search""";

  /// ```dart
  /// "No options to show"
  /// ```
  String get no_options => """No options to show""";
}

class MyMessages {
  final Messages _parent;
  const MyMessages(this._parent);

  /// ```dart
  /// "My Starlinks"
  /// ```
  String get my_starlinks => """My Starlinks""";

  /// ```dart
  /// "Snapshots"
  /// ```
  String get snapshots => """Snapshots""";

  /// ```dart
  /// "Do you want to delete snapshot of dish $id for $ts?"
  /// ```
  String delete_snapshot_prompt(id, ts) =>
      """Do you want to delete snapshot of dish $id for $ts?""";

  /// ```dart
  /// "Do you want to delete ALL snapshots of dish $id but last?"
  /// ```
  String delete_all_snapshots_but_last_prompt(id) =>
      """Do you want to delete ALL snapshots of dish $id but last?""";

  /// ```dart
  /// "Do you want to delete dish $id?"
  /// ```
  String delete_dish_prompt(id) => """Do you want to delete dish $id?""";

  /// ```dart
  /// "Do you want to delete data for ALL dishes?"
  /// ```
  String get delete_all_dished_prompt =>
      """Do you want to delete data for ALL dishes?""";
}

class AboutMessages {
  final Messages _parent;
  const AboutMessages(this._parent);

  /// ```dart
  /// "About"
  /// ```
  String get about => """About""";

  /// ```dart
  /// "About Narodnyi Starlink"
  /// ```
  String get about_starlink_for_ukraine => """About Narodnyi Starlink""";

  /// ```dart
  /// "Narodnyi Starlink"
  /// ```
  String get starlink_for_ukraine => """Narodnyi Starlink""";

  /// ```dart
  /// "Narodnyi Starlink on Facebook"
  /// ```
  String get starlink_for_ukraine_in_fb => """Narodnyi Starlink on Facebook""";

  /// ```dart
  /// """
  /// This application was created as part of the volunteer initiative "**Narodnyi Starlink**" for the needs
  /// of people who care about the availability of communications even in the places where
  /// the russian aggressor is trying to turn cities into ashes.
  /// """
  /// ```
  String get about_text =>
      """This application was created as part of the volunteer initiative "**Narodnyi Starlink**" for the needs 
of people who care about the availability of communications even in the places where 
the russian aggressor is trying to turn cities into ashes.
""";

  /// ```dart
  /// "Project on GitHub"
  /// ```
  String get project_on_github => """Project on GitHub""";
}

class SettingsMessages {
  final Messages _parent;
  const SettingsMessages(this._parent);

  /// ```dart
  /// "Settings"
  /// ```
  String get settings => """Settings""";

  /// ```dart
  /// "Autostore snapshots"
  /// ```
  String get auto_store_dish_log => """Autostore snapshots""";

  /// ```dart
  /// "Store snapshots automatically from Starlink Live in My Starlinks"
  /// ```
  String get auto_store_dish_log_sub =>
      """Store snapshots automatically from Starlink Live in My Starlinks""";
}

class ValkyrieMessages {
  final Messages _parent;
  const ValkyrieMessages(this._parent);

  /// ```dart
  /// "Valkyrie Check"
  /// ```
  String get valkyrie_check => """Valkyrie Check""";

  /// ```dart
  /// "Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie."
  /// ```
  String get valkyrie_check_sub =>
      """Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie.""";

  /// ```dart
  /// "Found"
  /// ```
  String get found => """Found""";

  /// ```dart
  /// "Not found"
  /// ```
  String get not_found => """Not found""";

  /// ```dart
  /// """
  /// Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie.
  ///
  /// The possible options are:
  ///
  ///   - **Found** - BSSID is found in the Valkyrie database. It means its location can be exposed online.
  ///   - **Not found** - BSSID is not found in the Valkyrie database ... at least not yet.
  ///
  /// In any case, it is recommended to change BSSID regularly for security-critical usage.
  /// If not, it may help to expose the location of connected devices.
  /// Moreover, in the case of a moving router, its route can be followed.
  /// """
  /// ```
  String get hint =>
      """Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie.

The possible options are:

  - **Found** - BSSID is found in the Valkyrie database. It means its location can be exposed online. 
  - **Not found** - BSSID is not found in the Valkyrie database ... at least not yet.   

In any case, it is recommended to change BSSID regularly for security-critical usage. 
If not, it may help to expose the location of connected devices. 
Moreover, in the case of a moving router, its route can be followed.
""";
}

class WifiMessages {
  final Messages _parent;
  const WifiMessages(this._parent);

  /// ```dart
  /// "Setup"
  /// ```
  String get setup => """Setup""";

  /// ```dart
  /// "Setup Wifi"
  /// ```
  String get setup_wifi => """Setup Wifi""";

  /// ```dart
  /// "Network name"
  /// ```
  String get network_name => """Network name""";

  /// ```dart
  /// "Network password"
  /// ```
  String get password => """Network password""";

  /// ```dart
  /// "Skip"
  /// ```
  String get skip => """Skip""";

  /// ```dart
  /// "Apply"
  /// ```
  String get apply => """Apply""";

  /// ```dart
  /// "Bypass"
  /// ```
  String get bypass => """Bypass""";

  /// ```dart
  /// "Setup SSID and password"
  /// ```
  String get setup_ssid_and_password => """Setup SSID and password""";

  /// ```dart
  /// "STARLINK/no password"
  /// ```
  String get keep_default_wifi_settings => """STARLINK/no password""";

  /// ```dart
  /// "Enable bypass mode"
  /// ```
  String get enable_bypass_mode => """Enable bypass mode""";

  /// ```dart
  /// "You have selected network name "$ssid" and password "$pass". Confirm?"
  /// ```
  String setup_ssid_pass(ssid, pass) =>
      """You have selected network name "$ssid" and password "$pass". Confirm?""";

  /// ```dart
  /// "You have selected to leave the default network name "STARLINK" and no password. Confirm?"
  /// ```
  String get setup_default =>
      """You have selected to leave the default network name "STARLINK" and no password. Confirm?""";

  /// ```dart
  /// "You have selected to enable bypass mode. The router will be not accessible in this mode until the next hardware reset. Confirm?"
  /// ```
  String get setup_bypass =>
      """You have selected to enable bypass mode. The router will be not accessible in this mode until the next hardware reset. Confirm?""";

  /// ```dart
  /// "8 chars or more"
  /// ```
  String get more_8_chars => """8 chars or more""";
}

class LiveMessages {
  final Messages _parent;
  const LiveMessages(this._parent);

  /// ```dart
  /// "Starlink Live"
  /// ```
  String get starlink_live => """Starlink Live""";

  /// ```dart
  /// "Check Update"
  /// ```
  String get check_update => """Check Update""";

  /// ```dart
  /// "Outages"
  /// ```
  String get outages => """Outages""";

  /// ```dart
  /// "... $n records before ..."
  /// ```
  String n_records_before(n) => """... $n records before ...""";
}

class HeaderMessages {
  final Messages _parent;
  const HeaderMessages(this._parent);

  /// ```dart
  /// "General"
  /// ```
  String get general => """General""";

  /// ```dart
  /// "Signal"
  /// ```
  String get signal => """Signal""";

  /// ```dart
  /// "Network"
  /// ```
  String get network => """Network""";

  /// ```dart
  /// "Alerts"
  /// ```
  String get alerts => """Alerts""";

  /// ```dart
  /// "Device Info"
  /// ```
  String get device_info => """Device Info""";

  /// ```dart
  /// "Config"
  /// ```
  String get config => """Config""";

  /// ```dart
  /// "GPS Stats"
  /// ```
  String get gps_stats => """GPS Stats""";

  /// ```dart
  /// "Antenna"
  /// ```
  String get antenna => """Antenna""";

  /// ```dart
  /// "Ready States"
  /// ```
  String get ready_states => """Ready States""";

  /// ```dart
  /// "Initialization duration (sec)"
  /// ```
  String get init_duration => """Initialization duration (sec)""";

  /// ```dart
  /// "Networks"
  /// ```
  String get networks => """Networks""";

  /// ```dart
  /// "Boot"
  /// ```
  String get boot => """Boot""";

  /// ```dart
  /// "Client"
  /// ```
  String get client => """Client""";

  /// ```dart
  /// "Features"
  /// ```
  String get features => """Features""";

  /// ```dart
  /// "Connected routers"
  /// ```
  String get connected_routers => """Connected routers""";
}

class TabsMessages {
  final Messages _parent;
  const TabsMessages(this._parent);
  AppTabsMessages get app => AppTabsMessages(this);
}

class AppTabsMessages {
  final TabsMessages _parent;
  const AppTabsMessages(this._parent);

  /// ```dart
  /// "Unknown"
  /// ```
  String get unknown => """Unknown""";

  /// ```dart
  /// "App version"
  /// ```
  String get app_version => """App version""";

  /// ```dart
  /// "App environment"
  /// ```
  String get app_environment => """App environment""";

  /// ```dart
  /// "App build"
  /// ```
  String get app_build => """App build""";

  /// ```dart
  /// "App hash"
  /// ```
  String get app_hash => """App hash""";

  /// ```dart
  /// "App timestamp"
  /// ```
  String get app_timestamp => """App timestamp""";

  /// ```dart
  /// "Platform OS"
  /// ```
  String get platform_os => """Platform OS""";

  /// ```dart
  /// "Platform OS version"
  /// ```
  String get platform_os_version => """Platform OS version""";

  /// ```dart
  /// "Device"
  /// ```
  String get device => """Device""";

  /// ```dart
  /// "Device model"
  /// ```
  String get device_model => """Device model""";

  /// ```dart
  /// "Device id"
  /// ```
  String get device_id => """Device id""";

  /// ```dart
  /// "Device timestamp"
  /// ```
  String get device_timestamp => """Device timestamp""";

  /// ```dart
  /// "Device uptime"
  /// ```
  String get device_uptime => """Device uptime""";

  /// ```dart
  /// "WiFi IP address"
  /// ```
  String get wifi_ip_address => """WiFi IP address""";

  /// ```dart
  /// "Local connection type"
  /// ```
  String get local_connection_type => """Local connection type""";

  /// ```dart
  /// "Local connection speed"
  /// ```
  String get local_connection_speed => """Local connection speed""";

  /// ```dart
  /// "Is VPN"
  /// ```
  String get is_vpn => """Is VPN""";

  /// ```dart
  /// "Is connected"
  /// ```
  String get is_connected => """Is connected""";

  /// ```dart
  /// "Internet available"
  /// ```
  String get internet_available => """Internet available""";

  /// ```dart
  /// "Connected via Starlink"
  /// ```
  String get connected_via_starlink => """Connected via Starlink""";

  /// ```dart
  /// "Starlink router bypass mode"
  /// ```
  String get starlink_router_bypass_mode => """Starlink router bypass mode""";

  /// ```dart
  /// "Local IP address"
  /// ```
  String get local_ip_address => """Local IP address""";

  /// ```dart
  /// "Gateway IP address"
  /// ```
  String get gateway_ip_address => """Gateway IP address""";

  /// ```dart
  /// "Public IP address"
  /// ```
  String get public_ip_address => """Public IP address""";

  /// ```dart
  /// "WiFi SSID"
  /// ```
  String get wifi_ssid => """WiFi SSID""";

  /// ```dart
  /// "WiFi BSSID"
  /// ```
  String get wifi_bssid => """WiFi BSSID""";

  /// ```dart
  /// "WiFi frequency"
  /// ```
  String get wifi_frequency => """WiFi frequency""";

  /// ```dart
  /// "WiFi signal strength"
  /// ```
  String get wifi_signal_strength => """WiFi signal strength""";

  /// ```dart
  /// "Sensors"
  /// ```
  String get sensors => """Sensors""";

  /// ```dart
  /// "Available"
  /// ```
  String get available => """Available""";

  /// ```dart
  /// "Active"
  /// ```
  String get active => """Active""";
}

class OnlineMessages {
  final Messages _parent;
  const OnlineMessages(this._parent);

  /// ```dart
  /// "Internet"
  /// ```
  String get internet => """Internet""";

  /// ```dart
  /// "Starlink Internet"
  /// ```
  String get starlink_internet => """Starlink Internet""";
}

class GrpcMessages {
  final Messages _parent;
  const GrpcMessages(this._parent);

  /// ```dart
  /// """
  /// The possible options are:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get possible_options__hint => """The possible options are:

- OTHER_OPTIONS
""";
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
  AlignmentStatsGrpcMessages get AlignmentStats =>
      AlignmentStatsGrpcMessages(this);
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

  /// ```dart
  /// "Id"
  /// ```
  String get id => """Id""";

  /// ```dart
  /// "Hardware revision"
  /// ```
  String get hardware_version => """Hardware revision""";

  /// ```dart
  /// "Software version"
  /// ```
  String get software_version => """Software version""";

  /// ```dart
  /// "Country code"
  /// ```
  String get country_code => """Country code""";

  /// ```dart
  /// "UTC offset, s"
  /// ```
  String get utc_offset_s => """UTC offset, s""";

  /// ```dart
  /// "Software partitions equal"
  /// ```
  String get software_partitions_equal => """Software partitions equal""";

  /// ```dart
  /// "Development hardware"
  /// ```
  String get is_dev => """Development hardware""";

  /// ```dart
  /// "Boot count"
  /// ```
  String get bootcount => """Boot count""";

  /// ```dart
  /// "Anti-Rollback version"
  /// ```
  String get anti_rollback_version => """Anti-Rollback version""";

  /// ```dart
  /// "is_hitl"
  /// ```
  String get is_hitl => """is_hitl""";

  /// ```dart
  /// "Software version (manufactured)"
  /// ```
  String get manufactured_version => """Software version (manufactured)""";

  /// ```dart
  /// "Generation number"
  /// ```
  String get generation_number => """Generation number""";

  /// ```dart
  /// "Starlink cohoused"
  /// ```
  String get dish_cohoused => """Starlink cohoused""";

  /// ```dart
  /// "Build date"
  /// ```
  String get x_build_date => """Build date""";

  /// ```dart
  /// "Timezone"
  /// ```
  String get x_timezone => """Timezone""";
}

class BootInfoGrpcMessages {
  final GrpcMessages _parent;
  const BootInfoGrpcMessages(this._parent);

  /// ```dart
  /// "Last reason"
  /// ```
  String get last_reason => """Last reason""";
}

class DishOutageGrpcMessages {
  final GrpcMessages _parent;
  const DishOutageGrpcMessages(this._parent);

  /// ```dart
  /// "Cause"
  /// ```
  String get cause => """Cause""";

  /// ```dart
  /// """
  /// The reason why the dish is offline. The possible options are:
  ///
  /// - **UNKNOWN**
  /// - **BOOTING** - Dish is trying to initialize a satellite connection.
  ///   Should not hang in this state for too long. Most of the time, it is waiting for GPS.
  /// - **STOWED** - The dish is stowed to be packaged for storage.
  /// - **THERMAL_SHUTDOWN** - Dish is overheated. Waiting to cool down.
  /// - **NO_SCHEDULE**
  /// - **NO_SATS** - No enough GPS signal received.
  /// - **OBSTRUCTED** - Too many signal obstructions. Ensure the dish has a 140° view of the sky
  ///   (at least in the part, where it is usually oriented).
  /// - **NO_DOWNLINK** - No downlink from satellites is established.
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get cause__hint =>
      """The reason why the dish is offline. The possible options are:

- **UNKNOWN**
- **BOOTING** - Dish is trying to initialize a satellite connection. 
  Should not hang in this state for too long. Most of the time, it is waiting for GPS.
- **STOWED** - The dish is stowed to be packaged for storage.
- **THERMAL_SHUTDOWN** - Dish is overheated. Waiting to cool down.
- **NO_SCHEDULE**
- **NO_SATS** - No enough GPS signal received.
- **OBSTRUCTED** - Too many signal obstructions. Ensure the dish has a 140° view of the sky
  (at least in the part, where it is usually oriented).
- **NO_DOWNLINK** - No downlink from satellites is established.
- OTHER_OPTIONS
""";

  /// ```dart
  /// "Start timestamp, ns"
  /// ```
  String get start_timestamp_ns => """Start timestamp, ns""";

  /// ```dart
  /// "Duration, ns"
  /// ```
  String get duration_ns => """Duration, ns""";

  /// ```dart
  /// "Did switch"
  /// ```
  String get did_switch => """Did switch""";
}

class DishGpsStatsGrpcMessages {
  final GrpcMessages _parent;
  const DishGpsStatsGrpcMessages(this._parent);

  /// ```dart
  /// "GPS valid"
  /// ```
  String get gps_valid => """GPS valid""";

  /// ```dart
  /// "GPS satellites"
  /// ```
  String get gps_sats => """GPS satellites""";

  /// ```dart
  /// "No GPS satellites after a first fix"
  /// ```
  String get no_sats_after_ttff => """No GPS satellites after a first fix""";

  /// ```dart
  /// "Don't trust Dishy's GPS"
  /// ```
  String get inhibit_gps => """Don't trust Dishy's GPS""";
}

class DishReadyStatesGrpcMessages {
  final GrpcMessages _parent;
  const DishReadyStatesGrpcMessages(this._parent);

  /// ```dart
  /// "Clock generator"
  /// ```
  String get cady => """Clock generator""";

  /// ```dart
  /// "RFFE bus interface"
  /// ```
  String get scp => """RFFE bus interface""";

  /// ```dart
  /// "Modem L1L2"
  /// ```
  String get l1l2 => """Modem L1L2""";

  /// ```dart
  /// "Xilinx XPHY interface"
  /// ```
  String get xphy => """Xilinx XPHY interface""";

  /// ```dart
  /// "Digital beamformers"
  /// ```
  String get aap => """Digital beamformers""";

  /// ```dart
  /// "RF front end"
  /// ```
  String get rf => """RF front end""";
}

class DishConfigGrpcMessages {
  final GrpcMessages _parent;
  const DishConfigGrpcMessages(this._parent);

  /// ```dart
  /// "Snow melt mode"
  /// ```
  String get snow_melt_mode => """Snow melt mode""";

  /// ```dart
  /// "Location request mode"
  /// ```
  String get location_request_mode => """Location request mode""";

  /// ```dart
  /// """
  /// The possible options are:
  /// - **NONE** - Starlink does not expose its location to the local network.
  /// - **LOCAL** - Starlink exposes its location to the local network via DHCP and dish API.
  ///
  /// In order to change this setting, you need the original Starlink app with a logged-in account
  /// with internet access and dish access. You can find this setting in
  /// *Advanced* -> *Debug Data* -> *Allow access on local network*.
  /// """
  /// ```
  String get location_request_mode__hint => """The possible options are:
- **NONE** - Starlink does not expose its location to the local network.
- **LOCAL** - Starlink exposes its location to the local network via DHCP and dish API.

In order to change this setting, you need the original Starlink app with a logged-in account 
with internet access and dish access. You can find this setting in 
*Advanced* -> *Debug Data* -> *Allow access on local network*.
""";

  /// ```dart
  /// "Level dish mode"
  /// ```
  String get level_dish_mode => """Level dish mode""";

  /// ```dart
  /// "Power save start minutes"
  /// ```
  String get power_save_start_minutes => """Power save start minutes""";

  /// ```dart
  /// "Power save duration minutes"
  /// ```
  String get power_save_duration_minutes => """Power save duration minutes""";

  /// ```dart
  /// "Power save mode"
  /// ```
  String get power_save_mode => """Power save mode""";

  /// ```dart
  /// "You can set a sleep mode for your Starlink. Starlink won't provide Internet or melt snow while sleeping."
  /// ```
  String get power_save_mode__hint =>
      """You can set a sleep mode for your Starlink. Starlink won't provide Internet or melt snow while sleeping.""";
}

class DishObstructionStatsGrpcMessages {
  final GrpcMessages _parent;
  const DishObstructionStatsGrpcMessages(this._parent);

  /// ```dart
  /// "Fraction obstructed"
  /// ```
  String get fraction_obstructed => """Fraction obstructed""";

  /// ```dart
  /// "Time valid"
  /// ```
  String get valid_s => """Time valid""";

  /// ```dart
  /// "Currently obstructed"
  /// ```
  String get currently_obstructed => """Currently obstructed""";

  /// ```dart
  /// "Average prolonged obstruction duration"
  /// ```
  String get avg_prolonged_obstruction_duration_s =>
      """Average prolonged obstruction duration""";

  /// ```dart
  /// "Average prolonged obstruction interval"
  /// ```
  String get avg_prolonged_obstruction_interval_s =>
      """Average prolonged obstruction interval""";

  /// ```dart
  /// "Average prolonged obstruction valid"
  /// ```
  String get avg_prolonged_obstruction_valid =>
      """Average prolonged obstruction valid""";

  /// ```dart
  /// "Time obstructed"
  /// ```
  String get time_obstructed => """Time obstructed""";

  /// ```dart
  /// "Patches valid"
  /// ```
  String get patches_valid => """Patches valid""";
}

class DishGetStatusGrpcMessages {
  final GrpcMessages _parent;
  const DishGetStatusGrpcMessages(this._parent);

  /// ```dart
  /// "Uptime"
  /// ```
  String get uptime_s => """Uptime""";

  /// ```dart
  /// "Time the dish has been running since the last reboot."
  /// ```
  String get uptime_s__hint =>
      """Time the dish has been running since the last reboot.""";

  /// ```dart
  /// "Seconds to first non-empty slot"
  /// ```
  String get seconds_to_first_nonempty_slot =>
      """Seconds to first non-empty slot""";

  /// ```dart
  /// "fraction_obstructed"
  /// ```
  String get fraction_obstructed => """fraction_obstructed""";

  /// ```dart
  /// "valid_s"
  /// ```
  String get valid_s => """valid_s""";

  /// ```dart
  /// "currently_obstructed"
  /// ```
  String get currently_obstructed => """currently_obstructed""";

  /// ```dart
  /// "avg_prolonged_obstruction_duration_s"
  /// ```
  String get avg_prolonged_obstruction_duration_s =>
      """avg_prolonged_obstruction_duration_s""";

  /// ```dart
  /// "avg_prolonged_obstruction_interval_s"
  /// ```
  String get avg_prolonged_obstruction_interval_s =>
      """avg_prolonged_obstruction_interval_s""";

  /// ```dart
  /// "avg_prolonged_obstruction_valid"
  /// ```
  String get avg_prolonged_obstruction_valid =>
      """avg_prolonged_obstruction_valid""";

  /// ```dart
  /// "time_obstructed"
  /// ```
  String get time_obstructed => """time_obstructed""";

  /// ```dart
  /// "patches_valid"
  /// ```
  String get patches_valid => """patches_valid""";

  /// ```dart
  /// "Downlink Throughput"
  /// ```
  String get downlink_throughput_bps => """Downlink Throughput""";

  /// ```dart
  /// "Uplink Throughput"
  /// ```
  String get uplink_throughput_bps => """Uplink Throughput""";

  /// ```dart
  /// "PoP ping drop rate"
  /// ```
  String get pop_ping_drop_rate => """PoP ping drop rate""";

  /// ```dart
  /// "PoP ping latency"
  /// ```
  String get pop_ping_latency_ms => """PoP ping latency""";

  /// ```dart
  /// """
  /// The Starlink network comprises the following components:
  /// - User Terminals (UT)
  /// - Satellites (SAT)
  /// - Ground Stations (which physically connect with satellites)
  /// - Points of Presence (PoP) (connecting with ground stations via fiber, and routing network traffic to the Internet)
  ///
  /// **PoP Ping Latency** refers to the time taken for a packet to be transmitted from the User Terminal to a Point of Presence and back.
  ///
  /// **PoP Ping Drop Rate** indicates the fraction of packets lost during transmission between the User Terminal and a Point of Presence.
  /// """
  /// ```
  String get pop_ping__hint =>
      """The Starlink network comprises the following components:
- User Terminals (UT)
- Satellites (SAT)
- Ground Stations (which physically connect with satellites)
- Points of Presence (PoP) (connecting with ground stations via fiber, and routing network traffic to the Internet)

**PoP Ping Latency** refers to the time taken for a packet to be transmitted from the User Terminal to a Point of Presence and back.

**PoP Ping Drop Rate** indicates the fraction of packets lost during transmission between the User Terminal and a Point of Presence.
""";

  /// ```dart
  /// "Stow requested"
  /// ```
  String get stow_requested => """Stow requested""";

  /// ```dart
  /// "Panel boresight Azimuth angle, deg"
  /// ```
  String get boresight_azimuth_deg => """Panel boresight Azimuth angle, deg""";

  /// ```dart
  /// "Panel boresight Elevation angle, deg"
  /// ```
  String get boresight_elevation_deg =>
      """Panel boresight Elevation angle, deg""";

  /// ```dart
  /// "Ethernet speed, Mbps"
  /// ```
  String get eth_speed_mbps => """Ethernet speed, Mbps""";

  /// ```dart
  /// "Mobility class"
  /// ```
  String get mobility_class => """Mobility class""";

  /// ```dart
  /// """
  /// The possible options are:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get mobility_class__hint => """The possible options are:

- OTHER_OPTIONS
""";

  /// ```dart
  /// "SNR above the noise floor"
  /// ```
  String get is_snr_above_noise_floor => """SNR above the noise floor""";

  /// ```dart
  /// "Class of service"
  /// ```
  String get class_of_service => """Class of service""";

  /// ```dart
  /// "Software update state"
  /// ```
  String get software_update_state => """Software update state""";

  /// ```dart
  /// "SNR persistently low"
  /// ```
  String get is_snr_persistently_low => """SNR persistently low""";

  /// ```dart
  /// "Actuators"
  /// ```
  String get has_actuators => """Actuators""";

  /// ```dart
  /// "Actuators state"
  /// ```
  String get actuator_state => """Actuators state""";

  /// ```dart
  /// "Service state"
  /// ```
  String get disablement_code => """Service state""";

  /// ```dart
  /// """
  /// The possible options are:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get disablement_code__hint => """The possible options are:

- OTHER_OPTIONS
""";

  /// ```dart
  /// "Reboot reason"
  /// ```
  String get reboot_reason => """Reboot reason""";

  /// ```dart
  /// """
  /// The possible options are:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get reboot_reason__hint => """The possible options are:

- OTHER_OPTIONS
""";
}

class AlignmentStatsGrpcMessages {
  final GrpcMessages _parent;
  const AlignmentStatsGrpcMessages(this._parent);

  /// ```dart
  /// "has_actuators"
  /// ```
  String get has_actuators => """has_actuators""";

  /// ```dart
  /// "actuator_state"
  /// ```
  String get actuator_state => """actuator_state""";

  /// ```dart
  /// "tilt_angle_deg"
  /// ```
  String get tilt_angle_deg => """tilt_angle_deg""";

  /// ```dart
  /// "Panel boresight Azimuth angle, deg"
  /// ```
  String get boresight_azimuth_deg => """Panel boresight Azimuth angle, deg""";

  /// ```dart
  /// "Panel boresight Elevation angle, deg"
  /// ```
  String get boresight_elevation_deg =>
      """Panel boresight Elevation angle, deg""";

  /// ```dart
  /// "Attitude estimation state"
  /// ```
  String get attitude_estimation_state => """Attitude estimation state""";

  /// ```dart
  /// "Attitude uncertainty, deg"
  /// ```
  String get attitude_uncertainty_deg => """Attitude uncertainty, deg""";

  /// ```dart
  /// "Desired boresight Azimuth angle, deg"
  /// ```
  String get desired_boresight_azimuth_deg =>
      """Desired boresight Azimuth angle, deg""";

  /// ```dart
  /// "Desired boresight Elevation angle, deg"
  /// ```
  String get desired_boresight_elevation_deg =>
      """Desired boresight Elevation angle, deg""";
}

class ClientNameGrpcMessages {
  final GrpcMessages _parent;
  const ClientNameGrpcMessages(this._parent);

  /// ```dart
  /// "mac_address"
  /// ```
  String get mac_address => """mac_address""";

  /// ```dart
  /// "given_name"
  /// ```
  String get given_name => """given_name""";
}

class NetworkGrpcMessages {
  final GrpcMessages _parent;
  const NetworkGrpcMessages(this._parent);

  /// ```dart
  /// "ipv4"
  /// ```
  String get ipv4 => """ipv4""";

  /// ```dart
  /// "client_isolation"
  /// ```
  String get client_isolation => """client_isolation""";

  /// ```dart
  /// "guest"
  /// ```
  String get guest => """guest""";

  /// ```dart
  /// "landing"
  /// ```
  String get landing => """landing""";

  /// ```dart
  /// "domain"
  /// ```
  String get domain => """domain""";

  /// ```dart
  /// "dhcpv4_start"
  /// ```
  String get dhcpv4_start => """dhcpv4_start""";
}

class BasicServiceSetGrpcMessages {
  final GrpcMessages _parent;
  const BasicServiceSetGrpcMessages(this._parent);

  /// ```dart
  /// "bssid"
  /// ```
  String get bssid => """bssid""";

  /// ```dart
  /// """
  /// Starlink BSSID originally starts with **74:24:9f**, but due to security concerns,
  /// starting from approximately January 2023, Starlink routers are able to pick random BSSID on factory reset.
  /// """
  /// ```
  String get bssid__hint =>
      """Starlink BSSID originally starts with **74:24:9f**, but due to security concerns, 
starting from approximately January 2023, Starlink routers are able to pick random BSSID on factory reset.
""";

  /// ```dart
  /// "ssid"
  /// ```
  String get ssid => """ssid""";

  /// ```dart
  /// "band"
  /// ```
  String get band => """band""";

  /// ```dart
  /// "disable"
  /// ```
  String get disable => """disable""";

  /// ```dart
  /// "hidden"
  /// ```
  String get hidden => """hidden""";

  /// ```dart
  /// "iface_name"
  /// ```
  String get iface_name => """iface_name""";

  /// ```dart
  /// "auth"
  /// ```
  String get auth => """auth""";
}

class WifiConfigGrpcMessages {
  final GrpcMessages _parent;
  const WifiConfigGrpcMessages(this._parent);

  /// ```dart
  /// "Country code"
  /// ```
  String get country_code => """Country code""";

  /// ```dart
  /// "Setup complete"
  /// ```
  String get setup_complete => """Setup complete""";

  /// ```dart
  /// "Version"
  /// ```
  String get version => """Version""";

  /// ```dart
  /// "channel_2ghz"
  /// ```
  String get channel_2ghz => """channel_2ghz""";

  /// ```dart
  /// "channel_5ghz"
  /// ```
  String get channel_5ghz => """channel_5ghz""";

  /// ```dart
  /// "is_repeater"
  /// ```
  String get is_repeater => """is_repeater""";

  /// ```dart
  /// "Boot count"
  /// ```
  String get boot_count => """Boot count""";

  /// ```dart
  /// "string"
  /// ```
  String get string => """string""";

  /// ```dart
  /// "bypass_mode"
  /// ```
  String get bypass_mode => """bypass_mode""";

  /// ```dart
  /// "apply_dynamic_keys"
  /// ```
  String get apply_dynamic_keys => """apply_dynamic_keys""";

  /// ```dart
  /// "dfs_enabled"
  /// ```
  String get dfs_enabled => """dfs_enabled""";

  /// ```dart
  /// "incarnation"
  /// ```
  String get incarnation => """incarnation""";

  /// ```dart
  /// "wireless_mode_2ghz"
  /// ```
  String get wireless_mode_2ghz => """wireless_mode_2ghz""";

  /// ```dart
  /// "wireless_mode_5ghz"
  /// ```
  String get wireless_mode_5ghz => """wireless_mode_5ghz""";

  /// ```dart
  /// "ht_bandwidth_2ghz"
  /// ```
  String get ht_bandwidth_2ghz => """ht_bandwidth_2ghz""";

  /// ```dart
  /// "ht_bandwidth_5ghz"
  /// ```
  String get ht_bandwidth_5ghz => """ht_bandwidth_5ghz""";

  /// ```dart
  /// "vht_bandwidth"
  /// ```
  String get vht_bandwidth => """vht_bandwidth""";

  /// ```dart
  /// "is_aviation"
  /// ```
  String get is_aviation => """is_aviation""";

  /// ```dart
  /// "secure_dns"
  /// ```
  String get secure_dns => """secure_dns""";

  /// ```dart
  /// "ap_mode"
  /// ```
  String get ap_mode => """ap_mode""";

  /// ```dart
  /// "disable_mesh_onboarding"
  /// ```
  String get disable_mesh_onboarding => """disable_mesh_onboarding""";

  /// ```dart
  /// "pin_country_code"
  /// ```
  String get pin_country_code => """pin_country_code""";

  /// ```dart
  /// "custom_power_table"
  /// ```
  String get custom_power_table => """custom_power_table""";

  /// ```dart
  /// "use_public_services"
  /// ```
  String get use_public_services => """use_public_services""";

  /// ```dart
  /// "disable_automated_speedtests"
  /// ```
  String get disable_automated_speedtests => """disable_automated_speedtests""";

  /// ```dart
  /// "channel_5ghz_high"
  /// ```
  String get channel_5ghz_high => """channel_5ghz_high""";

  /// ```dart
  /// "wireless_mode_5ghz_high"
  /// ```
  String get wireless_mode_5ghz_high => """wireless_mode_5ghz_high""";

  /// ```dart
  /// "ht_bandwidth_5ghz_high"
  /// ```
  String get ht_bandwidth_5ghz_high => """ht_bandwidth_5ghz_high""";

  /// ```dart
  /// "vht_bandwidth_5ghz_high"
  /// ```
  String get vht_bandwidth_5ghz_high => """vht_bandwidth_5ghz_high""";

  /// ```dart
  /// "enable_umbilical_vlan"
  /// ```
  String get enable_umbilical_vlan => """enable_umbilical_vlan""";

  /// ```dart
  /// "outdoor_mode"
  /// ```
  String get outdoor_mode => """outdoor_mode""";

  /// ```dart
  /// "disable_2ghz"
  /// ```
  String get disable_2ghz => """disable_2ghz""";

  /// ```dart
  /// "disable_5ghz"
  /// ```
  String get disable_5ghz => """disable_5ghz""";

  /// ```dart
  /// "disable_5ghz_high"
  /// ```
  String get disable_5ghz_high => """disable_5ghz_high""";

  /// ```dart
  /// "disable_x_mesh_backhaul"
  /// ```
  String get disable_x_mesh_backhaul => """disable_x_mesh_backhaul""";

  /// ```dart
  /// "tx_power_level_2ghz"
  /// ```
  String get tx_power_level_2ghz => """tx_power_level_2ghz""";

  /// ```dart
  /// "tx_power_level_5ghz"
  /// ```
  String get tx_power_level_5ghz => """tx_power_level_5ghz""";

  /// ```dart
  /// "tx_power_level_5ghz_high"
  /// ```
  String get tx_power_level_5ghz_high => """tx_power_level_5ghz_high""";
}

class PingMetricsGrpcMessages {
  final GrpcMessages _parent;
  const PingMetricsGrpcMessages(this._parent);

  /// ```dart
  /// "in_unhappy_hour_2s"
  /// ```
  String get in_unhappy_hour_2s => """in_unhappy_hour_2s""";

  /// ```dart
  /// "in_unhappy_hour_5s"
  /// ```
  String get in_unhappy_hour_5s => """in_unhappy_hour_5s""";

  /// ```dart
  /// "drop_rate_5m"
  /// ```
  String get drop_rate_5m => """drop_rate_5m""";

  /// ```dart
  /// "latency_5m"
  /// ```
  String get latency_5m => """latency_5m""";
}

class RxTxStatsGrpcMessages {
  final GrpcMessages _parent;
  const RxTxStatsGrpcMessages(this._parent);

  /// ```dart
  /// "bytes"
  /// ```
  String get bytes => """bytes""";

  /// ```dart
  /// "count_errors"
  /// ```
  String get count_errors => """count_errors""";

  /// ```dart
  /// "nss"
  /// ```
  String get nss => """nss""";

  /// ```dart
  /// "mcs"
  /// ```
  String get mcs => """mcs""";

  /// ```dart
  /// "bandwidth"
  /// ```
  String get bandwidth => """bandwidth""";

  /// ```dart
  /// "guard_ns"
  /// ```
  String get guard_ns => """guard_ns""";

  /// ```dart
  /// "rate_mbps"
  /// ```
  String get rate_mbps => """rate_mbps""";

  /// ```dart
  /// "airtime_fraction_last_1s"
  /// ```
  String get airtime_fraction_last_1s => """airtime_fraction_last_1s""";

  /// ```dart
  /// "sampled_packets"
  /// ```
  String get sampled_packets => """sampled_packets""";

  /// ```dart
  /// "sampled_packets_retried"
  /// ```
  String get sampled_packets_retried => """sampled_packets_retried""";

  /// ```dart
  /// "sampled_packets_dropped"
  /// ```
  String get sampled_packets_dropped => """sampled_packets_dropped""";

  /// ```dart
  /// "phy_mode"
  /// ```
  String get phy_mode => """phy_mode""";

  /// ```dart
  /// "success_bytes"
  /// ```
  String get success_bytes => """success_bytes""";
}

class WifiClientGrpcMessages {
  final GrpcMessages _parent;
  const WifiClientGrpcMessages(this._parent);

  /// ```dart
  /// "name"
  /// ```
  String get name => """name""";

  /// ```dart
  /// "MAC address"
  /// ```
  String get mac_address => """MAC address""";

  /// ```dart
  /// "IP address"
  /// ```
  String get ip_address => """IP address""";

  /// ```dart
  /// "Signal strength"
  /// ```
  String get signal_strength => """Signal strength""";

  /// ```dart
  /// "rx_stats"
  /// ```
  String get rx_stats => """rx_stats""";

  /// ```dart
  /// "tx_stats"
  /// ```
  String get tx_stats => """tx_stats""";

  /// ```dart
  /// "Associated time, s"
  /// ```
  String get associated_time_s => """Associated time, s""";

  /// ```dart
  /// "mode_str"
  /// ```
  String get mode_str => """mode_str""";

  /// ```dart
  /// "Interface"
  /// ```
  String get iface => """Interface""";

  /// ```dart
  /// "Signal to noise"
  /// ```
  String get snr => """Signal to noise""";

  /// ```dart
  /// "psmode"
  /// ```
  String get psmode => """psmode""";

  /// ```dart
  /// "channel_width"
  /// ```
  String get channel_width => """channel_width""";

  /// ```dart
  /// "upstream_mac_address"
  /// ```
  String get upstream_mac_address => """upstream_mac_address""";

  /// ```dart
  /// "Role"
  /// ```
  String get role => """Role""";

  /// ```dart
  /// "device_id"
  /// ```
  String get device_id => """device_id""";

  /// ```dart
  /// "swq_checks"
  /// ```
  String get swq_checks => """swq_checks""";

  /// ```dart
  /// "swq_checks_non_empty"
  /// ```
  String get swq_checks_non_empty => """swq_checks_non_empty""";

  /// ```dart
  /// "mib_steer_state"
  /// ```
  String get mib_steer_state => """mib_steer_state""";

  /// ```dart
  /// "mib_steer_method"
  /// ```
  String get mib_steer_method => """mib_steer_method""";

  /// ```dart
  /// "btm_requests"
  /// ```
  String get btm_requests => """btm_requests""";

  /// ```dart
  /// "btm_requests_success"
  /// ```
  String get btm_requests_success => """btm_requests_success""";

  /// ```dart
  /// "domain"
  /// ```
  String get domain => """domain""";

  /// ```dart
  /// "dot11v_support"
  /// ```
  String get dot11v_support => """dot11v_support""";

  /// ```dart
  /// "iface_name"
  /// ```
  String get iface_name => """iface_name""";

  /// ```dart
  /// "steer_req_success_last_1h"
  /// ```
  String get steer_req_success_last_1h => """steer_req_success_last_1h""";

  /// ```dart
  /// "steer_req_fail_last_1h"
  /// ```
  String get steer_req_fail_last_1h => """steer_req_fail_last_1h""";

  /// ```dart
  /// "steer_req_fail_and_dissoc_last_1h"
  /// ```
  String get steer_req_fail_and_dissoc_last_1h =>
      """steer_req_fail_and_dissoc_last_1h""";

  /// ```dart
  /// "steer_state"
  /// ```
  String get steer_state => """steer_state""";

  /// ```dart
  /// "given_name"
  /// ```
  String get given_name => """given_name""";

  /// ```dart
  /// "hops_from_controller"
  /// ```
  String get hops_from_controller => """hops_from_controller""";

  /// ```dart
  /// "est_tx_rate_mbps_from_controller"
  /// ```
  String get est_tx_rate_mbps_from_controller =>
      """est_tx_rate_mbps_from_controller""";

  /// ```dart
  /// "est_rx_rate_mbps_from_controller"
  /// ```
  String get est_rx_rate_mbps_from_controller =>
      """est_rx_rate_mbps_from_controller""";

  /// ```dart
  /// "hardware_version"
  /// ```
  String get hardware_version => """hardware_version""";

  /// ```dart
  /// "software_version"
  /// ```
  String get software_version => """software_version""";

  /// ```dart
  /// "api_version"
  /// ```
  String get api_version => """api_version""";

  /// ```dart
  /// "ping_metrics"
  /// ```
  String get ping_metrics => """ping_metrics""";

  /// ```dart
  /// "IPv6 addresses"
  /// ```
  String get ipv6_addresses => """IPv6 addresses""";

  /// ```dart
  /// "Received"
  /// ```
  String get x_rx_bytes => """Received""";

  /// ```dart
  /// "Transmitted"
  /// ```
  String get x_tx_bytes => """Transmitted""";
}

class WifiGetStatusGrpcMessages {
  final GrpcMessages _parent;
  const WifiGetStatusGrpcMessages(this._parent);

  /// ```dart
  /// "Captive portal enabled"
  /// ```
  String get captive_portal_enabled => """Captive portal enabled""";

  /// ```dart
  /// "Uptime"
  /// ```
  String get uptime_s => """Uptime""";

  /// ```dart
  /// "WAN IPv4"
  /// ```
  String get ipv4_wan_address => """WAN IPv4""";

  /// ```dart
  /// "Ping drop rate"
  /// ```
  String get ping_drop_rate => """Ping drop rate""";

  /// ```dart
  /// "Ping latency, ms"
  /// ```
  String get ping_latency_ms => """Ping latency, ms""";

  /// ```dart
  /// "Aviation"
  /// ```
  String get is_aviation => """Aviation""";

  /// ```dart
  /// "Dish ping drop rate"
  /// ```
  String get dish_ping_drop_rate => """Dish ping drop rate""";

  /// ```dart
  /// "Dish ping latency, ms"
  /// ```
  String get dish_ping_latency_ms => """Dish ping latency, ms""";

  /// ```dart
  /// "PoP ping drop rate"
  /// ```
  String get pop_ping_drop_rate => """PoP ping drop rate""";

  /// ```dart
  /// "PoP ping latency"
  /// ```
  String get pop_ping_latency_ms => """PoP ping latency""";

  /// ```dart
  /// "Aviation conformed"
  /// ```
  String get is_aviation_conformed => """Aviation conformed""";

  /// ```dart
  /// "WAN IPv6"
  /// ```
  String get ipv6_wan_addresses => """WAN IPv6""";

  /// ```dart
  /// "Dish ping drop rate, 5m"
  /// ```
  String get dish_ping_drop_rate_5m => """Dish ping drop rate, 5m""";

  /// ```dart
  /// "has_client_index"
  /// ```
  String get has_client_index => """has_client_index""";

  /// ```dart
  /// "client_index"
  /// ```
  String get client_index => """client_index""";
}

Map<String, String> get messagesMap => {
  """general.lang""": """English""",
  """general.app_name""": """Star Debug""",
  """general.language""": """Language""",
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
  """general.security""": """Security""",
  """general.device_app""": """Device App""",
  """general.open_json_file""": """Open JSON file""",
  """general.open_clipboard""": """Open JSON from the clipboard""",
  """general.debug_data_viewer""": """Debug Data Viewer""",
  """general.no_data_found""": """No data found""",
  """general.dark_mode""": """Dark mode""",
  """general.online""": """Online""",
  """general.version""": """Version""",
  """general.charts""": """Charts""",
  """general.save_debug_data""": """Save Debug Data""",
  """general.to_clipboard""": """To Clipboard""",
  """general.to_file""": """To File""",
  """general.save_as""": """Save As""",
  """general.share""": """Share""",
  """general.view_in_app""": """View in the app""",
  """general.reboot""": """Reboot""",
  """general.stow""": """Stow""",
  """general.unstow""": """Unstow""",
  """general.inhibit_gps""": """Inhibit GPS""",
  """general.uninhibit_gps""": """Uninhibit GPS""",
  """general.dump_created_time""": """Dump created time""",
  """general.no_alerts""": """No alerts""",
  """general.confirmation""": """Confirmation""",
  """general.just_now""": """Just now""",
  """general.should_not_be_empty""": """Should not be empty""",
  """general.yes""": """yes""",
  """general.no""": """no""",
  """recent.search""": """Search""",
  """recent.no_options""": """No options to show""",
  """my.my_starlinks""": """My Starlinks""",
  """my.snapshots""": """Snapshots""",
  """my.delete_all_dished_prompt""":
      """Do you want to delete data for ALL dishes?""",
  """about.about""": """About""",
  """about.about_starlink_for_ukraine""": """About Narodnyi Starlink""",
  """about.starlink_for_ukraine""": """Narodnyi Starlink""",
  """about.starlink_for_ukraine_in_fb""": """Narodnyi Starlink on Facebook""",
  """about.about_text""":
      """This application was created as part of the volunteer initiative "**Narodnyi Starlink**" for the needs 
of people who care about the availability of communications even in the places where 
the russian aggressor is trying to turn cities into ashes.
""",
  """about.project_on_github""": """Project on GitHub""",
  """settings.settings""": """Settings""",
  """settings.auto_store_dish_log""": """Autostore snapshots""",
  """settings.auto_store_dish_log_sub""":
      """Store snapshots automatically from Starlink Live in My Starlinks""",
  """valkyrie.valkyrie_check""": """Valkyrie Check""",
  """valkyrie.valkyrie_check_sub""":
      """Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie.""",
  """valkyrie.found""": """Found""",
  """valkyrie.not_found""": """Not found""",
  """valkyrie.hint""":
      """Checks whether router BSSID (wireless MAC address) is found in databases from Valkyrie.

The possible options are:

  - **Found** - BSSID is found in the Valkyrie database. It means its location can be exposed online. 
  - **Not found** - BSSID is not found in the Valkyrie database ... at least not yet.   

In any case, it is recommended to change BSSID regularly for security-critical usage. 
If not, it may help to expose the location of connected devices. 
Moreover, in the case of a moving router, its route can be followed.
""",
  """wifi.setup""": """Setup""",
  """wifi.setup_wifi""": """Setup Wifi""",
  """wifi.network_name""": """Network name""",
  """wifi.password""": """Network password""",
  """wifi.skip""": """Skip""",
  """wifi.apply""": """Apply""",
  """wifi.bypass""": """Bypass""",
  """wifi.setup_ssid_and_password""": """Setup SSID and password""",
  """wifi.keep_default_wifi_settings""": """STARLINK/no password""",
  """wifi.enable_bypass_mode""": """Enable bypass mode""",
  """wifi.setup_default""":
      """You have selected to leave the default network name "STARLINK" and no password. Confirm?""",
  """wifi.setup_bypass""":
      """You have selected to enable bypass mode. The router will be not accessible in this mode until the next hardware reset. Confirm?""",
  """wifi.more_8_chars""": """8 chars or more""",
  """live.starlink_live""": """Starlink Live""",
  """live.check_update""": """Check Update""",
  """live.outages""": """Outages""",
  """header.general""": """General""",
  """header.signal""": """Signal""",
  """header.network""": """Network""",
  """header.alerts""": """Alerts""",
  """header.device_info""": """Device Info""",
  """header.config""": """Config""",
  """header.gps_stats""": """GPS Stats""",
  """header.antenna""": """Antenna""",
  """header.ready_states""": """Ready States""",
  """header.init_duration""": """Initialization duration (sec)""",
  """header.networks""": """Networks""",
  """header.boot""": """Boot""",
  """header.client""": """Client""",
  """header.features""": """Features""",
  """header.connected_routers""": """Connected routers""",
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
  """tabs.app.starlink_router_bypass_mode""": """Starlink router bypass mode""",
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
  """grpc.possible_options__hint""": """The possible options are:

- OTHER_OPTIONS
""",
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
- **BOOTING** - Dish is trying to initialize a satellite connection. 
  Should not hang in this state for too long. Most of the time, it is waiting for GPS.
- **STOWED** - The dish is stowed to be packaged for storage.
- **THERMAL_SHUTDOWN** - Dish is overheated. Waiting to cool down.
- **NO_SCHEDULE**
- **NO_SATS** - No enough GPS signal received.
- **OBSTRUCTED** - Too many signal obstructions. Ensure the dish has a 140° view of the sky
  (at least in the part, where it is usually oriented).
- **NO_DOWNLINK** - No downlink from satellites is established.
- OTHER_OPTIONS
""",
  """grpc.DishOutage.start_timestamp_ns""": """Start timestamp, ns""",
  """grpc.DishOutage.duration_ns""": """Duration, ns""",
  """grpc.DishOutage.did_switch""": """Did switch""",
  """grpc.DishGpsStats.gps_valid""": """GPS valid""",
  """grpc.DishGpsStats.gps_sats""": """GPS satellites""",
  """grpc.DishGpsStats.no_sats_after_ttff""":
      """No GPS satellites after a first fix""",
  """grpc.DishGpsStats.inhibit_gps""": """Don't trust Dishy's GPS""",
  """grpc.DishReadyStates.cady""": """Clock generator""",
  """grpc.DishReadyStates.scp""": """RFFE bus interface""",
  """grpc.DishReadyStates.l1l2""": """Modem L1L2""",
  """grpc.DishReadyStates.xphy""": """Xilinx XPHY interface""",
  """grpc.DishReadyStates.aap""": """Digital beamformers""",
  """grpc.DishReadyStates.rf""": """RF front end""",
  """grpc.DishConfig.snow_melt_mode""": """Snow melt mode""",
  """grpc.DishConfig.location_request_mode""": """Location request mode""",
  """grpc.DishConfig.location_request_mode__hint""":
      """The possible options are:
- **NONE** - Starlink does not expose its location to the local network.
- **LOCAL** - Starlink exposes its location to the local network via DHCP and dish API.

In order to change this setting, you need the original Starlink app with a logged-in account 
with internet access and dish access. You can find this setting in 
*Advanced* -> *Debug Data* -> *Allow access on local network*.
""",
  """grpc.DishConfig.level_dish_mode""": """Level dish mode""",
  """grpc.DishConfig.power_save_start_minutes""":
      """Power save start minutes""",
  """grpc.DishConfig.power_save_duration_minutes""":
      """Power save duration minutes""",
  """grpc.DishConfig.power_save_mode""": """Power save mode""",
  """grpc.DishConfig.power_save_mode__hint""":
      """You can set a sleep mode for your Starlink. Starlink won't provide Internet or melt snow while sleeping.""",
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
      """Time the dish has been running since the last reboot.""",
  """grpc.DishGetStatus.seconds_to_first_nonempty_slot""":
      """Seconds to first non-empty slot""",
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
  """grpc.DishGetStatus.downlink_throughput_bps""": """Downlink Throughput""",
  """grpc.DishGetStatus.uplink_throughput_bps""": """Uplink Throughput""",
  """grpc.DishGetStatus.pop_ping_drop_rate""": """PoP ping drop rate""",
  """grpc.DishGetStatus.pop_ping_latency_ms""": """PoP ping latency""",
  """grpc.DishGetStatus.pop_ping__hint""":
      """The Starlink network comprises the following components:
- User Terminals (UT)
- Satellites (SAT)
- Ground Stations (which physically connect with satellites)
- Points of Presence (PoP) (connecting with ground stations via fiber, and routing network traffic to the Internet)

**PoP Ping Latency** refers to the time taken for a packet to be transmitted from the User Terminal to a Point of Presence and back.

**PoP Ping Drop Rate** indicates the fraction of packets lost during transmission between the User Terminal and a Point of Presence.
""",
  """grpc.DishGetStatus.stow_requested""": """Stow requested""",
  """grpc.DishGetStatus.boresight_azimuth_deg""":
      """Panel boresight Azimuth angle, deg""",
  """grpc.DishGetStatus.boresight_elevation_deg""":
      """Panel boresight Elevation angle, deg""",
  """grpc.DishGetStatus.eth_speed_mbps""": """Ethernet speed, Mbps""",
  """grpc.DishGetStatus.mobility_class""": """Mobility class""",
  """grpc.DishGetStatus.mobility_class__hint""": """The possible options are:

- OTHER_OPTIONS
""",
  """grpc.DishGetStatus.is_snr_above_noise_floor""":
      """SNR above the noise floor""",
  """grpc.DishGetStatus.class_of_service""": """Class of service""",
  """grpc.DishGetStatus.software_update_state""": """Software update state""",
  """grpc.DishGetStatus.is_snr_persistently_low""": """SNR persistently low""",
  """grpc.DishGetStatus.has_actuators""": """Actuators""",
  """grpc.DishGetStatus.actuator_state""": """Actuators state""",
  """grpc.DishGetStatus.disablement_code""": """Service state""",
  """grpc.DishGetStatus.disablement_code__hint""": """The possible options are:

- OTHER_OPTIONS
""",
  """grpc.DishGetStatus.reboot_reason""": """Reboot reason""",
  """grpc.DishGetStatus.reboot_reason__hint""": """The possible options are:

- OTHER_OPTIONS
""",
  """grpc.AlignmentStats.has_actuators""": """has_actuators""",
  """grpc.AlignmentStats.actuator_state""": """actuator_state""",
  """grpc.AlignmentStats.tilt_angle_deg""": """tilt_angle_deg""",
  """grpc.AlignmentStats.boresight_azimuth_deg""":
      """Panel boresight Azimuth angle, deg""",
  """grpc.AlignmentStats.boresight_elevation_deg""":
      """Panel boresight Elevation angle, deg""",
  """grpc.AlignmentStats.attitude_estimation_state""":
      """Attitude estimation state""",
  """grpc.AlignmentStats.attitude_uncertainty_deg""":
      """Attitude uncertainty, deg""",
  """grpc.AlignmentStats.desired_boresight_azimuth_deg""":
      """Desired boresight Azimuth angle, deg""",
  """grpc.AlignmentStats.desired_boresight_elevation_deg""":
      """Desired boresight Elevation angle, deg""",
  """grpc.ClientName.mac_address""": """mac_address""",
  """grpc.ClientName.given_name""": """given_name""",
  """grpc.Network.ipv4""": """ipv4""",
  """grpc.Network.client_isolation""": """client_isolation""",
  """grpc.Network.guest""": """guest""",
  """grpc.Network.landing""": """landing""",
  """grpc.Network.domain""": """domain""",
  """grpc.Network.dhcpv4_start""": """dhcpv4_start""",
  """grpc.BasicServiceSet.bssid""": """bssid""",
  """grpc.BasicServiceSet.bssid__hint""":
      """Starlink BSSID originally starts with **74:24:9f**, but due to security concerns, 
starting from approximately January 2023, Starlink routers are able to pick random BSSID on factory reset.
""",
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
  """grpc.WifiConfig.disable_mesh_onboarding""": """disable_mesh_onboarding""",
  """grpc.WifiConfig.pin_country_code""": """pin_country_code""",
  """grpc.WifiConfig.custom_power_table""": """custom_power_table""",
  """grpc.WifiConfig.use_public_services""": """use_public_services""",
  """grpc.WifiConfig.disable_automated_speedtests""":
      """disable_automated_speedtests""",
  """grpc.WifiConfig.channel_5ghz_high""": """channel_5ghz_high""",
  """grpc.WifiConfig.wireless_mode_5ghz_high""": """wireless_mode_5ghz_high""",
  """grpc.WifiConfig.ht_bandwidth_5ghz_high""": """ht_bandwidth_5ghz_high""",
  """grpc.WifiConfig.vht_bandwidth_5ghz_high""": """vht_bandwidth_5ghz_high""",
  """grpc.WifiConfig.enable_umbilical_vlan""": """enable_umbilical_vlan""",
  """grpc.WifiConfig.outdoor_mode""": """outdoor_mode""",
  """grpc.WifiConfig.disable_2ghz""": """disable_2ghz""",
  """grpc.WifiConfig.disable_5ghz""": """disable_5ghz""",
  """grpc.WifiConfig.disable_5ghz_high""": """disable_5ghz_high""",
  """grpc.WifiConfig.disable_x_mesh_backhaul""": """disable_x_mesh_backhaul""",
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
  """grpc.RxTxStats.airtime_fraction_last_1s""": """airtime_fraction_last_1s""",
  """grpc.RxTxStats.sampled_packets""": """sampled_packets""",
  """grpc.RxTxStats.sampled_packets_retried""": """sampled_packets_retried""",
  """grpc.RxTxStats.sampled_packets_dropped""": """sampled_packets_dropped""",
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
  """grpc.WifiClient.snr""": """Signal to noise""",
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
  """grpc.WifiClient.steer_req_fail_last_1h""": """steer_req_fail_last_1h""",
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
  """grpc.WifiGetStatus.captive_portal_enabled""": """Captive portal enabled""",
  """grpc.WifiGetStatus.uptime_s""": """Uptime""",
  """grpc.WifiGetStatus.ipv4_wan_address""": """WAN IPv4""",
  """grpc.WifiGetStatus.ping_drop_rate""": """Ping drop rate""",
  """grpc.WifiGetStatus.ping_latency_ms""": """Ping latency, ms""",
  """grpc.WifiGetStatus.is_aviation""": """Aviation""",
  """grpc.WifiGetStatus.dish_ping_drop_rate""": """Dish ping drop rate""",
  """grpc.WifiGetStatus.dish_ping_latency_ms""": """Dish ping latency, ms""",
  """grpc.WifiGetStatus.pop_ping_drop_rate""": """PoP ping drop rate""",
  """grpc.WifiGetStatus.pop_ping_latency_ms""": """PoP ping latency""",
  """grpc.WifiGetStatus.is_aviation_conformed""": """Aviation conformed""",
  """grpc.WifiGetStatus.ipv6_wan_addresses""": """WAN IPv6""",
  """grpc.WifiGetStatus.dish_ping_drop_rate_5m""":
      """Dish ping drop rate, 5m""",
  """grpc.WifiGetStatus.has_client_index""": """has_client_index""",
  """grpc.WifiGetStatus.client_index""": """client_index""",
};
