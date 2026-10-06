import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/starlink_addresses.dart';

class Prefs{
  String? lang;
  String? lastSystemLang;

  bool darkMode = R.features.defaultDarkMode;

  bool autoStoreDiskLog = true;

  bool valkyrieCheck = false;

  // Starlink subnet overrides (null = use defaults)
  String? routerIp;  // default: 192.168.1.1
  String? dishIp;    // default: 192.168.100.1

  Prefs();
}

/// Asynchronous typed facade over the application's [SharedPreferences] keys.
///
/// Construction starts the initial load; callers must await `initialized.future`
/// before reading [data]. Successful mutations reload and broadcast a fresh
/// [Prefs] instance so widgets do not retain a partially updated in-memory object.
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
    res.routerIp = await _loadAddress("routerIp", kDefaultRouterIp);
    res.dishIp = await _loadAddress("dishIp", kDefaultDishIp);

    return res;
  }

  Future<String?> _loadAddress(String key, String defaultIp) async {
    final saved = prefs.get(key);
    final address = normalizeIpv4Override(
      saved is String ? saved : null,
      defaultIp,
    );
    // Repair persisted overrides so restarting cannot restore a broken host.
    if (saved != address) await setString(key, address);
    return address;
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


  /// Applies [change] to a freshly loaded value and persists only changed fields.
  Future<void> save(Function(Prefs) change) async {
    var saved = await _load();
    var data = await _load();
    change(data);
    data.routerIp = normalizeIpv4Override(data.routerIp, kDefaultRouterIp);
    data.dishIp = normalizeIpv4Override(data.dishIp, kDefaultDishIp);

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

    if (saved.routerIp!=data.routerIp)
      await setString("routerIp", data.routerIp);

    if (saved.dishIp!=data.dishIp)
      await setString("dishIp", data.dishIp);

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