
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

    res.add(checkbox(
      icon: Icons.format_paint,
      title: M.general.dark_mode,
      value: R.prefs.data.darkMode,
      onToggle: () async {
        await R.prefs.save((p){
          p.darkMode = !p.darkMode;
        });
        R.appKey.currentState?.setState(() {});
      }
    ));

    res.add(checkbox(
      icon: Icons.save,
      title: M.settings.auto_store_dish_log,
      subtitle: M.settings.auto_store_dish_log_sub,
      value: R.prefs.data.autoStoreDiskLog,
      onToggle: () async {
        await R.prefs.save((p){
          p.autoStoreDiskLog = !p.autoStoreDiskLog;
        });
        R.appKey.currentState?.setState(() {});
      }
    ));

    if (R.features.valkyrieCheck)
      res.add(checkbox(
          icon: Icons.podcasts,
          title: M.valkyrie.valkyrie_check,
          subtitle: M.valkyrie.valkyrie_check_sub,
          value: R.prefs.data.valkyrieCheck,
          onToggle: () async {
            await R.prefs.save((p){
              p.valkyrieCheck = !p.valkyrieCheck;
              setState(() {});
            });
          }
      ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: res,
    );
  }

  Widget checkbox({required IconData icon,
      required String title, String? subtitle,
      required bool value, required Function() onToggle})
  {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle==null ? null : Text(subtitle),
      trailing: Switch(
        onChanged: (value) {
          onToggle();
        },
        value: value,
      ),
      onTap: () {
        onToggle();
      },
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.settings.settings),
      centerTitle: true,
    );
  }
}
