import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/log_utils.dart';

import '../utils/kv_widget.dart';

const String _TAG="MainPage";

class DebugDataPage extends StatefulWidget {
  final SpaceParser? parser;

  const DebugDataPage({super.key, this.parser});

  @override
  State createState() => _DebugDataPageState();
}

class _Page {
  String id;
  IconData icon;
  String label;
  int alertsCount;
  Entity? entity;

  _Page(this.id, this.icon, this.label, {this.entity, this.alertsCount=0});
}

class _DebugDataPageState extends State<DebugDataPage> with TickerProviderStateMixin {

  int _selectedIndex=0;
  List<_Page> pages = [];

  SpaceParser? parser;

  Image? obstructions;

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.parser!=null) {
      newData(widget.parser!);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    Widget? bar;

    if (pages.length>=2)
      bar = BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (var p in pages)
            BottomNavigationBarItem(
              label: p.label,
              icon: p.alertsCount==0
                  ? Icon(p.icon)
                  : Badge(
                    label: Text("${p.alertsCount}"),
                    child: Icon(p.icon),
                  ),
            ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (idx) {
          _selectedIndex = idx;
          scrollController.jumpTo(0);
          setState(() {});
        },
      );

    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
          key: scaffoldKey,
          appBar: _buildBar(context) as PreferredSizeWidget?,
          drawer: AppDrawer(selectedRoute: Routes.MAIN),
          bottomNavigationBar: bar,
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10.0),
                child:
                    (parser?.hasData() ?? false)
                      ? SingleChildScrollView(controller: scrollController, child: Column(children: _buildSpace(),),)
                      : Center(child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: onOpenClicked,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.add_circle),
                                  SizedBox(width: 5, height: 5,),
                                  Text(M.general.open_json_file),
                                ],
                              )
                            ),
                          TextButton(
                              onPressed: onOpenClipboardClicked,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.paste),
                                  SizedBox(width: 5, height: 5,),
                                  Text(M.general.open_clipboard),
                                ],
                              )
                            ),
                        ],
                      ),),
              ),
            ],
          ),
      ),
    );
  }

  void newData(SpaceParser parser) {
    this.parser = parser;
    pages.clear();
    obstructions = null;
    _selectedIndex = 0;

    if (parser.dishGetStatus!=null){
      pages.add(_Page("dishy", Icons.settings_input_antenna, M.general.dish, alertsCount: parser.dishGetStatus!.countAlerts()));
      Map<String, dynamic>? obstr_data = parser.jsonDish?['obstructionStats'];
      if (obstr_data!=null) {
        List<double> frac_obstr_list = [for (var f in obstr_data['wedgeFractionObstructedList'] ?? []) f.toDouble()];
        if (frac_obstr_list.isNotEmpty) {
          () async {
            obstructions = Image.memory(await ObstructionImage.generateImgFromList(frac_obstr_list));
            setState(() {});
          }();
        }
      }

      if (parser.json!=null) {
        var deviceId = parser.dishGetStatus?.deviceInfo.id;
        var timestamp = parser.dishTs;
        if (deviceId != null && timestamp != null) {
          R.dishLog.storeDebugData(deviceId, timestamp * 1000, parser.json!);
        }
      }
    }

    if (parser.routerGetStatus!=null)
      pages.add(_Page("router", Icons.router, M.general.router, alertsCount: parser.routerGetStatus!.countAlerts()));

    if (parser.deviceApp!=null)
      pages.add(_Page("app", Icons.ad_units, M.general.device_app, entity: parser.deviceApp!));

    if (!parser.hasData()){
      R.showSnackBarText(M.general.no_data_found);
    }
  }

  List<Widget> _buildPage(Entity entity){
    List<Widget> rows = [];

    String? img = entity.get_device_image_file();
    if (img!=null) {
      rows.add(
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(img, height: 60,)
        ),
      );
    }

    {
      var b = KVWidgetBuilder(context, theme);
      entity.get_readable_params(b);
      rows.addAll(b.widgets);
    }
    for (var p in entity.plugins) {
      if(p==null)
        continue;

      var b = KVWidgetBuilder(context, theme);
      b.header(p.get_name());
      p.get_data(b);

      if (b.widgets.length<=1)
        continue;

      // var data = p.get_data();
      rows.addAll(b.widgets);
    }

    return rows;
  }


  List<Widget> _buildSpace() {
    final parser = this.parser;
    if (parser == null)
      return [];

    List<Widget> rows = [];

    // rows.add(Center(
    //   child: ElevatedButton(
    //     onPressed: () async {
    //       await test();
    //     },
    //     child: Text("test"),
    //   ),
    // ));

    if (_selectedIndex<pages.length){
      var page = pages[_selectedIndex];
      if (page.id=="dishy" && parser.dishGetStatus!=null) {
        if (parser.dishTs!=null) {
          var b = KVWidgetBuilder(context, theme);
          b.kv(M.general.dump_created_time, DateTime.fromMillisecondsSinceEpoch(parser.dishTs! * 1000));
          rows.addAll(b.widgets);
        }
        rows.add(DishWidget(
          status: parser.dishGetStatus,
          features: parser.dishFeatures,
          apiVersion: parser.dishApi,
        ));

        if (this.obstructions!=null) {
          rows.add(SizedBox(
              width: 200,
              child: obstructions!
          ));
        }

      }
      if (page.id=="router" && parser.routerGetStatus!=null) {
        // rows.addAll(_buildPage(parser.router!));
        if (parser.routerTs!=null) {
          var b = KVWidgetBuilder(context, theme);
          b.kv(M.general.dump_created_time, DateTime.fromMillisecondsSinceEpoch(parser.routerTs! * 1000));
          rows.addAll(b.widgets);
        }
        rows.add(RouterWidget(
          status: parser.routerGetStatus,
          features: parser.routerFeatures,
          apiVersion: parser.routerApi,
        ));

      }
      if (page.id=="app")
        rows.addAll(_buildPage(parser.deviceApp!));
    }

    return rows;
  }

  Future test() async {
    // var dish = DishGetStatusResponse();
    // DebugDataHelper.jsonToProto(parser?.json['dish'], dish);
    // log(jsonEncode(dish.toProto3Json()));
  }

  void onOpenClipboardClicked() async {
    try {
      var str = await FlutterClipboard.paste();
      newData(SpaceParser.ofJsonStr(str));
      setState(() {});
    } catch (e, s) {
      LogUtils.ers(_TAG, "Opening clipboard", e, s);
      R.showSnackBarText("$e");
    }

  }

  void onOpenClicked() async {
    parser = null;
    FilePickerResult? result;
    try {
      result = await FilePicker.platform.pickFiles(
          allowMultiple: false
      );
    } catch (e, s){
      LogUtils.ers(_TAG, "Pick files", e, s);
      R.showSnackBarText("$e");
      return;
    }

    if (result != null && result.files.single.path!=null) {
      try {
        var f = File(result.files.single.path!);
        if ((await f.stat()).size > 1024 * 1024)
          R.showSnackBarText("Too large file");

        newData(SpaceParser.ofJsonStr(await f.readAsString()));
        setState(() {});
      } catch (e, s) {
        LogUtils.ers(_TAG, "Opening $result", e, s);
        R.showSnackBarText("$e");
      }
    } else {
      // User canceled the picker
    }
  }

  Widget _buildBar(BuildContext context) {
    String? uid = parser?.dishGetStatus?.deviceInfo.id ?? parser?.routerGetStatus?.deviceInfo.id;

    return AppBar(
      title: Text(M.general.debug_data_viewer),
      centerTitle: true,
      actions: [
        if (parser!=null)
          ...[
            TextButton(
                onPressed: uid==null ? null : () async {
                  if (parser!=null)
                    await showDialog<String>(context: context, builder: (c) {
                      return SaveDebugDataDialog(
                          data: parser!.toDebugDataJson(),
                          uid: uid,
                          showInApp: false,
                      );
                    });
                },
                child: Icon(Icons.share, color: Colors.white,)
            ),
            TextButton(
              onPressed: (){
                _selectedIndex=0;
                pages.clear();
                parser = null;
                obstructions = null;
                setState(() {});
              },
              child: Icon(Icons.clear, color: Colors.white,)
            ),
          ]
      ],
    );
  }

}
