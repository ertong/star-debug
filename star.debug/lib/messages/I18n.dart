import 'dart:async';

import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:star_debug/utils/log_utils.dart';

import '../preloaded.dart';
import 'messages.i18n.dart';
import 'messages_uk.i18n.dart';

Messages M = Messages();

class I18n{
  static I18n instance = I18n();

  final Map<String, Messages Function()> langs = {
    'en': ()=>Messages(),
    'uk': ()=>MessagesUk(),
  };

  final Map<String, Map<String, String>> maps = {
    'en': messagesMap,
    'uk': messagesUkMap,
  };

  final Map<String, Locale> locales = {
    'en': const Locale('en', 'GB'),
    'uk': const Locale('uk', 'UA'),
  };

  Map<String, String> map = messagesMap;

  String _lang = "en";
  Locale locale = const Locale('en', 'GB');
  String get lang => _lang;

  final _onChangeController = StreamController();

  Stream? onChange;

  I18n(){
   // initializeDateFormatting(Intl.defaultLocale, null);
    onChange = _onChangeController.stream.asBroadcastStream();
  }

  Future<void> init(BuildContext context) async {
    await checkSystemLang();
  }

  Future<String?> getSystemLang() async {
    var pref = await Devicelocale.preferredLanguages ?? [];
    var current = await Devicelocale.currentLocale ?? "en";

    for (var lang in [...pref, current]){
      lang = lang.replaceAll("-", "_").split("_")[0];
      if (I18n.instance.langs.containsKey(lang))
        return lang;
    }

    return "en";
  }

  Future<void> checkSystemLang()async{
    var lang = R.prefs.data.lang;

    var lastSystemLang = R.prefs.data.lastSystemLang;
    var systemLang = await getSystemLang();

    LogUtils.d("I18n", "Saved lang: $lang, lastSystemLang: $lastSystemLang, systemLang: $systemLang");

    if (systemLang!=lastSystemLang){
      await R.prefs.save((p) {
        if (I18n.instance.langs.containsKey(systemLang)) {
          lang = systemLang;
          p.lang = lang;
        }
        p.lastSystemLang = systemLang;
      });
    }

    if (lang==null){
      if (I18n.instance.langs.containsKey(systemLang))
        lang = systemLang;
    }

    await setLang(lang ?? "en");
  }
  Future<void> setLang(String value) async {
    if (_lang==value || !langs.containsKey(value))
      return;

    LogUtils.d("I18n", "Set lang: $value");

    _lang = value;
    locale = locales[_lang] ?? locales["en"]!;
    M = langs[_lang]!();
    map = maps[_lang] ?? messagesMap;

    Intl.defaultLocale = _lang;
//    await initializeDateFormatting(Intl.defaultLocale, null);

    _onChangeController.add(instance);
  }


}