// GENERATED FILE, do not edit!
// ignore_for_file: annotate_overrides, non_constant_identifier_names, prefer_single_quotes, unused_element, unused_field
import 'package:i18n/i18n.dart' as i18n;
import 'messages.i18n.dart';

String get _languageCode => 'uk';
String _plural(
  int count, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) =>
    i18n.plural(
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
}) =>
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
  RecentMessagesUk get recent => RecentMessagesUk(this);
  MyMessagesUk get my => MyMessagesUk(this);
  AboutMessagesUk get about => AboutMessagesUk(this);
  SettingsMessagesUk get settings => SettingsMessagesUk(this);
  ValkyrieMessagesUk get valkyrie => ValkyrieMessagesUk(this);
  WifiMessagesUk get wifi => WifiMessagesUk(this);
  LiveMessagesUk get live => LiveMessagesUk(this);
  HeaderMessagesUk get header => HeaderMessagesUk(this);
  TabsMessagesUk get tabs => TabsMessagesUk(this);
  OnlineMessagesUk get online => OnlineMessagesUk(this);
  GrpcMessagesUk get grpc => GrpcMessagesUk(this);
}

class GeneralMessagesUk extends GeneralMessages {
  final MessagesUk _parent;
  const GeneralMessagesUk(this._parent) : super(_parent);
  String get lang => """Українська""";
  String get app_name => """Star Debug""";
  String get language => """Мова""";
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
  String get security => """Безпека""";
  String get device_app => """Додаток""";
  String get open_json_file => """Відкрити JSON файл""";
  String get open_clipboard => """Відкрити JSON з буфера обміну""";
  String get debug_data_viewer => """Перегляд Debug Data""";
  String get no_data_found => """Дані не знайдено""";
  String get dark_mode => """Темна схема""";
  String get online => """Онлайн""";
  String get version => """Версія""";
  String get charts => """Графіки""";
  String get save_debug_data => """Зберегти Debug Data""";
  String get to_clipboard => """В буфер обміну""";
  String get to_file => """У файл""";
  String get save_as => """Зберегти як""";
  String get share => """Поділитись""";
  String get view_in_app => """Переглянути у додатку""";
  String get reboot => """Рестарт""";
  String get stow => """Скласти""";
  String get unstow => """Розкласти""";
  String get inhibit_gps => """Ігнорувати GPS""";
  String get uninhibit_gps => """Довіряти GPS""";
  String get dump_created_time => """Час створення дампу""";
  String get no_alerts => """Немає попередженнь""";
  String get confirmation => """Підтвердження""";
  String get just_now => """Щойно""";
  String x_min_ago(t) => """${t}хв тому""";
  String x_hours_ago(t) => """${t}г тому""";
  String x_days_ago(t) => """${t}д тому""";
  String get should_not_be_empty => """Має бути заповненим""";
}

class RecentMessagesUk extends RecentMessages {
  final MessagesUk _parent;
  const RecentMessagesUk(this._parent) : super(_parent);
  String get search => """Пошук""";
  String get no_options => """Пустий список""";
}

class MyMessagesUk extends MyMessages {
  final MessagesUk _parent;
  const MyMessagesUk(this._parent) : super(_parent);
  String get my_starlinks => """Мої Старлінки""";
  String get snapshots => """Знімки""";
  String delete_snapshot_prompt(id, ts) =>
      """Чи бажаєте ви видалити знімок тарілки $id за $ts?""";
  String delete_all_snapshots_but_last_prompt(id) =>
      """Ви бажаєте видалити ВСІ знімки для тарілки $id, крім останнього?""";
  String delete_dish_prompt(id) => """Чи бажаєте ви видалити тарілку $id?""";
  String get delete_all_dished_prompt =>
      """Бажаєте видалити дані ВСІХ тарілок?""";
}

class AboutMessagesUk extends AboutMessages {
  final MessagesUk _parent;
  const AboutMessagesUk(this._parent) : super(_parent);
  String get about => """Про програму""";
  String get about_starlink_for_ukraine => """Про Народний Starlink""";
  String get starlink_for_ukraine => """Народний Starlink""";
  String get starlink_for_ukraine_in_fb => """Народний Starlink у Facebook""";
  String get about_text =>
      """Додаток створений в рамках волонтерської ініціативи "**Народний Starlink**"
для потреб людей, що щодня працюють над тим, щоб зв'язок був доступний навіть в місцях,
які росія намагається перетворити на пустелю.
""";
  String get project_on_github => """Проект на GitHub""";
}

class SettingsMessagesUk extends SettingsMessages {
  final MessagesUk _parent;
  const SettingsMessagesUk(this._parent) : super(_parent);
  String get settings => """Налаштування""";
  String get auto_store_dish_log => """Автозбереження знімків""";
  String get auto_store_dish_log_sub =>
      """Автоматично зберігати знімки з Starlink Live в Мої Старлінки""";
}

class ValkyrieMessagesUk extends ValkyrieMessages {
  final MessagesUk _parent;
  const ValkyrieMessagesUk(this._parent) : super(_parent);
  String get valkyrie_check => """Перевірка від Valkyrie""";
  String get valkyrie_check_sub =>
      """Перевіряє SSID роутера на наявність в базах від Valkyrie""";
  String get found => """Знайдено""";
  String get not_found => """Не знайдено""";
  String get hint =>
      """Перевіряє, чи BSSID (MAC-адреса бездротового інтерфейсу) маршрутизатора знайдена в базах даних від Valkyrie.

Можливі варіанти:

 - **Знайдено** - BSSID знайдена в базі даних Valkyrie. Це означає, що місцезнаходження роутера може бути опубліковане в Інтернеті.
 - **Не знайдено** - BSSID не знайдено в базі даних Valkyrie ... принаймні поки що.

У будь-якому випадку, рекомендовано регулярно змінювати BSSID у роутерів, для яких безпека є важливою.
Якщо цього не робити, можливо, це допоможе виявити місцезнаходження підключених пристроїв.
Крім того, у випадку рухомого маршрутизатора, можна прослідкувати його маршрут.
""";
}

class WifiMessagesUk extends WifiMessages {
  final MessagesUk _parent;
  const WifiMessagesUk(this._parent) : super(_parent);
  String get setup => """Налаштувати""";
  String get setup_wifi => """Налаштувати Wifi""";
  String get network_name => """Назва мережі""";
  String get password => """Пароль""";
  String get skip => """Пропустити""";
  String get apply => """Застосувати""";
  String get bypass => """Bypass""";
  String get setup_ssid_and_password => """Налаштувати SSID та пароль""";
  String get keep_default_wifi_settings => """STARLINK/без пароля""";
  String get enable_bypass_mode => """Увімкнути режим Bypass""";
  String setup_ssid_pass(ssid, pass) =>
      """Ви обрали назву мережі "$ssid" та пароль "$pass". Вірно?""";
  String get setup_default =>
      """Ви вирішили залишити назву мережі за замовчуванням "STARLINK" і без пароля. Вірно?""";
  String get setup_bypass =>
      """Ви обрали активувати mypass mode. Роутер буде недоступний в цьому режимі аж до наступного апаратного скидання. Підтвердити?""";
  String get more_8_chars => """8 символів або більше""";
}

class LiveMessagesUk extends LiveMessages {
  final MessagesUk _parent;
  const LiveMessagesUk(this._parent) : super(_parent);
  String get starlink_live => """Starlink Live""";
  String get check_update => """Перевірити оновлення""";
}

class HeaderMessagesUk extends HeaderMessages {
  final MessagesUk _parent;
  const HeaderMessagesUk(this._parent) : super(_parent);
  String get general => """Загальне""";
  String get signal => """Сигнал""";
  String get network => """Мережа""";
  String get alerts => """Попередження""";
  String get device_info => """Про пристрій""";
  String get config => """Налаштування""";
  String get gps_stats => """GPS""";
  String get antenna => """Антена""";
  String get ready_states => """Готовність модулей""";
  String get networks => """Мережі""";
  String get boot => """Завантаження""";
  String get client => """Клієнт""";
  String get features => """Функції""";
}

class TabsMessagesUk extends TabsMessages {
  final MessagesUk _parent;
  const TabsMessagesUk(this._parent) : super(_parent);
  AppTabsMessagesUk get app => AppTabsMessagesUk(this);
}

class AppTabsMessagesUk extends AppTabsMessages {
  final TabsMessagesUk _parent;
  const AppTabsMessagesUk(this._parent) : super(_parent);
  String get unknown => """Невідомо""";
  String get app_version => """Версія додатку""";
  String get app_environment => """Середовище додатку""";
  String get app_build => """Номер зборки додатку""";
  String get app_hash => """Хеш додатку""";
  String get app_timestamp => """Час додатку""";
  String get platform_os => """Операційна система платформи""";
  String get platform_os_version => """Версія операційної системи""";
  String get device => """Пристрій""";
  String get device_model => """Модель присторю""";
  String get device_id => """ID пристрою""";
  String get device_timestamp => """Час роботи пристрою""";
  String get device_uptime => """IP адреса WiFi""";
  String get wifi_ip_address => """WiFi IP address""";
  String get local_connection_type => """Local connection type""";
  String get local_connection_speed => """Local connection speed""";
  String get is_vpn => """Використовується VPN""";
  String get is_connected => """Підключено""";
  String get internet_available => """Інтернет присутній""";
  String get connected_via_starlink => """З'єднання через Starlink""";
  String get starlink_router_bypass_mode => """Starlink router bypass mode""";
  String get local_ip_address => """Локальна IP адреса""";
  String get gateway_ip_address => """IP адреса шлюзу""";
  String get public_ip_address => """Публічна IP адреса""";
  String get wifi_ssid => """WiFi SSID""";
  String get wifi_bssid => """WiFi BSSID""";
  String get wifi_frequency => """Частота WiFi""";
  String get wifi_signal_strength => """Рівень сигналу WiFi""";
  String get sensors => """Сенсори""";
  String get available => """Доступно""";
  String get active => """Активно""";
}

class OnlineMessagesUk extends OnlineMessages {
  final MessagesUk _parent;
  const OnlineMessagesUk(this._parent) : super(_parent);
  String get internet => """Інтернет""";
  String get starlink_internet => """Інтернет через Starlink""";
}

class GrpcMessagesUk extends GrpcMessages {
  final MessagesUk _parent;
  const GrpcMessagesUk(this._parent) : super(_parent);
  DeviceInfoGrpcMessagesUk get DeviceInfo => DeviceInfoGrpcMessagesUk(this);
  BootInfoGrpcMessagesUk get BootInfo => BootInfoGrpcMessagesUk(this);
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
  AlignmentStatsGrpcMessagesUk get AlignmentStats =>
      AlignmentStatsGrpcMessagesUk(this);
  ClientNameGrpcMessagesUk get ClientName => ClientNameGrpcMessagesUk(this);
  NetworkGrpcMessagesUk get Network => NetworkGrpcMessagesUk(this);
  BasicServiceSetGrpcMessagesUk get BasicServiceSet =>
      BasicServiceSetGrpcMessagesUk(this);
  WifiConfigGrpcMessagesUk get WifiConfig => WifiConfigGrpcMessagesUk(this);
  PingMetricsGrpcMessagesUk get PingMetrics => PingMetricsGrpcMessagesUk(this);
  RxTxStatsGrpcMessagesUk get RxTxStats => RxTxStatsGrpcMessagesUk(this);
  WifiClientGrpcMessagesUk get WifiClient => WifiClientGrpcMessagesUk(this);
  WifiGetStatusGrpcMessagesUk get WifiGetStatus =>
      WifiGetStatusGrpcMessagesUk(this);
}

class DeviceInfoGrpcMessagesUk extends DeviceInfoGrpcMessages {
  final GrpcMessagesUk _parent;
  const DeviceInfoGrpcMessagesUk(this._parent) : super(_parent);
  String get id => """Id""";
  String get hardware_version => """Версія апаратна""";
  String get software_version => """Версія прошивки""";
  String get country_code => """Код країни""";
  String get utc_offset_s => """UTC зміщення, с""";
  String get software_partitions_equal => """Software partitions equal""";
  String get is_dev => """Development hardware""";
  String get bootcount => """Boot count""";
  String get anti_rollback_version => """Anti-Rollback version""";
  String get is_hitl => """is_hitl""";
  String get manufactured_version => """Версія прошивки (з заводу)""";
  String get generation_number => """generation_number""";
  String get dish_cohoused => """Starlink cohoused""";
  String get x_build_date => """Дата прошивки""";
  String get x_timezone => """Часова зона""";
}

class BootInfoGrpcMessagesUk extends BootInfoGrpcMessages {
  final GrpcMessagesUk _parent;
  const BootInfoGrpcMessagesUk(this._parent) : super(_parent);
  String get last_reason => """Остання причина""";
}

class DishOutageGrpcMessagesUk extends DishOutageGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishOutageGrpcMessagesUk(this._parent) : super(_parent);
  String get cause => """Причина""";
  String get cause__hint =>
      """Причина, чому тарілка не на зв'язку. Можливі варіанти:

- **UNKNOWN**
- **BOOTING** - Тарілка намагається ініціалізувати з'єднання з супутниками.
  Не повинно висіти в такому стані занадто довго. Найбільше часу, зазвичай, займає пошук GPS.
- **STOWED** - Тарілка складена для упаковки та зберігання.
- **THERMAL_SHUTDOWN** - Тарілка перегріта. В режимі очікування до зниження температури.
- **NO_SCHEDULE**
- **NO_SATS** - Немає GPS сигналу.
- **OBSTRUCTED** - Забагато перешкод. Переконайтеся, що антена має кут огляду неба 140°
   (принаймні в тій частині, куди вона зазвичай орієнтована).
- **NO_DOWNLINK** - Канал передачі даних з супутників не ініціалізовано.
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

class DishGpsStatsGrpcMessagesUk extends DishGpsStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGpsStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get gps_valid => """GPS дійсний""";
  String get gps_sats => """GPS супутники""";
  String get no_sats_after_ttff => """Немає супутників після першого фіксу""";
  String get inhibit_gps => """Не довіряти GPS""";
}

class DishReadyStatesGrpcMessagesUk extends DishReadyStatesGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishReadyStatesGrpcMessagesUk(this._parent) : super(_parent);
  String get cady => """Тактовий генератор""";
  String get scp => """Інтерфейс шини RFFE""";
  String get l1l2 => """Модем L1L2""";
  String get xphy => """Інтерфейс Xilinx XPHY""";
  String get aap => """Цифрові формувачі променя""";
  String get rf => """RF front end""";
}

class DishConfigGrpcMessagesUk extends DishConfigGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishConfigGrpcMessagesUk(this._parent) : super(_parent);
  String get snow_melt_mode => """Snow melt mode""";
  String get location_request_mode => """Location request mode""";
  String get location_request_mode__hint => """Можливі варіанти:
 - **NONE** - Starlink не публікує своє місцезнаходження в локальну мережу.
 - **LOCAL** - Starlink публікує своє місцезнаходження локальній мережі через DHCP та API.

Щоб змінити це налаштування, вам потрібний оригінальний додаток Starlink з залогіненим обліковим записом,
доступом до Інтернету та доступом до Starlink. Ви можете знайти це налаштування в
*Advanced* -> *Debug Data* -> *Allow access on local network*.
""";
  String get level_dish_mode => """Level dish mode""";
  String get power_save_start_minutes => """Power save start minutes""";
  String get power_save_duration_minutes => """Power save duration minutes""";
  String get power_save_mode => """Power save mode""";
}

class DishObstructionStatsGrpcMessagesUk
    extends DishObstructionStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishObstructionStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get fraction_obstructed => """Частка часу с перешкодами""";
  String get valid_s => """Time valid""";
  String get currently_obstructed => """Є перешкода""";
  String get avg_prolonged_obstruction_duration_s =>
      """Середній час тривалих перешкод""";
  String get avg_prolonged_obstruction_interval_s =>
      """Середній час між тривалими перешкодами""";
  String get avg_prolonged_obstruction_valid =>
      """Average prolonged obstruction valid""";
  String get time_obstructed => """Тривалість перешкоди""";
  String get patches_valid => """Patches valid""";
}

class DishGetStatusGrpcMessagesUk extends DishGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGetStatusGrpcMessagesUk(this._parent) : super(_parent);
  String get uptime_s => """Час після завантаження""";
  String get uptime_s__hint =>
      """Час роботи тарілки від останнього перезавантаження.""";
  String get seconds_to_first_nonempty_slot =>
      """Час до першого непорожнього слота""";
  String get pop_ping_drop_rate => """PoP ping drop rate""";
  String get fraction_obstructed => """Частка часу с перешкодами""";
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
  String get pop_ping_latency_ms => """PoP ping затримка, мс""";
  String get stow_requested => """Складання в процесі""";
  String get boresight_azimuth_deg => """Азимут осі панелі, град""";
  String get boresight_elevation_deg => """Кут підйому панелі, град""";
  String get eth_speed_mbps => """Швидкість Ethernet""";
  String get mobility_class => """Клас мобільності""";
  String get mobility_class__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";
  String get is_snr_above_noise_floor => """SNR вище за рівень шуму""";
  String get class_of_service => """Клас сервісу""";
  String get software_update_state => """Стан оновлення""";
  String get is_snr_persistently_low => """SNR стабільно низький""";
  String get has_actuators => """Наявність приводу""";
  String get actuator_state => """Стан приводів""";
  String get disablement_code => """Стан сервісу""";
  String get disablement_code__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";
}

class AlignmentStatsGrpcMessagesUk extends AlignmentStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const AlignmentStatsGrpcMessagesUk(this._parent) : super(_parent);
  String get has_actuators => """has_actuators""";
  String get actuator_state => """actuator_state""";
  String get tilt_angle_deg => """tilt_angle_deg""";
  String get boresight_azimuth_deg => """Panel boresight Azimuth angle, deg""";
  String get boresight_elevation_deg =>
      """Panel boresight Elevation agngle, deg""";
  String get attitude_estimation_state => """Attitude estimation state""";
  String get attitude_uncertainty_deg => """Attitude uncertainty, deg""";
  String get desired_boresight_azimuth_deg =>
      """Desired boresight Azimuth angle, deg""";
  String get desired_boresight_elevation_deg =>
      """Desired boresight Elevation agngle, deg""";
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
  String get bssid__hint =>
      """Starlink BSSID спочатку починався з **74:24:9f**, але через проблеми з безпекою,
 починаючи приблизно з січня 2023 року, маршрутизатори Starlink можуть обрати випадковий BSSID після скидання до заводських налаштувань.
""";
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
  String get country_code => """Код країни""";
  String get setup_complete => """Налаштування завершено""";
  String get version => """Версія""";
  String get channel_2ghz => """channel_2ghz""";
  String get channel_5ghz => """channel_5ghz""";
  String get is_repeater => """is_repeater""";
  String get boot_count => """Кількість завантаженнь""";
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
  String get mac_address => """MAC адреса""";
  String get ip_address => """IP адреса""";
  String get signal_strength => """Рівень сигналу""";
  String get rx_stats => """rx_stats""";
  String get tx_stats => """tx_stats""";
  String get associated_time_s => """Associated time, s""";
  String get mode_str => """mode_str""";
  String get iface => """Інтерфейс""";
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
  String get ipv6_addresses => """IPv6 адреси""";
  String get x_rx_bytes => """Received""";
  String get x_tx_bytes => """Transmitted""";
}

class WifiGetStatusGrpcMessagesUk extends WifiGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiGetStatusGrpcMessagesUk(this._parent) : super(_parent);
  String get captive_portal_enabled => """Captive portal enabled""";
  String get uptime_s => """Час після завантаження""";
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

Map<String, String> get messagesUkMap => {
      """general.lang""": """Українська""",
      """general.app_name""": """Star Debug""",
      """general.language""": """Мова""",
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
      """general.security""": """Безпека""",
      """general.device_app""": """Додаток""",
      """general.open_json_file""": """Відкрити JSON файл""",
      """general.open_clipboard""": """Відкрити JSON з буфера обміну""",
      """general.debug_data_viewer""": """Перегляд Debug Data""",
      """general.no_data_found""": """Дані не знайдено""",
      """general.dark_mode""": """Темна схема""",
      """general.online""": """Онлайн""",
      """general.version""": """Версія""",
      """general.charts""": """Графіки""",
      """general.save_debug_data""": """Зберегти Debug Data""",
      """general.to_clipboard""": """В буфер обміну""",
      """general.to_file""": """У файл""",
      """general.save_as""": """Зберегти як""",
      """general.share""": """Поділитись""",
      """general.view_in_app""": """Переглянути у додатку""",
      """general.reboot""": """Рестарт""",
      """general.stow""": """Скласти""",
      """general.unstow""": """Розкласти""",
      """general.inhibit_gps""": """Ігнорувати GPS""",
      """general.uninhibit_gps""": """Довіряти GPS""",
      """general.dump_created_time""": """Час створення дампу""",
      """general.no_alerts""": """Немає попередженнь""",
      """general.confirmation""": """Підтвердження""",
      """general.just_now""": """Щойно""",
      """general.should_not_be_empty""": """Має бути заповненим""",
      """recent.search""": """Пошук""",
      """recent.no_options""": """Пустий список""",
      """my.my_starlinks""": """Мої Старлінки""",
      """my.snapshots""": """Знімки""",
      """my.delete_all_dished_prompt""":
          """Бажаєте видалити дані ВСІХ тарілок?""",
      """about.about""": """Про програму""",
      """about.about_starlink_for_ukraine""": """Про Народний Starlink""",
      """about.starlink_for_ukraine""": """Народний Starlink""",
      """about.starlink_for_ukraine_in_fb""":
          """Народний Starlink у Facebook""",
      """about.about_text""":
          """Додаток створений в рамках волонтерської ініціативи "**Народний Starlink**"
для потреб людей, що щодня працюють над тим, щоб зв'язок був доступний навіть в місцях,
які росія намагається перетворити на пустелю.
""",
      """about.project_on_github""": """Проект на GitHub""",
      """settings.settings""": """Налаштування""",
      """settings.auto_store_dish_log""": """Автозбереження знімків""",
      """settings.auto_store_dish_log_sub""":
          """Автоматично зберігати знімки з Starlink Live в Мої Старлінки""",
      """valkyrie.valkyrie_check""": """Перевірка від Valkyrie""",
      """valkyrie.valkyrie_check_sub""":
          """Перевіряє SSID роутера на наявність в базах від Valkyrie""",
      """valkyrie.found""": """Знайдено""",
      """valkyrie.not_found""": """Не знайдено""",
      """valkyrie.hint""":
          """Перевіряє, чи BSSID (MAC-адреса бездротового інтерфейсу) маршрутизатора знайдена в базах даних від Valkyrie.

Можливі варіанти:

 - **Знайдено** - BSSID знайдена в базі даних Valkyrie. Це означає, що місцезнаходження роутера може бути опубліковане в Інтернеті.
 - **Не знайдено** - BSSID не знайдено в базі даних Valkyrie ... принаймні поки що.

У будь-якому випадку, рекомендовано регулярно змінювати BSSID у роутерів, для яких безпека є важливою.
Якщо цього не робити, можливо, це допоможе виявити місцезнаходження підключених пристроїв.
Крім того, у випадку рухомого маршрутизатора, можна прослідкувати його маршрут.
""",
      """wifi.setup""": """Налаштувати""",
      """wifi.setup_wifi""": """Налаштувати Wifi""",
      """wifi.network_name""": """Назва мережі""",
      """wifi.password""": """Пароль""",
      """wifi.skip""": """Пропустити""",
      """wifi.apply""": """Застосувати""",
      """wifi.bypass""": """Bypass""",
      """wifi.setup_ssid_and_password""": """Налаштувати SSID та пароль""",
      """wifi.keep_default_wifi_settings""": """STARLINK/без пароля""",
      """wifi.enable_bypass_mode""": """Увімкнути режим Bypass""",
      """wifi.setup_default""":
          """Ви вирішили залишити назву мережі за замовчуванням "STARLINK" і без пароля. Вірно?""",
      """wifi.setup_bypass""":
          """Ви обрали активувати mypass mode. Роутер буде недоступний в цьому режимі аж до наступного апаратного скидання. Підтвердити?""",
      """wifi.more_8_chars""": """8 символів або більше""",
      """live.starlink_live""": """Starlink Live""",
      """live.check_update""": """Перевірити оновлення""",
      """header.general""": """Загальне""",
      """header.signal""": """Сигнал""",
      """header.network""": """Мережа""",
      """header.alerts""": """Попередження""",
      """header.device_info""": """Про пристрій""",
      """header.config""": """Налаштування""",
      """header.gps_stats""": """GPS""",
      """header.antenna""": """Антена""",
      """header.ready_states""": """Готовність модулей""",
      """header.networks""": """Мережі""",
      """header.boot""": """Завантаження""",
      """header.client""": """Клієнт""",
      """header.features""": """Функції""",
      """tabs.app.unknown""": """Невідомо""",
      """tabs.app.app_version""": """Версія додатку""",
      """tabs.app.app_environment""": """Середовище додатку""",
      """tabs.app.app_build""": """Номер зборки додатку""",
      """tabs.app.app_hash""": """Хеш додатку""",
      """tabs.app.app_timestamp""": """Час додатку""",
      """tabs.app.platform_os""": """Операційна система платформи""",
      """tabs.app.platform_os_version""": """Версія операційної системи""",
      """tabs.app.device""": """Пристрій""",
      """tabs.app.device_model""": """Модель присторю""",
      """tabs.app.device_id""": """ID пристрою""",
      """tabs.app.device_timestamp""": """Час роботи пристрою""",
      """tabs.app.device_uptime""": """IP адреса WiFi""",
      """tabs.app.wifi_ip_address""": """WiFi IP address""",
      """tabs.app.local_connection_type""": """Local connection type""",
      """tabs.app.local_connection_speed""": """Local connection speed""",
      """tabs.app.is_vpn""": """Використовується VPN""",
      """tabs.app.is_connected""": """Підключено""",
      """tabs.app.internet_available""": """Інтернет присутній""",
      """tabs.app.connected_via_starlink""": """З'єднання через Starlink""",
      """tabs.app.starlink_router_bypass_mode""":
          """Starlink router bypass mode""",
      """tabs.app.local_ip_address""": """Локальна IP адреса""",
      """tabs.app.gateway_ip_address""": """IP адреса шлюзу""",
      """tabs.app.public_ip_address""": """Публічна IP адреса""",
      """tabs.app.wifi_ssid""": """WiFi SSID""",
      """tabs.app.wifi_bssid""": """WiFi BSSID""",
      """tabs.app.wifi_frequency""": """Частота WiFi""",
      """tabs.app.wifi_signal_strength""": """Рівень сигналу WiFi""",
      """tabs.app.sensors""": """Сенсори""",
      """tabs.app.available""": """Доступно""",
      """tabs.app.active""": """Активно""",
      """online.internet""": """Інтернет""",
      """online.starlink_internet""": """Інтернет через Starlink""",
      """grpc.DeviceInfo.id""": """Id""",
      """grpc.DeviceInfo.hardware_version""": """Версія апаратна""",
      """grpc.DeviceInfo.software_version""": """Версія прошивки""",
      """grpc.DeviceInfo.country_code""": """Код країни""",
      """grpc.DeviceInfo.utc_offset_s""": """UTC зміщення, с""",
      """grpc.DeviceInfo.software_partitions_equal""":
          """Software partitions equal""",
      """grpc.DeviceInfo.is_dev""": """Development hardware""",
      """grpc.DeviceInfo.bootcount""": """Boot count""",
      """grpc.DeviceInfo.anti_rollback_version""": """Anti-Rollback version""",
      """grpc.DeviceInfo.is_hitl""": """is_hitl""",
      """grpc.DeviceInfo.manufactured_version""":
          """Версія прошивки (з заводу)""",
      """grpc.DeviceInfo.generation_number""": """generation_number""",
      """grpc.DeviceInfo.dish_cohoused""": """Starlink cohoused""",
      """grpc.DeviceInfo.x_build_date""": """Дата прошивки""",
      """grpc.DeviceInfo.x_timezone""": """Часова зона""",
      """grpc.BootInfo.last_reason""": """Остання причина""",
      """grpc.DishOutage.cause""": """Причина""",
      """grpc.DishOutage.cause__hint""":
          """Причина, чому тарілка не на зв'язку. Можливі варіанти:

- **UNKNOWN**
- **BOOTING** - Тарілка намагається ініціалізувати з'єднання з супутниками.
  Не повинно висіти в такому стані занадто довго. Найбільше часу, зазвичай, займає пошук GPS.
- **STOWED** - Тарілка складена для упаковки та зберігання.
- **THERMAL_SHUTDOWN** - Тарілка перегріта. В режимі очікування до зниження температури.
- **NO_SCHEDULE**
- **NO_SATS** - Немає GPS сигналу.
- **OBSTRUCTED** - Забагато перешкод. Переконайтеся, що антена має кут огляду неба 140°
   (принаймні в тій частині, куди вона зазвичай орієнтована).
- **NO_DOWNLINK** - Канал передачі даних з супутників не ініціалізовано.
- **NO_PINGS**
- **ACTUATOR_ACTIVITY**
- **CABLE_TEST**
- **SLEEPING**
- **MOVING_WHILE_NOT_ALLOWED**
""",
      """grpc.DishOutage.start_timestamp_ns""": """Start timestamp, ns""",
      """grpc.DishOutage.duration_ns""": """Duration, ns""",
      """grpc.DishOutage.did_switch""": """Did switch""",
      """grpc.DishGpsStats.gps_valid""": """GPS дійсний""",
      """grpc.DishGpsStats.gps_sats""": """GPS супутники""",
      """grpc.DishGpsStats.no_sats_after_ttff""":
          """Немає супутників після першого фіксу""",
      """grpc.DishGpsStats.inhibit_gps""": """Не довіряти GPS""",
      """grpc.DishReadyStates.cady""": """Тактовий генератор""",
      """grpc.DishReadyStates.scp""": """Інтерфейс шини RFFE""",
      """grpc.DishReadyStates.l1l2""": """Модем L1L2""",
      """grpc.DishReadyStates.xphy""": """Інтерфейс Xilinx XPHY""",
      """grpc.DishReadyStates.aap""": """Цифрові формувачі променя""",
      """grpc.DishReadyStates.rf""": """RF front end""",
      """grpc.DishConfig.snow_melt_mode""": """Snow melt mode""",
      """grpc.DishConfig.location_request_mode""": """Location request mode""",
      """grpc.DishConfig.location_request_mode__hint""": """Можливі варіанти:
 - **NONE** - Starlink не публікує своє місцезнаходження в локальну мережу.
 - **LOCAL** - Starlink публікує своє місцезнаходження локальній мережі через DHCP та API.

Щоб змінити це налаштування, вам потрібний оригінальний додаток Starlink з залогіненим обліковим записом,
доступом до Інтернету та доступом до Starlink. Ви можете знайти це налаштування в
*Advanced* -> *Debug Data* -> *Allow access on local network*.
""",
      """grpc.DishConfig.level_dish_mode""": """Level dish mode""",
      """grpc.DishConfig.power_save_start_minutes""":
          """Power save start minutes""",
      """grpc.DishConfig.power_save_duration_minutes""":
          """Power save duration minutes""",
      """grpc.DishConfig.power_save_mode""": """Power save mode""",
      """grpc.DishObstructionStats.fraction_obstructed""":
          """Частка часу с перешкодами""",
      """grpc.DishObstructionStats.valid_s""": """Time valid""",
      """grpc.DishObstructionStats.currently_obstructed""": """Є перешкода""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_duration_s""":
          """Середній час тривалих перешкод""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_interval_s""":
          """Середній час між тривалими перешкодами""",
      """grpc.DishObstructionStats.avg_prolonged_obstruction_valid""":
          """Average prolonged obstruction valid""",
      """grpc.DishObstructionStats.time_obstructed""":
          """Тривалість перешкоди""",
      """grpc.DishObstructionStats.patches_valid""": """Patches valid""",
      """grpc.DishGetStatus.uptime_s""": """Час після завантаження""",
      """grpc.DishGetStatus.uptime_s__hint""":
          """Час роботи тарілки від останнього перезавантаження.""",
      """grpc.DishGetStatus.seconds_to_first_nonempty_slot""":
          """Час до першого непорожнього слота""",
      """grpc.DishGetStatus.pop_ping_drop_rate""": """PoP ping drop rate""",
      """grpc.DishGetStatus.fraction_obstructed""":
          """Частка часу с перешкодами""",
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
      """grpc.DishGetStatus.pop_ping_latency_ms""": """PoP ping затримка, мс""",
      """grpc.DishGetStatus.stow_requested""": """Складання в процесі""",
      """grpc.DishGetStatus.boresight_azimuth_deg""":
          """Азимут осі панелі, град""",
      """grpc.DishGetStatus.boresight_elevation_deg""":
          """Кут підйому панелі, град""",
      """grpc.DishGetStatus.eth_speed_mbps""": """Швидкість Ethernet""",
      """grpc.DishGetStatus.mobility_class""": """Клас мобільності""",
      """grpc.DishGetStatus.mobility_class__hint""": """Можливі варіанти:

- OTHER_OPTIONS
""",
      """grpc.DishGetStatus.is_snr_above_noise_floor""":
          """SNR вище за рівень шуму""",
      """grpc.DishGetStatus.class_of_service""": """Клас сервісу""",
      """grpc.DishGetStatus.software_update_state""": """Стан оновлення""",
      """grpc.DishGetStatus.is_snr_persistently_low""":
          """SNR стабільно низький""",
      """grpc.DishGetStatus.has_actuators""": """Наявність приводу""",
      """grpc.DishGetStatus.actuator_state""": """Стан приводів""",
      """grpc.DishGetStatus.disablement_code""": """Стан сервісу""",
      """grpc.DishGetStatus.disablement_code__hint""": """Можливі варіанти:

- OTHER_OPTIONS
""",
      """grpc.AlignmentStats.has_actuators""": """has_actuators""",
      """grpc.AlignmentStats.actuator_state""": """actuator_state""",
      """grpc.AlignmentStats.tilt_angle_deg""": """tilt_angle_deg""",
      """grpc.AlignmentStats.boresight_azimuth_deg""":
          """Panel boresight Azimuth angle, deg""",
      """grpc.AlignmentStats.boresight_elevation_deg""":
          """Panel boresight Elevation agngle, deg""",
      """grpc.AlignmentStats.attitude_estimation_state""":
          """Attitude estimation state""",
      """grpc.AlignmentStats.attitude_uncertainty_deg""":
          """Attitude uncertainty, deg""",
      """grpc.AlignmentStats.desired_boresight_azimuth_deg""":
          """Desired boresight Azimuth angle, deg""",
      """grpc.AlignmentStats.desired_boresight_elevation_deg""":
          """Desired boresight Elevation agngle, deg""",
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
          """Starlink BSSID спочатку починався з **74:24:9f**, але через проблеми з безпекою,
 починаючи приблизно з січня 2023 року, маршрутизатори Starlink можуть обрати випадковий BSSID після скидання до заводських налаштувань.
""",
      """grpc.BasicServiceSet.ssid""": """ssid""",
      """grpc.BasicServiceSet.band""": """band""",
      """grpc.BasicServiceSet.disable""": """disable""",
      """grpc.BasicServiceSet.hidden""": """hidden""",
      """grpc.BasicServiceSet.iface_name""": """iface_name""",
      """grpc.BasicServiceSet.auth""": """auth""",
      """grpc.WifiConfig.country_code""": """Код країни""",
      """grpc.WifiConfig.setup_complete""": """Налаштування завершено""",
      """grpc.WifiConfig.version""": """Версія""",
      """grpc.WifiConfig.channel_2ghz""": """channel_2ghz""",
      """grpc.WifiConfig.channel_5ghz""": """channel_5ghz""",
      """grpc.WifiConfig.is_repeater""": """is_repeater""",
      """grpc.WifiConfig.boot_count""": """Кількість завантаженнь""",
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
      """grpc.WifiClient.mac_address""": """MAC адреса""",
      """grpc.WifiClient.ip_address""": """IP адреса""",
      """grpc.WifiClient.signal_strength""": """Рівень сигналу""",
      """grpc.WifiClient.rx_stats""": """rx_stats""",
      """grpc.WifiClient.tx_stats""": """tx_stats""",
      """grpc.WifiClient.associated_time_s""": """Associated time, s""",
      """grpc.WifiClient.mode_str""": """mode_str""",
      """grpc.WifiClient.iface""": """Інтерфейс""",
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
      """grpc.WifiClient.ipv6_addresses""": """IPv6 адреси""",
      """grpc.WifiClient.x_rx_bytes""": """Received""",
      """grpc.WifiClient.x_tx_bytes""": """Transmitted""",
      """grpc.WifiGetStatus.captive_portal_enabled""":
          """Captive portal enabled""",
      """grpc.WifiGetStatus.uptime_s""": """Час після завантаження""",
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
