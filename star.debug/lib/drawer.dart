import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';

const String _TAG = "AppDrawer";

class AppDrawer extends StatefulWidget {
  final String selectedRoute;

  const AppDrawer({super.key, this.selectedRoute = ""});

  static int countBackClick=0;

  @override
  State createState() => _AppDrawerState();

  static Future<bool> willPopFunc(GlobalKey<ScaffoldState> scaffoldKey) async {
    try {
      var state = scaffoldKey.currentState;
      if (state == null)
        return true;

      bool canPop = Navigator.of(state.context).canPop();
      if (state.hasDrawer)
        if (!state.isDrawerOpen) {
          if (canPop)
            return true;
          countBackClick++;
          state.openDrawer();
          return false;
        } else if (countBackClick > 0) {
          Navigator.pop(state.context); // drawer is opened, close it
        }
    }catch(e,s){
      LogUtils.ers(_TAG, "", e, s);
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
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _createHeader(),
                _createDrawerItemRoute(context, Icons.play_arrow, "Starlink Live", Routes.LIVE),
                _createDrawerItemRoute(context, Icons.bug_report, M.general.debug_data_viewer, Routes.MAIN),
                _createDrawerItemRoute(context, Icons.pets, M.my.my_starlinks, Routes.MY_STARLINKS),
                if (R.isDebug)
                  _createDrawerItemRoute(context, Icons.smart_toy, "Sandbox", Routes.DEBUG),
                _createDrawerItemRoute(context, Icons.settings, M.settings.settings, Routes.SETTINGS),

              ],
            ),
          ),
          ListTile(
            leading: Padding(
                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                child: Transform.scale(scale: 1, child:_buildLogo())
            ),
            title: Text(M.about.about_starlink_for_ukraine,),
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            dense: true,
            onTap: (){
              Navigator.of(context).pushNamedAndRemoveUntil(Routes.ABOUT, (r) => false);
            },
          ),
          SizedBox(height: 8,)
        ],
      ),
    );
  }

  Widget _buildLogo(){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.black
      ),
      width: 30,
      height: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: OverflowBox(
          maxWidth: 50,
          maxHeight: 50,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
            child: Image(
              image: AssetImage('assets/images/starlinkforukraine1.png'),
              width: 50,
            ),
          ),
        ),
      ),
    );
  }

  Widget _createHeader() {
    var media = MediaQuery.of(context);
    return SizedBox(
      height: 130 + media.viewPadding.top,
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
                          SizedBox(
                            width: constraints.maxWidth - 50-20-10,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("${M.general.app_name}", style: TextStyle(color: Colors.white), softWrap: true,),
                                    Text("${R.versionName}", style: TextStyle(color: Colors.white), softWrap: true,),
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
