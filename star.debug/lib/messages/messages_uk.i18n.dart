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

  /// ```dart
  /// "Українська"
  /// ```
  String get lang => """Українська""";

  /// ```dart
  /// "Star Debug"
  /// ```
  String get app_name => """Star Debug""";

  /// ```dart
  /// "Мова"
  /// ```
  String get language => """Мова""";

  /// ```dart
  /// "Закрити"
  /// ```
  String get close => """Закрити""";

  /// ```dart
  /// "Скасувати"
  /// ```
  String get cancel => """Скасувати""";

  /// ```dart
  /// "Далі"
  /// ```
  String get next => """Далі""";

  /// ```dart
  /// "Назад"
  /// ```
  String get back => """Назад""";

  /// ```dart
  /// "Зберегти"
  /// ```
  String get save => """Зберегти""";

  /// ```dart
  /// "Немає змін"
  /// ```
  String get no_changes => """Немає змін""";

  /// ```dart
  /// "Повторити"
  /// ```
  String get try_again => """Повторити""";

  /// ```dart
  /// "Завантаження ..."
  /// ```
  String get loading => """Завантаження ...""";

  /// ```dart
  /// "Помилка завантаження"
  /// ```
  String get loading_error => """Помилка завантаження""";

  /// ```dart
  /// "Виникла помилка"
  /// ```
  String get error_occured => """Виникла помилка""";

  /// ```dart
  /// "Оновити"
  /// ```
  String get refresh => """Оновити""";

  /// ```dart
  /// "Скопійовано в буфер обміну"
  /// ```
  String get copied_to_clipboard => """Скопійовано в буфер обміну""";

  /// ```dart
  /// "Підтвердити"
  /// ```
  String get confirm => """Підтвердити""";

  /// ```dart
  /// "Відхилити"
  /// ```
  String get reject => """Відхилити""";

  /// ```dart
  /// "Пустий список"
  /// ```
  String get no_items => """Пустий список""";

  /// ```dart
  /// "Зрозуміло"
  /// ```
  String get got_it => """Зрозуміло""";

  /// ```dart
  /// "OK"
  /// ```
  String get ok => """OK""";

  /// ```dart
  /// "Оберіть мову"
  /// ```
  String get select_lang => """Оберіть мову""";

  /// ```dart
  /// "Змінити мову"
  /// ```
  String get change_language => """Змінити мову""";

  /// ```dart
  /// "Тарілка"
  /// ```
  String get dish => """Тарілка""";

  /// ```dart
  /// "Роутер"
  /// ```
  String get router => """Роутер""";

  /// ```dart
  /// "Безпека"
  /// ```
  String get security => """Безпека""";

  /// ```dart
  /// "Додаток"
  /// ```
  String get device_app => """Додаток""";

  /// ```dart
  /// "Відкрити JSON файл"
  /// ```
  String get open_json_file => """Відкрити JSON файл""";

  /// ```dart
  /// "Відкрити JSON з буфера обміну"
  /// ```
  String get open_clipboard => """Відкрити JSON з буфера обміну""";

  /// ```dart
  /// "Перегляд Debug Data"
  /// ```
  String get debug_data_viewer => """Перегляд Debug Data""";

  /// ```dart
  /// "Дані не знайдено"
  /// ```
  String get no_data_found => """Дані не знайдено""";

  /// ```dart
  /// "Темна схема"
  /// ```
  String get dark_mode => """Темна схема""";

  /// ```dart
  /// "Онлайн"
  /// ```
  String get online => """Онлайн""";

  /// ```dart
  /// "Версія"
  /// ```
  String get version => """Версія""";

  /// ```dart
  /// "Графіки"
  /// ```
  String get charts => """Графіки""";

  /// ```dart
  /// "Зберегти Debug Data"
  /// ```
  String get save_debug_data => """Зберегти Debug Data""";

  /// ```dart
  /// "В буфер обміну"
  /// ```
  String get to_clipboard => """В буфер обміну""";

  /// ```dart
  /// "У файл"
  /// ```
  String get to_file => """У файл""";

  /// ```dart
  /// "Зберегти як"
  /// ```
  String get save_as => """Зберегти як""";

  /// ```dart
  /// "Поділитись"
  /// ```
  String get share => """Поділитись""";

  /// ```dart
  /// "Переглянути у додатку"
  /// ```
  String get view_in_app => """Переглянути у додатку""";

  /// ```dart
  /// "Рестарт"
  /// ```
  String get reboot => """Рестарт""";

  /// ```dart
  /// "Скласти"
  /// ```
  String get stow => """Скласти""";

  /// ```dart
  /// "Розкласти"
  /// ```
  String get unstow => """Розкласти""";

  /// ```dart
  /// "Ігнорувати GPS"
  /// ```
  String get inhibit_gps => """Ігнорувати GPS""";

  /// ```dart
  /// "Довіряти GPS"
  /// ```
  String get uninhibit_gps => """Довіряти GPS""";

  /// ```dart
  /// "Час створення дампу"
  /// ```
  String get dump_created_time => """Час створення дампу""";

  /// ```dart
  /// "Немає попередженнь"
  /// ```
  String get no_alerts => """Немає попередженнь""";

  /// ```dart
  /// "Підтвердження"
  /// ```
  String get confirmation => """Підтвердження""";

  /// ```dart
  /// "Щойно"
  /// ```
  String get just_now => """Щойно""";

  /// ```dart
  /// "${t}хв тому"
  /// ```
  String x_min_ago(t) => """${t}хв тому""";

  /// ```dart
  /// "${t}г тому"
  /// ```
  String x_hours_ago(t) => """${t}г тому""";

  /// ```dart
  /// "${t}д тому"
  /// ```
  String x_days_ago(t) => """${t}д тому""";

  /// ```dart
  /// "Має бути заповненим"
  /// ```
  String get should_not_be_empty => """Має бути заповненим""";

  /// ```dart
  /// "так"
  /// ```
  String get yes => """так""";

  /// ```dart
  /// "ні"
  /// ```
  String get no => """ні""";
}

class RecentMessagesUk extends RecentMessages {
  final MessagesUk _parent;
  const RecentMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Пошук"
  /// ```
  String get search => """Пошук""";

  /// ```dart
  /// "Пустий список"
  /// ```
  String get no_options => """Пустий список""";
}

class MyMessagesUk extends MyMessages {
  final MessagesUk _parent;
  const MyMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Мої Старлінки"
  /// ```
  String get my_starlinks => """Мої Старлінки""";

  /// ```dart
  /// "Знімки"
  /// ```
  String get snapshots => """Знімки""";

  /// ```dart
  /// "Чи бажаєте ви видалити знімок тарілки $id за $ts?"
  /// ```
  String delete_snapshot_prompt(id, ts) =>
      """Чи бажаєте ви видалити знімок тарілки $id за $ts?""";

  /// ```dart
  /// "Ви бажаєте видалити ВСІ знімки для тарілки $id, крім останнього?"
  /// ```
  String delete_all_snapshots_but_last_prompt(id) =>
      """Ви бажаєте видалити ВСІ знімки для тарілки $id, крім останнього?""";

  /// ```dart
  /// "Чи бажаєте ви видалити тарілку $id?"
  /// ```
  String delete_dish_prompt(id) => """Чи бажаєте ви видалити тарілку $id?""";

  /// ```dart
  /// "Бажаєте видалити дані ВСІХ тарілок?"
  /// ```
  String get delete_all_dished_prompt =>
      """Бажаєте видалити дані ВСІХ тарілок?""";
}

class AboutMessagesUk extends AboutMessages {
  final MessagesUk _parent;
  const AboutMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Про програму"
  /// ```
  String get about => """Про програму""";

  /// ```dart
  /// "Про Народний Starlink"
  /// ```
  String get about_starlink_for_ukraine => """Про Народний Starlink""";

  /// ```dart
  /// "Народний Starlink"
  /// ```
  String get starlink_for_ukraine => """Народний Starlink""";

  /// ```dart
  /// "Народний Starlink у Facebook"
  /// ```
  String get starlink_for_ukraine_in_fb => """Народний Starlink у Facebook""";

  /// ```dart
  /// """
  /// Додаток створений в рамках волонтерської ініціативи "**Народний Starlink**"
  /// для потреб людей, що щодня працюють над тим, щоб зв'язок був доступний навіть в місцях,
  /// які росія намагається перетворити на пустелю.
  /// """
  /// ```
  String get about_text =>
      """Додаток створений в рамках волонтерської ініціативи "**Народний Starlink**"
для потреб людей, що щодня працюють над тим, щоб зв'язок був доступний навіть в місцях,
які росія намагається перетворити на пустелю.
""";

  /// ```dart
  /// "Проект на GitHub"
  /// ```
  String get project_on_github => """Проект на GitHub""";
}

class SettingsMessagesUk extends SettingsMessages {
  final MessagesUk _parent;
  const SettingsMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Налаштування"
  /// ```
  String get settings => """Налаштування""";

  /// ```dart
  /// "Автозбереження знімків"
  /// ```
  String get auto_store_dish_log => """Автозбереження знімків""";

  /// ```dart
  /// "Автоматично зберігати знімки з Starlink Live в Мої Старлінки"
  /// ```
  String get auto_store_dish_log_sub =>
      """Автоматично зберігати знімки з Starlink Live в Мої Старлінки""";
}

class ValkyrieMessagesUk extends ValkyrieMessages {
  final MessagesUk _parent;
  const ValkyrieMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Перевірка від Valkyrie"
  /// ```
  String get valkyrie_check => """Перевірка від Valkyrie""";

  /// ```dart
  /// "Перевіряє SSID роутера на наявність в базах від Valkyrie"
  /// ```
  String get valkyrie_check_sub =>
      """Перевіряє SSID роутера на наявність в базах від Valkyrie""";

  /// ```dart
  /// "Знайдено"
  /// ```
  String get found => """Знайдено""";

  /// ```dart
  /// "Не знайдено"
  /// ```
  String get not_found => """Не знайдено""";

  /// ```dart
  /// """
  /// Перевіряє, чи BSSID (MAC-адреса бездротового інтерфейсу) маршрутизатора знайдена в базах даних від Valkyrie.
  ///
  /// Можливі варіанти:
  ///
  ///  - **Знайдено** - BSSID знайдена в базі даних Valkyrie. Це означає, що місцезнаходження роутера може бути опубліковане в Інтернеті.
  ///  - **Не знайдено** - BSSID не знайдено в базі даних Valkyrie ... принаймні поки що.
  ///
  /// У будь-якому випадку, рекомендовано регулярно змінювати BSSID у роутерів, для яких безпека є важливою.
  /// Якщо цього не робити, можливо, це допоможе виявити місцезнаходження підключених пристроїв.
  /// Крім того, у випадку рухомого маршрутизатора, можна прослідкувати його маршрут.
  /// """
  /// ```
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

  /// ```dart
  /// "Налаштувати"
  /// ```
  String get setup => """Налаштувати""";

  /// ```dart
  /// "Налаштувати Wifi"
  /// ```
  String get setup_wifi => """Налаштувати Wifi""";

  /// ```dart
  /// "Назва мережі"
  /// ```
  String get network_name => """Назва мережі""";

  /// ```dart
  /// "Пароль"
  /// ```
  String get password => """Пароль""";

  /// ```dart
  /// "Пропустити"
  /// ```
  String get skip => """Пропустити""";

  /// ```dart
  /// "Застосувати"
  /// ```
  String get apply => """Застосувати""";

  /// ```dart
  /// "Bypass"
  /// ```
  String get bypass => """Bypass""";

  /// ```dart
  /// "Налаштувати SSID та пароль"
  /// ```
  String get setup_ssid_and_password => """Налаштувати SSID та пароль""";

  /// ```dart
  /// "STARLINK/без пароля"
  /// ```
  String get keep_default_wifi_settings => """STARLINK/без пароля""";

  /// ```dart
  /// "Увімкнути режим Bypass"
  /// ```
  String get enable_bypass_mode => """Увімкнути режим Bypass""";

  /// ```dart
  /// "Ви обрали назву мережі "$ssid" та пароль "$pass". Вірно?"
  /// ```
  String setup_ssid_pass(ssid, pass) =>
      """Ви обрали назву мережі "$ssid" та пароль "$pass". Вірно?""";

  /// ```dart
  /// "Ви вирішили залишити назву мережі за замовчуванням "STARLINK" і без пароля. Вірно?"
  /// ```
  String get setup_default =>
      """Ви вирішили залишити назву мережі за замовчуванням "STARLINK" і без пароля. Вірно?""";

  /// ```dart
  /// "Ви обрали активувати mypass mode. Роутер буде недоступний в цьому режимі аж до наступного апаратного скидання. Підтвердити?"
  /// ```
  String get setup_bypass =>
      """Ви обрали активувати mypass mode. Роутер буде недоступний в цьому режимі аж до наступного апаратного скидання. Підтвердити?""";

  /// ```dart
  /// "8 символів або більше"
  /// ```
  String get more_8_chars => """8 символів або більше""";
}

class LiveMessagesUk extends LiveMessages {
  final MessagesUk _parent;
  const LiveMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Starlink Live"
  /// ```
  String get starlink_live => """Starlink Live""";

  /// ```dart
  /// "Перевірити оновлення"
  /// ```
  String get check_update => """Перевірити оновлення""";

  /// ```dart
  /// "Відключення"
  /// ```
  String get outages => """Відключення""";

  /// ```dart
  /// "... $n записів попереду ..."
  /// ```
  String n_records_before(n) => """... $n записів попереду ...""";
}

class HeaderMessagesUk extends HeaderMessages {
  final MessagesUk _parent;
  const HeaderMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Загальне"
  /// ```
  String get general => """Загальне""";

  /// ```dart
  /// "Сигнал"
  /// ```
  String get signal => """Сигнал""";

  /// ```dart
  /// "Мережа"
  /// ```
  String get network => """Мережа""";

  /// ```dart
  /// "Попередження"
  /// ```
  String get alerts => """Попередження""";

  /// ```dart
  /// "Про пристрій"
  /// ```
  String get device_info => """Про пристрій""";

  /// ```dart
  /// "Налаштування"
  /// ```
  String get config => """Налаштування""";

  /// ```dart
  /// "GPS"
  /// ```
  String get gps_stats => """GPS""";

  /// ```dart
  /// "Антена"
  /// ```
  String get antenna => """Антена""";

  /// ```dart
  /// "Готовність модулів"
  /// ```
  String get ready_states => """Готовність модулів""";

  /// ```dart
  /// "Час ініціалізації (сек)"
  /// ```
  String get init_duration => """Час ініціалізації (сек)""";

  /// ```dart
  /// "Мережі"
  /// ```
  String get networks => """Мережі""";

  /// ```dart
  /// "Завантаження"
  /// ```
  String get boot => """Завантаження""";

  /// ```dart
  /// "Клієнт"
  /// ```
  String get client => """Клієнт""";

  /// ```dart
  /// "Функції"
  /// ```
  String get features => """Функції""";

  /// ```dart
  /// "Під'єднані роутери"
  /// ```
  String get connected_routers => """Під'єднані роутери""";
}

class TabsMessagesUk extends TabsMessages {
  final MessagesUk _parent;
  const TabsMessagesUk(this._parent) : super(_parent);
  AppTabsMessagesUk get app => AppTabsMessagesUk(this);
}

class AppTabsMessagesUk extends AppTabsMessages {
  final TabsMessagesUk _parent;
  const AppTabsMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Невідомо"
  /// ```
  String get unknown => """Невідомо""";

  /// ```dart
  /// "Версія додатку"
  /// ```
  String get app_version => """Версія додатку""";

  /// ```dart
  /// "Середовище додатку"
  /// ```
  String get app_environment => """Середовище додатку""";

  /// ```dart
  /// "Номер зборки додатку"
  /// ```
  String get app_build => """Номер зборки додатку""";

  /// ```dart
  /// "Хеш додатку"
  /// ```
  String get app_hash => """Хеш додатку""";

  /// ```dart
  /// "Час додатку"
  /// ```
  String get app_timestamp => """Час додатку""";

  /// ```dart
  /// "Операційна система платформи"
  /// ```
  String get platform_os => """Операційна система платформи""";

  /// ```dart
  /// "Версія операційної системи"
  /// ```
  String get platform_os_version => """Версія операційної системи""";

  /// ```dart
  /// "Пристрій"
  /// ```
  String get device => """Пристрій""";

  /// ```dart
  /// "Модель присторю"
  /// ```
  String get device_model => """Модель присторю""";

  /// ```dart
  /// "ID пристрою"
  /// ```
  String get device_id => """ID пристрою""";

  /// ```dart
  /// "Час роботи пристрою"
  /// ```
  String get device_timestamp => """Час роботи пристрою""";

  /// ```dart
  /// "IP адреса WiFi"
  /// ```
  String get device_uptime => """IP адреса WiFi""";

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
  /// "Використовується VPN"
  /// ```
  String get is_vpn => """Використовується VPN""";

  /// ```dart
  /// "Підключено"
  /// ```
  String get is_connected => """Підключено""";

  /// ```dart
  /// "Інтернет присутній"
  /// ```
  String get internet_available => """Інтернет присутній""";

  /// ```dart
  /// "З'єднання через Starlink"
  /// ```
  String get connected_via_starlink => """З'єднання через Starlink""";

  /// ```dart
  /// "Starlink router bypass mode"
  /// ```
  String get starlink_router_bypass_mode => """Starlink router bypass mode""";

  /// ```dart
  /// "Локальна IP адреса"
  /// ```
  String get local_ip_address => """Локальна IP адреса""";

  /// ```dart
  /// "IP адреса шлюзу"
  /// ```
  String get gateway_ip_address => """IP адреса шлюзу""";

  /// ```dart
  /// "Публічна IP адреса"
  /// ```
  String get public_ip_address => """Публічна IP адреса""";

  /// ```dart
  /// "WiFi SSID"
  /// ```
  String get wifi_ssid => """WiFi SSID""";

  /// ```dart
  /// "WiFi BSSID"
  /// ```
  String get wifi_bssid => """WiFi BSSID""";

  /// ```dart
  /// "Частота WiFi"
  /// ```
  String get wifi_frequency => """Частота WiFi""";

  /// ```dart
  /// "Рівень сигналу WiFi"
  /// ```
  String get wifi_signal_strength => """Рівень сигналу WiFi""";

  /// ```dart
  /// "Сенсори"
  /// ```
  String get sensors => """Сенсори""";

  /// ```dart
  /// "Доступно"
  /// ```
  String get available => """Доступно""";

  /// ```dart
  /// "Активно"
  /// ```
  String get active => """Активно""";
}

class OnlineMessagesUk extends OnlineMessages {
  final MessagesUk _parent;
  const OnlineMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Інтернет"
  /// ```
  String get internet => """Інтернет""";

  /// ```dart
  /// "Інтернет через Starlink"
  /// ```
  String get starlink_internet => """Інтернет через Starlink""";
}

class GrpcMessagesUk extends GrpcMessages {
  final MessagesUk _parent;
  const GrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// """
  /// Можливі варіанти:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get possible_options__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";
  DeviceInfoGrpcMessagesUk get DeviceInfo => DeviceInfoGrpcMessagesUk(this);
  BootInfoGrpcMessagesUk get BootInfo => BootInfoGrpcMessagesUk(this);
  DishOutageGrpcMessagesUk get DishOutage => DishOutageGrpcMessagesUk(this);
  DishGpsStatsGrpcMessagesUk get DishGpsStats =>
      DishGpsStatsGrpcMessagesUk(this);
  DishReadyStatesGrpcMessagesUk get DishReadyStates =>
      DishReadyStatesGrpcMessagesUk(this);
  DishInitDurationGrpcMessagesUk get DishInitDuration =>
      DishInitDurationGrpcMessagesUk(this);
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

  /// ```dart
  /// "Id"
  /// ```
  String get id => """Id""";

  /// ```dart
  /// "Версія апаратна"
  /// ```
  String get hardware_version => """Версія апаратна""";

  /// ```dart
  /// "Версія прошивки"
  /// ```
  String get software_version => """Версія прошивки""";

  /// ```dart
  /// "Код країни"
  /// ```
  String get country_code => """Код країни""";

  /// ```dart
  /// "UTC зміщення, с"
  /// ```
  String get utc_offset_s => """UTC зміщення, с""";

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
  /// "Версія прошивки (з заводу)"
  /// ```
  String get manufactured_version => """Версія прошивки (з заводу)""";

  /// ```dart
  /// "generation_number"
  /// ```
  String get generation_number => """generation_number""";

  /// ```dart
  /// "Starlink cohoused"
  /// ```
  String get dish_cohoused => """Starlink cohoused""";

  /// ```dart
  /// "Дата прошивки"
  /// ```
  String get x_build_date => """Дата прошивки""";

  /// ```dart
  /// "Часова зона"
  /// ```
  String get x_timezone => """Часова зона""";
}

class BootInfoGrpcMessagesUk extends BootInfoGrpcMessages {
  final GrpcMessagesUk _parent;
  const BootInfoGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Остання причина"
  /// ```
  String get last_reason => """Остання причина""";
}

class DishOutageGrpcMessagesUk extends DishOutageGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishOutageGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Причина"
  /// ```
  String get cause => """Причина""";

  /// ```dart
  /// """
  /// Причина, чому тарілка не на зв'язку. Можливі варіанти:
  ///
  /// - **UNKNOWN**
  /// - **BOOTING** - Тарілка намагається ініціалізувати з'єднання з супутниками.
  ///   Не повинно висіти в такому стані занадто довго. Найбільше часу, зазвичай, займає пошук GPS.
  /// - **STOWED** - Тарілка складена для упаковки та зберігання.
  /// - **THERMAL_SHUTDOWN** - Тарілка перегріта. В режимі очікування до зниження температури.
  /// - **NO_SCHEDULE**
  /// - **NO_SATS** - Немає GPS сигналу.
  /// - **OBSTRUCTED** - Забагато перешкод. Переконайтеся, що антена має кут огляду неба 140°
  ///    (принаймні в тій частині, куди вона зазвичай орієнтована).
  /// - **NO_DOWNLINK** - Канал передачі даних з супутників не ініціалізовано.
  /// - OTHER_OPTIONS
  /// """
  /// ```
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

class DishGpsStatsGrpcMessagesUk extends DishGpsStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGpsStatsGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "GPS дійсний"
  /// ```
  String get gps_valid => """GPS дійсний""";

  /// ```dart
  /// "GPS супутники"
  /// ```
  String get gps_sats => """GPS супутники""";

  /// ```dart
  /// "Немає супутників після першого фіксу"
  /// ```
  String get no_sats_after_ttff => """Немає супутників після першого фіксу""";

  /// ```dart
  /// "Не довіряти GPS"
  /// ```
  String get inhibit_gps => """Не довіряти GPS""";
}

class DishReadyStatesGrpcMessagesUk extends DishReadyStatesGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishReadyStatesGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Тактовий генератор"
  /// ```
  String get cady => """Тактовий генератор""";

  /// ```dart
  /// "Інтерфейс шини RFFE"
  /// ```
  String get scp => """Інтерфейс шини RFFE""";

  /// ```dart
  /// "Модем L1L2"
  /// ```
  String get l1l2 => """Модем L1L2""";

  /// ```dart
  /// "Інтерфейс Xilinx XPHY"
  /// ```
  String get xphy => """Інтерфейс Xilinx XPHY""";

  /// ```dart
  /// "Цифрові формувачі променя"
  /// ```
  String get aap => """Цифрові формувачі променя""";

  /// ```dart
  /// "RF front end"
  /// ```
  String get rf => """RF front end""";
}

class DishInitDurationGrpcMessagesUk extends DishInitDurationGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishInitDurationGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Attitude initialization"
  /// ```
  String get attitudeInitialization => """Attitude initialization""";

  /// ```dart
  /// "Термінал зміг зрозуміти своє початкове положення (де верх, де низ, як він нахилений)."
  /// ```
  String get attitudeInitialization_hint =>
      """Термінал зміг зрозуміти своє початкове положення (де верх, де низ, як він нахилений).""";

  /// ```dart
  /// "Burst  detected"
  /// ```
  String get burstDetected => """Burst  detected""";

  /// ```dart
  /// "Термінл почув сигнал супутника Starlink."
  /// ```
  String get burstDetected_hint =>
      """Термінл почув сигнал супутника Starlink.""";

  /// ```dart
  /// "EKF converged"
  /// ```
  String get ekfConverged => """EKF converged""";

  /// ```dart
  /// "Термінал зміг зрозуміти своє початкове положення (схоже на Attitude initialization), але вже стабільне, все зійшлось і термінал вже точно впевнений як він повернутий."
  /// ```
  String get ekfConverged_hint =>
      """Термінал зміг зрозуміти своє початкове положення (схоже на Attitude initialization), але вже стабільне, все зійшлось і термінал вже точно впевнений як він повернутий.""";

  /// ```dart
  /// "First CPlane"
  /// ```
  String get firstCplane => """First CPlane""";

  /// ```dart
  /// "Термінал отримав перший контрольний пакет даних від супутника."
  /// ```
  String get firstCplane_hint =>
      """Термінал отримав перший контрольний пакет даних від супутника.""";

  /// ```dart
  /// "First PoP ping"
  /// ```
  String get firstPopPing => """First PoP ping""";

  /// ```dart
  /// "Термінал вперше пропінгував Point of Presence на землі."
  /// ```
  String get firstPopPing_hint =>
      """Термінал вперше пропінгував Point of Presence на землі.""";

  /// ```dart
  /// "GPS valid"
  /// ```
  String get gpsValid => """GPS valid""";

  /// ```dart
  /// "GPS став валідним та видав точну позицію."
  /// ```
  String get gpsValid_hint => """GPS став валідним та видав точну позицію.""";

  /// ```dart
  /// "Initial network entry"
  /// ```
  String get initialNetworkEntry => """Initial network entry""";

  /// ```dart
  /// "Термінал вперше під'єднався до мережі Starlink та почав комунікацію."
  /// ```
  String get initialNetworkEntry_hint =>
      """Термінал вперше під'єднався до мережі Starlink та почав комунікацію.""";

  /// ```dart
  /// "Network schedule"
  /// ```
  String get networkSchedule => """Network schedule""";

  /// ```dart
  /// "Термінал отримав перший пакет даних з розкладом роботи соти."
  /// ```
  String get networkSchedule_hint =>
      """Термінал отримав перший пакет даних з розкладом роботи соти.""";

  /// ```dart
  /// "RF ready"
  /// ```
  String get rfReady => """RF ready""";

  /// ```dart
  /// "Термінал виконав ініціалізацію антени без помилок по XPHY, RF, SCP, тощо."
  /// ```
  String get rfReady_hint =>
      """Термінал виконав ініціалізацію антени без помилок по XPHY, RF, SCP, тощо.""";

  /// ```dart
  /// "Stable connection"
  /// ```
  String get stableConnection => """Stable connection""";

  /// ```dart
  /// "Термінал отримав стабільне з'єднання за мережею."
  /// ```
  String get stableConnection_hint =>
      """Термінал отримав стабільне з'єднання за мережею.""";
}

class DishConfigGrpcMessagesUk extends DishConfigGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishConfigGrpcMessagesUk(this._parent) : super(_parent);

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
  /// Можливі варіанти:
  ///  - **NONE** - Starlink не публікує своє місцезнаходження в локальну мережу.
  ///  - **LOCAL** - Starlink публікує своє місцезнаходження локальній мережі через DHCP та API.
  ///
  /// Щоб змінити це налаштування, вам потрібний оригінальний додаток Starlink з залогіненим обліковим записом,
  /// доступом до Інтернету та доступом до Starlink. Ви можете знайти це налаштування в
  /// *Advanced* -> *Debug Data* -> *Allow access on local network*.
  /// """
  /// ```
  String get location_request_mode__hint => """Можливі варіанти:
 - **NONE** - Starlink не публікує своє місцезнаходження в локальну мережу.
 - **LOCAL** - Starlink публікує своє місцезнаходження локальній мережі через DHCP та API.

Щоб змінити це налаштування, вам потрібний оригінальний додаток Starlink з залогіненим обліковим записом,
доступом до Інтернету та доступом до Starlink. Ви можете знайти це налаштування в
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
  /// "Для Starlink можна налаштувати режим сну. Starlink не надає Інтернет і не топить сніг під час сну."
  /// ```
  String get power_save_mode__hint =>
      """Для Starlink можна налаштувати режим сну. Starlink не надає Інтернет і не топить сніг під час сну.""";
}

class DishObstructionStatsGrpcMessagesUk
    extends DishObstructionStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishObstructionStatsGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Частка часу с перешкодами"
  /// ```
  String get fraction_obstructed => """Частка часу с перешкодами""";

  /// ```dart
  /// "Time valid"
  /// ```
  String get valid_s => """Time valid""";

  /// ```dart
  /// "Є перешкода"
  /// ```
  String get currently_obstructed => """Є перешкода""";

  /// ```dart
  /// "Середній час тривалих перешкод"
  /// ```
  String get avg_prolonged_obstruction_duration_s =>
      """Середній час тривалих перешкод""";

  /// ```dart
  /// "Середній час між тривалими перешкодами"
  /// ```
  String get avg_prolonged_obstruction_interval_s =>
      """Середній час між тривалими перешкодами""";

  /// ```dart
  /// "Average prolonged obstruction valid"
  /// ```
  String get avg_prolonged_obstruction_valid =>
      """Average prolonged obstruction valid""";

  /// ```dart
  /// "Тривалість перешкоди"
  /// ```
  String get time_obstructed => """Тривалість перешкоди""";

  /// ```dart
  /// "Patches valid"
  /// ```
  String get patches_valid => """Patches valid""";
}

class DishGetStatusGrpcMessagesUk extends DishGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const DishGetStatusGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Час після завантаження"
  /// ```
  String get uptime_s => """Час після завантаження""";

  /// ```dart
  /// "Час роботи тарілки від останнього перезавантаження."
  /// ```
  String get uptime_s__hint =>
      """Час роботи тарілки від останнього перезавантаження.""";

  /// ```dart
  /// "Час до першого непорожнього слота"
  /// ```
  String get seconds_to_first_nonempty_slot =>
      """Час до першого непорожнього слота""";

  /// ```dart
  /// "Частка часу с перешкодами"
  /// ```
  String get fraction_obstructed => """Частка часу с перешкодами""";

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
  /// "PoP ping затримка"
  /// ```
  String get pop_ping_latency_ms => """PoP ping затримка""";

  /// ```dart
  /// """
  /// Мережа Starlink, грубо кажучи, складається з таких компонентів:
  /// - Користувацькі термінали (UT)
  /// - Супутники (SAT)
  /// - Наземні станції (які фізично з'єднуються з супутниками)
  /// - Точки присутності (PoP) (що з'єднуються наемними станціями через оптоволокно та маршрутизують мережевий трафік в Інтернет)
  ///
  /// **PoP Ping Latency** вказує на час, необхідний для передачі пакета з користувацького терміналу до точки присутності і назад.
  ///
  /// **PoP Ping Drop Rate** вказує на частку пакетів, які втрачаються під час передачі між користувацьким терміналом та точкою присутності.
  /// """
  /// ```
  String get pop_ping__hint =>
      """Мережа Starlink, грубо кажучи, складається з таких компонентів:
- Користувацькі термінали (UT)
- Супутники (SAT)
- Наземні станції (які фізично з'єднуються з супутниками)
- Точки присутності (PoP) (що з'єднуються наемними станціями через оптоволокно та маршрутизують мережевий трафік в Інтернет)

**PoP Ping Latency** вказує на час, необхідний для передачі пакета з користувацького терміналу до точки присутності і назад.

**PoP Ping Drop Rate** вказує на частку пакетів, які втрачаються під час передачі між користувацьким терміналом та точкою присутності.
""";

  /// ```dart
  /// "Складання в процесі"
  /// ```
  String get stow_requested => """Складання в процесі""";

  /// ```dart
  /// "Азимут осі панелі, град"
  /// ```
  String get boresight_azimuth_deg => """Азимут осі панелі, град""";

  /// ```dart
  /// "Кут підйому панелі, град"
  /// ```
  String get boresight_elevation_deg => """Кут підйому панелі, град""";

  /// ```dart
  /// "Швидкість Ethernet, Mbps"
  /// ```
  String get eth_speed_mbps => """Швидкість Ethernet, Mbps""";

  /// ```dart
  /// "Клас мобільності"
  /// ```
  String get mobility_class => """Клас мобільності""";

  /// ```dart
  /// """
  /// Можливі варіанти:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get mobility_class__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";

  /// ```dart
  /// "SNR вище за рівень шуму"
  /// ```
  String get is_snr_above_noise_floor => """SNR вище за рівень шуму""";

  /// ```dart
  /// "Клас сервісу"
  /// ```
  String get class_of_service => """Клас сервісу""";

  /// ```dart
  /// "Стан оновлення"
  /// ```
  String get software_update_state => """Стан оновлення""";

  /// ```dart
  /// "SNR стабільно низький"
  /// ```
  String get is_snr_persistently_low => """SNR стабільно низький""";

  /// ```dart
  /// "Наявність приводу"
  /// ```
  String get has_actuators => """Наявність приводу""";

  /// ```dart
  /// "Стан приводів"
  /// ```
  String get actuator_state => """Стан приводів""";

  /// ```dart
  /// "Стан сервісу"
  /// ```
  String get disablement_code => """Стан сервісу""";

  /// ```dart
  /// """
  /// Можливі варіанти:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get disablement_code__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";

  /// ```dart
  /// "Причина перезавантаження"
  /// ```
  String get reboot_reason => """Причина перезавантаження""";

  /// ```dart
  /// """
  /// Можливі варіанти:
  ///
  /// - OTHER_OPTIONS
  /// """
  /// ```
  String get reboot_reason__hint => """Можливі варіанти:

- OTHER_OPTIONS
""";
}

class AlignmentStatsGrpcMessagesUk extends AlignmentStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const AlignmentStatsGrpcMessagesUk(this._parent) : super(_parent);

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

class ClientNameGrpcMessagesUk extends ClientNameGrpcMessages {
  final GrpcMessagesUk _parent;
  const ClientNameGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "mac_address"
  /// ```
  String get mac_address => """mac_address""";

  /// ```dart
  /// "given_name"
  /// ```
  String get given_name => """given_name""";
}

class NetworkGrpcMessagesUk extends NetworkGrpcMessages {
  final GrpcMessagesUk _parent;
  const NetworkGrpcMessagesUk(this._parent) : super(_parent);

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

class BasicServiceSetGrpcMessagesUk extends BasicServiceSetGrpcMessages {
  final GrpcMessagesUk _parent;
  const BasicServiceSetGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "bssid"
  /// ```
  String get bssid => """bssid""";

  /// ```dart
  /// """
  /// Starlink BSSID спочатку починався з **74:24:9f**, але через проблеми з безпекою,
  ///  починаючи приблизно з січня 2023 року, маршрутизатори Starlink можуть обрати випадковий BSSID після скидання до заводських налаштувань.
  /// """
  /// ```
  String get bssid__hint =>
      """Starlink BSSID спочатку починався з **74:24:9f**, але через проблеми з безпекою,
 починаючи приблизно з січня 2023 року, маршрутизатори Starlink можуть обрати випадковий BSSID після скидання до заводських налаштувань.
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

class WifiConfigGrpcMessagesUk extends WifiConfigGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiConfigGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Код країни"
  /// ```
  String get country_code => """Код країни""";

  /// ```dart
  /// "Налаштування завершено"
  /// ```
  String get setup_complete => """Налаштування завершено""";

  /// ```dart
  /// "Версія"
  /// ```
  String get version => """Версія""";

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
  /// "Кількість завантаженнь"
  /// ```
  String get boot_count => """Кількість завантаженнь""";

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

class PingMetricsGrpcMessagesUk extends PingMetricsGrpcMessages {
  final GrpcMessagesUk _parent;
  const PingMetricsGrpcMessagesUk(this._parent) : super(_parent);

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

class RxTxStatsGrpcMessagesUk extends RxTxStatsGrpcMessages {
  final GrpcMessagesUk _parent;
  const RxTxStatsGrpcMessagesUk(this._parent) : super(_parent);

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

class WifiClientGrpcMessagesUk extends WifiClientGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiClientGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "name"
  /// ```
  String get name => """name""";

  /// ```dart
  /// "MAC адреса"
  /// ```
  String get mac_address => """MAC адреса""";

  /// ```dart
  /// "IP адреса"
  /// ```
  String get ip_address => """IP адреса""";

  /// ```dart
  /// "Рівень сигналу"
  /// ```
  String get signal_strength => """Рівень сигналу""";

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
  /// "Інтерфейс"
  /// ```
  String get iface => """Інтерфейс""";

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
  /// "IPv6 адреси"
  /// ```
  String get ipv6_addresses => """IPv6 адреси""";

  /// ```dart
  /// "Received"
  /// ```
  String get x_rx_bytes => """Received""";

  /// ```dart
  /// "Transmitted"
  /// ```
  String get x_tx_bytes => """Transmitted""";
}

class WifiGetStatusGrpcMessagesUk extends WifiGetStatusGrpcMessages {
  final GrpcMessagesUk _parent;
  const WifiGetStatusGrpcMessagesUk(this._parent) : super(_parent);

  /// ```dart
  /// "Captive portal enabled"
  /// ```
  String get captive_portal_enabled => """Captive portal enabled""";

  /// ```dart
  /// "Час після завантаження"
  /// ```
  String get uptime_s => """Час після завантаження""";

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
  """general.yes""": """так""",
  """general.no""": """ні""",
  """recent.search""": """Пошук""",
  """recent.no_options""": """Пустий список""",
  """my.my_starlinks""": """Мої Старлінки""",
  """my.snapshots""": """Знімки""",
  """my.delete_all_dished_prompt""": """Бажаєте видалити дані ВСІХ тарілок?""",
  """about.about""": """Про програму""",
  """about.about_starlink_for_ukraine""": """Про Народний Starlink""",
  """about.starlink_for_ukraine""": """Народний Starlink""",
  """about.starlink_for_ukraine_in_fb""": """Народний Starlink у Facebook""",
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
  """live.outages""": """Відключення""",
  """header.general""": """Загальне""",
  """header.signal""": """Сигнал""",
  """header.network""": """Мережа""",
  """header.alerts""": """Попередження""",
  """header.device_info""": """Про пристрій""",
  """header.config""": """Налаштування""",
  """header.gps_stats""": """GPS""",
  """header.antenna""": """Антена""",
  """header.ready_states""": """Готовність модулів""",
  """header.init_duration""": """Час ініціалізації (сек)""",
  """header.networks""": """Мережі""",
  """header.boot""": """Завантаження""",
  """header.client""": """Клієнт""",
  """header.features""": """Функції""",
  """header.connected_routers""": """Під'єднані роутери""",
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
  """tabs.app.starlink_router_bypass_mode""": """Starlink router bypass mode""",
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
  """grpc.possible_options__hint""": """Можливі варіанти:

- OTHER_OPTIONS
""",
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
  """grpc.DeviceInfo.manufactured_version""": """Версія прошивки (з заводу)""",
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
- OTHER_OPTIONS
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
  """grpc.DishInitDuration.attitudeInitialization""":
      """Attitude initialization""",
  """grpc.DishInitDuration.attitudeInitialization_hint""":
      """Термінал зміг зрозуміти своє початкове положення (де верх, де низ, як він нахилений).""",
  """grpc.DishInitDuration.burstDetected""": """Burst  detected""",
  """grpc.DishInitDuration.burstDetected_hint""":
      """Термінл почув сигнал супутника Starlink.""",
  """grpc.DishInitDuration.ekfConverged""": """EKF converged""",
  """grpc.DishInitDuration.ekfConverged_hint""":
      """Термінал зміг зрозуміти своє початкове положення (схоже на Attitude initialization), але вже стабільне, все зійшлось і термінал вже точно впевнений як він повернутий.""",
  """grpc.DishInitDuration.firstCplane""": """First CPlane""",
  """grpc.DishInitDuration.firstCplane_hint""":
      """Термінал отримав перший контрольний пакет даних від супутника.""",
  """grpc.DishInitDuration.firstPopPing""": """First PoP ping""",
  """grpc.DishInitDuration.firstPopPing_hint""":
      """Термінал вперше пропінгував Point of Presence на землі.""",
  """grpc.DishInitDuration.gpsValid""": """GPS valid""",
  """grpc.DishInitDuration.gpsValid_hint""":
      """GPS став валідним та видав точну позицію.""",
  """grpc.DishInitDuration.initialNetworkEntry""": """Initial network entry""",
  """grpc.DishInitDuration.initialNetworkEntry_hint""":
      """Термінал вперше під'єднався до мережі Starlink та почав комунікацію.""",
  """grpc.DishInitDuration.networkSchedule""": """Network schedule""",
  """grpc.DishInitDuration.networkSchedule_hint""":
      """Термінал отримав перший пакет даних з розкладом роботи соти.""",
  """grpc.DishInitDuration.rfReady""": """RF ready""",
  """grpc.DishInitDuration.rfReady_hint""":
      """Термінал виконав ініціалізацію антени без помилок по XPHY, RF, SCP, тощо.""",
  """grpc.DishInitDuration.stableConnection""": """Stable connection""",
  """grpc.DishInitDuration.stableConnection_hint""":
      """Термінал отримав стабільне з'єднання за мережею.""",
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
  """grpc.DishConfig.power_save_mode__hint""":
      """Для Starlink можна налаштувати режим сну. Starlink не надає Інтернет і не топить сніг під час сну.""",
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
  """grpc.DishObstructionStats.time_obstructed""": """Тривалість перешкоди""",
  """grpc.DishObstructionStats.patches_valid""": """Patches valid""",
  """grpc.DishGetStatus.uptime_s""": """Час після завантаження""",
  """grpc.DishGetStatus.uptime_s__hint""":
      """Час роботи тарілки від останнього перезавантаження.""",
  """grpc.DishGetStatus.seconds_to_first_nonempty_slot""":
      """Час до першого непорожнього слота""",
  """grpc.DishGetStatus.fraction_obstructed""": """Частка часу с перешкодами""",
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
  """grpc.DishGetStatus.pop_ping_latency_ms""": """PoP ping затримка""",
  """grpc.DishGetStatus.pop_ping__hint""":
      """Мережа Starlink, грубо кажучи, складається з таких компонентів:
- Користувацькі термінали (UT)
- Супутники (SAT)
- Наземні станції (які фізично з'єднуються з супутниками)
- Точки присутності (PoP) (що з'єднуються наемними станціями через оптоволокно та маршрутизують мережевий трафік в Інтернет)

**PoP Ping Latency** вказує на час, необхідний для передачі пакета з користувацького терміналу до точки присутності і назад.

**PoP Ping Drop Rate** вказує на частку пакетів, які втрачаються під час передачі між користувацьким терміналом та точкою присутності.
""",
  """grpc.DishGetStatus.stow_requested""": """Складання в процесі""",
  """grpc.DishGetStatus.boresight_azimuth_deg""": """Азимут осі панелі, град""",
  """grpc.DishGetStatus.boresight_elevation_deg""":
      """Кут підйому панелі, град""",
  """grpc.DishGetStatus.eth_speed_mbps""": """Швидкість Ethernet, Mbps""",
  """grpc.DishGetStatus.mobility_class""": """Клас мобільності""",
  """grpc.DishGetStatus.mobility_class__hint""": """Можливі варіанти:

- OTHER_OPTIONS
""",
  """grpc.DishGetStatus.is_snr_above_noise_floor""":
      """SNR вище за рівень шуму""",
  """grpc.DishGetStatus.class_of_service""": """Клас сервісу""",
  """grpc.DishGetStatus.software_update_state""": """Стан оновлення""",
  """grpc.DishGetStatus.is_snr_persistently_low""": """SNR стабільно низький""",
  """grpc.DishGetStatus.has_actuators""": """Наявність приводу""",
  """grpc.DishGetStatus.actuator_state""": """Стан приводів""",
  """grpc.DishGetStatus.disablement_code""": """Стан сервісу""",
  """grpc.DishGetStatus.disablement_code__hint""": """Можливі варіанти:

- OTHER_OPTIONS
""",
  """grpc.DishGetStatus.reboot_reason""": """Причина перезавантаження""",
  """grpc.DishGetStatus.reboot_reason__hint""": """Можливі варіанти:

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
  """grpc.WifiClient.mac_address""": """MAC адреса""",
  """grpc.WifiClient.ip_address""": """IP адреса""",
  """grpc.WifiClient.signal_strength""": """Рівень сигналу""",
  """grpc.WifiClient.rx_stats""": """rx_stats""",
  """grpc.WifiClient.tx_stats""": """tx_stats""",
  """grpc.WifiClient.associated_time_s""": """Associated time, s""",
  """grpc.WifiClient.mode_str""": """mode_str""",
  """grpc.WifiClient.iface""": """Інтерфейс""",
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
  """grpc.WifiClient.ipv6_addresses""": """IPv6 адреси""",
  """grpc.WifiClient.x_rx_bytes""": """Received""",
  """grpc.WifiClient.x_tx_bytes""": """Transmitted""",
  """grpc.WifiGetStatus.captive_portal_enabled""": """Captive portal enabled""",
  """grpc.WifiGetStatus.uptime_s""": """Час після завантаження""",
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
