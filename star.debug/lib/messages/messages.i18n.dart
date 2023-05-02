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
    };
