import 'package:flutter/services.dart';
import 'package:gettext/gettext.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:gettext_parser/gettext_parser.dart' as gettextParser;

const String _TAG="SpaceText";

class SpaceText {
  var gt = Gettext();

  Future<void> setLang(String lang) async {
    ByteData bytes;
    try {
      bytes = await rootBundle.load("assets/gettext/space-debugger.$lang.mo");
    } catch (e, s) {
      LogUtils.ers(_TAG, "Loading gettext ${I18n.instance.lang}", e, s);
      bytes = await rootBundle.load("assets/gettext/space-debugger.en.mo");
    }

    final gt = Gettext();
    gt.addLocale(gettextParser.mo.parse(bytes));
    this.gt = gt;
  }

  String t(String k) {
    return gt.gettext(k);
  }
}