import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/select_lang.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';

const String _TAG = "AppDrawer";

class AppDrawer extends StatefulWidget {
  final String selectedRoute;

  const AppDrawer({Key? key, this.selectedRoute = ""}) : super(key: key);

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
//          _createDrawerItemRoute(context, Icons.contacts, 'Test main page', Routes.MAIN),
                _createDrawerItemRoute(context, Icons.play_arrow, "Strarlink Live", Routes.LIVE),
                _createDrawerItemRoute(context, Icons.bug_report, M.general.debug_data_viewer, Routes.MAIN),
                _createDrawerItemRoute(context, Icons.pets, M.my.my_starlinks, Routes.MY_STARLINKS),
                if (R.isDebug)
                  _createDrawerItemRoute(context, Icons.smart_toy, "Sandbox", Routes.DEBUG),
                _createDrawerItem(context, Icons.color_lens, '${M.general.dark_mode}', () async{
                  await R.prefs.save((p){
                    p.darkMode = !p.darkMode;
                  });
                  R.appKey.currentState?.setState(() {});
                }, R.prefs.data.darkMode?"On":"Off", false),
                _createDrawerItem(context, Icons.language, '${M.general.change_language}', () async{
                  var lang = await showDialog<String>(context: context, builder: (c){ return SelectLangDialog(); });
                  if (lang!=null){
                    await R.prefs.save((p) {
                      p.lang = lang;
                    });
                    await I18n.instance.setLang(lang);
                    R.appKey.currentState?.setState(() {});
                    if (context.mounted)
                      Navigator.pop(context);
                  }
                }, M.general.lang, false),
              ],
            ),
          ),
          ListTile(
            leading: Transform.scale(scale:0.8, child: _buildLogo()),
            title: Text(M.about.about_starlink_for_ukraine,),
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
      width: 50,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: OverflowBox(
          maxWidth: 70,
          maxHeight: 70,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
            child: Image(
              image: AssetImage('assets/images/starlinkforukraine1.png'),
              width: 70,
            ),
          ),
        ),
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
                          SizedBox(
                            width: constraints.maxWidth - 50-20-10,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("StarDebug", style: TextStyle(color: Colors.white), softWrap: true,),
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
