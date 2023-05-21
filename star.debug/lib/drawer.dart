import 'dart:io';

import 'package:flutter/material.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/dialogs/select_lang.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';

class AppDrawer extends StatefulWidget {
  final String selectedRoute;

  const AppDrawer({Key? key, this.selectedRoute = ""}) : super(key: key);

  static int countBackClick=0;

  @override
  _AppDrawerState createState() => _AppDrawerState();

  static bool willPopFunc(BuildContext context) {
    if (Scaffold.of(context).hasDrawer)
      if (!Scaffold.of(context).isDrawerOpen){
        countBackClick++;
        Scaffold.of(context).openDrawer();
        return false;
      }else if (countBackClick>0){
        exit(0);
      }

    return true;
  }
}

class _AppDrawerState extends State<AppDrawer> {

  int debugClickCount=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    AppDrawer.countBackClick=0;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
//          _createDrawerItemRoute(context, Icons.contacts, 'Test main page', Routes.MAIN),
          _createDrawerItemRoute(context, Icons.bug_report, M.general.debug_data_viewer, Routes.MAIN),
          _createDrawerItemRoute(context, Icons.bug_report, "Debug", Routes.DEBUG),
          _createDrawerItem(context, Icons.language, '${M.general.change_language}', () async{
            var lang = await showDialog<String>(context: context, builder: (c){ return SelectLangDialog(); });
            if (lang!=null){
              await R.prefs.save((p) {
                p.lang = lang;
              });
              await I18n.instance.setLang(lang);
              setState(() {});
              if (context.mounted)
                Navigator.pop(context);
            }
          }, M.general.lang, false),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return SizedBox(
      height: 130,
      child: DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFF4f5b62),
                Color(0xFF263238),
                Color(0xFF000a12),],
              transform: GradientRotation(3*3.14/4),
            ),
          ),
          child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(children: <Widget>[
                  Positioned(
                      top: 30,
                      left: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              debugClickCount++;
                              if (debugClickCount>5 && !R.isDebug)
                                setState(() {
                                  R.isDebug = true;
                                });
                            },
                            child: Image(
                              image: AssetImage('assets/images/logo_transparent.png'),
                              width: 50,
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth - 50-20-10,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("StarDebug", style: TextStyle(color: Colors.white), softWrap: true,),
                                    Text("v${R.versionName}", style: TextStyle(color: Colors.white), softWrap: true,),
                                  ],
                                )
                            ),
                          )
                        ],
                      )
                  ),
                ]);
              }
          )),
    );
  }

  Widget _createDrawerItemRoute(BuildContext context, IconData icon, String text, String route) {
    return _createDrawerItem(context, icon, text, () {
      Navigator.of(context).pushNamedAndRemoveUntil(route, (r) => false);
    }, null, widget.selectedRoute == route);
  }

  Widget _createDrawerItem(BuildContext context, IconData icon, String text, GestureTapCallback onTap, String? subtitle, bool isSelected) {
    return ListTile(
      title: Text(text),
      leading: Padding(
          padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
          child: Icon(icon)
      ),
      selected: isSelected,
      dense: true,
      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      subtitle: subtitle !=null ? Text(subtitle) : null,
      onTap: onTap,
    );

  }


}
