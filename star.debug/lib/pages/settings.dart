import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:url_launcher/url_launcher.dart';

const String _TAG="SettingsPage";

class SettingsPage extends StatefulWidget {

  const SettingsPage({super.key});

  @override
  State createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
          key: scaffoldKey,
          appBar: _buildBar(context) as PreferredSizeWidget?,
          drawer: AppDrawer(selectedRoute: Routes.SETTINGS),
          body: _buildBody(),
      ),
    );
  }

  Widget _buildBody(){
    List<Widget> res = [];

    var theme = Theme.of(context);

    res.add(ListTile(
      leading: Icon(Icons.language),
      title: Text(M.general.language),
      subtitle: Text(M.general.lang),
    ));


    res.add(ListTile(
      leading: Icon(Icons.format_paint),
      title: Text(M.general.dark_mode),
      subtitle: Checkbox(
        onChanged: (value) async {
          await R.prefs.save((p){
            p.darkMode = !p.darkMode;
          });
          R.appKey.currentState?.setState(() {});
        },
        value: R.prefs.data.darkMode,
      ),
    ));

    res.add(CheckboxListTile(
        title: Text(M.general.dark_mode),
        value: R.prefs.data.darkMode,
        onChanged: (value) async {
          await R.prefs.save((p){
            p.darkMode = !p.darkMode;
          });
          R.appKey.currentState?.setState(() {});
        }
    ));


    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisSize: MainAxisSize.min,
    //   children: res,
    // );

    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              onPressed: (value) async {

              },
              leading: Icon(Icons.language),
              title: Text(M.general.language),
              value: Text(M.general.lang),
            ),
            SettingsTile.switchTile(
              onToggle: (value) async {
                await R.prefs.save((p){
                  p.darkMode = !p.darkMode;
                });
                R.appKey.currentState?.setState(() {});
              },
              initialValue: R.prefs.data.darkMode,
              leading: Icon(Icons.format_paint),
              title: Text(M.general.dark_mode),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> sendMail() async{
    DeviceInfoPlugin di = DeviceInfoPlugin();

    String body = 'App version: ${R.versionName}\n';


    if (Platform.isAndroid){
      var info = await di.androidInfo;
      body = "$body"
          "Platform: Android ${info.version.release} sdk ${info.version.sdkInt} patch ${info.version.securityPatch}\n"
          "Device: ${info.manufacturer} ${info.model} ${info.board} ${info.brand} ${info.device}\n";
    } else if (Platform.isIOS){
      var info = await di.iosInfo;
      body = "$body"
          "Platform: iOS ${info.systemName} ${info.systemVersion} \n"
          "Device: ${info.model} ${info.name}\n";
    } else {
      body = "$body"
          'Platform: ${Platform.operatingSystem} ${Platform.operatingSystemVersion}\n';
    }

    if (Platform.isAndroid || Platform.isIOS) {
      final Email email = Email(
        body: "$body\n",
        recipients: ['stardebug@ert.org.ua'],
        isHTML: false,
      );

      await FlutterEmailSender.send(email);
    } else {
      final Uri uri = Uri(
        scheme: 'mailto',
        path: 'stardebug@ert.org.ua',
        query: encodeQueryParameters(<String, String>{
          'subject': body,
        }),
      );

      launchUrl(uri);
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.about.about),
      centerTitle: true,
    );
  }
}
