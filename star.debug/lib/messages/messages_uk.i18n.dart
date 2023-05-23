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
    };
