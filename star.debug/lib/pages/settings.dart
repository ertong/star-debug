
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';

import 'dialogs/select_lang.dart';

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


    res.add(ListTile(
      leading: Icon(Icons.format_paint),
      title: Text(M.general.dark_mode),
      trailing: Switch(
        onChanged: (value) async {
          await R.prefs.save((p){
            p.darkMode = !p.darkMode;
          });
          R.appKey.currentState?.setState(() {});
        },
        value: R.prefs.data.darkMode,
      ),
      onTap: () async {
        await R.prefs.save((p){
          p.darkMode = !p.darkMode;
        });
        R.appKey.currentState?.setState(() {});
      },
    ));

    res.add(ListTile(
      leading: Icon(Icons.language),
      title: Text(M.general.language),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(M.general.lang),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
      onTap: () async{
        var lang = await showDialog<String>(context: context, builder: (c){ return SelectLangDialog(); });
        if (lang!=null){
          await R.prefs.save((p) {
            p.lang = lang;
          });
          await I18n.instance.setLang(lang);
          R.appKey.currentState?.setState(() {});
        }
      },
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: res,
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.settings.settings),
      centerTitle: true,
    );
  }
}
