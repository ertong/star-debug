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
}

class GeneralMessagesUk extends GeneralMessages {
  final MessagesUk _parent;
  const GeneralMessagesUk(this._parent) : super(_parent);
  String get lang => """Українська""";
  String get app_name => """Ubib24""";
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
  String get debug_data_viewer => """Перегляд Debug Data""";
  String get no_data_found => """Дані не знайдено""";
}

Map<String, String> get messagesUkMap => {
      """general.lang""": """Українська""",
      """general.app_name""": """Ubib24""",
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
      """general.debug_data_viewer""": """Перегляд Debug Data""",
      """general.no_data_found""": """Дані не знайдено""",
    };
