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
  LiveMessages get live => LiveMessages(this);
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
}

class LiveMessages {
  final Messages _parent;
  const LiveMessages(this._parent);
  String get starlink_live => """Starlink Live""";
}

class GrpcMessages {
  final Messages _parent;
  const GrpcMessages(this._parent);
  DeviceInfoGrpcMessages get DeviceInfo => DeviceInfoGrpcMessages(this);
  BootInfoGrpcMessages get BootInfo => BootInfoGrpcMessages(this);
  DishAlertsGrpcMessages get DishAlerts => DishAlertsGrpcMessages(this);
  DishOutageGrpcMessages get DishOutage => DishOutageGrpcMessages(this);
  DishGpsStatsGrpcMessages get DishGpsStats => DishGpsStatsGrpcMessages(this);
  DishReadyStatesGrpcMessages get DishReadyStates =>
      DishReadyStatesGrpcMessages(this);
  DishConfigGrpcMessages get DishConfig => DishConfigGrpcMessages(this);
  DishObstructionStatsGrpcMessages get DishObstructionStats =>
      DishObstructionStatsGrpcMessages(this);
  DishGetStatusGrpcMessages get DishGetStatus =>
      DishGetStatusGrpcMessages(this);
}

class DeviceInfoGrpcMessages {
  final GrpcMessages _parent;
  const DeviceInfoGrpcMessages(this._parent);
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

class BootInfoGrpcMessages {
  final GrpcMessages _parent;
  const BootInfoGrpcMessages(this._parent);
  String get _ => """Boot Info""";
  String get count_by_reason => """count_by_reason""";
  String get last_reason => """last_reason""";
  String get last_count => """last_count""";
  String get count_by_reason_delta => """count_by_reason_delta""";
}

class DishAlertsGrpcMessages {
  final GrpcMessages _parent;
  const DishAlertsGrpcMessages(this._parent);
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

class DishOutageGrpcMessages {
  final GrpcMessages _parent;
  const DishOutageGrpcMessages(this._parent);
  String get cause => """Cause""";
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

class DishGetStatusGrpcMessages {
  final GrpcMessages _parent;
  const DishGetStatusGrpcMessages(this._parent);
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
    };
