import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/preloaded.dart';

class Prefs{
  String? lang;
  String? lastSystemLang;

  bool darkMode = R.features.defaultDarkMode;

  bool autoStoreDiskLog = true;

  bool valkyrieCheck = false;

  Prefs();
}

class SharedPrefs {
  static const String TAG = "SharedPrefs";

  late Prefs _data;

  final StreamController _streamController = StreamController.broadcast();
  Stream get stream => _streamController.stream;
  final Completer<void> initialized = Completer();
  late SharedPreferences prefs;

  Prefs get data {
    return _data;
  }

  Future<Prefs> _load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Prefs res = Prefs();

    res.lang = prefs.getString("lang");
    res.lastSystemLang = prefs.getString("lastSystemLang");
    res.darkMode = prefs.getBool("darkMode") ?? res.darkMode;
    res.valkyrieCheck = prefs.getBool("valkyrieCheck") ?? res.valkyrieCheck;
    res.autoStoreDiskLog = prefs.getBool("autoStoreDiskLog") ?? res.autoStoreDiskLog;

    return res;
  }

  Future<void> setBool(String key, bool? value) async {
    if (value==null)
      await prefs.remove(key);
    else
      await prefs.setBool(key, value);
  }

  Future<void> setInt(String key, int? value) async {
    if (value==null)
      await prefs.remove(key);
    else
      await prefs.setInt(key, value);
  }

  Future<void> setDouble(String key, double? value) async {
    if (value==null)
      await prefs.remove(key);
    else
      await prefs.setDouble(key, value);
  }

  Future<void> setString(String key, String? value) async {
    if (value==null)
      await prefs.remove(key);
    else
      await prefs.setString(key, value);
  }


  Future<void> save(Function(Prefs) change) async {
    var saved = await _load();
    var data = await _load();
    change(data);

    if (saved.lang!=data.lang)
        await setString("lang", data.lang);

    if (saved.lastSystemLang!=data.lastSystemLang)
        await setString("lastSystemLang", data.lastSystemLang);

    if (saved.darkMode!=data.darkMode)
      await setBool("darkMode", data.darkMode);

    if (saved.valkyrieCheck!=data.valkyrieCheck)
      await setBool("valkyrieCheck", data.valkyrieCheck);

    if (saved.autoStoreDiskLog!=data.autoStoreDiskLog)
      await setBool("autoStoreDiskLog", data.autoStoreDiskLog);

    _data = await _load();
    _streamController.add(_data);
  }

  Future clearUserData() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _data = await _load();
    
    _streamController.add(_data);
  }

  SharedPrefs(){
    ()async{
      prefs = await SharedPreferences.getInstance();
      _data = await _load();
      initialized.complete();
    }();
  }

}