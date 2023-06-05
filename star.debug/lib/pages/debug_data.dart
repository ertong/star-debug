import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/log_utils.dart';

import '../utils/kv_widget.dart';

const String _TAG="MainPage";

class DebugDataPage extends StatefulWidget {
  final String? debugDataToOpen;

  const DebugDataPage({super.key, this.debugDataToOpen});

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
  Map<String, dynamic> data = {};

  SpaceParser? parser;

  Image? obstructions;

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.debugDataToOpen!=null) {
      var data = jsonDecode(widget.debugDataToOpen!);
      newData(data);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

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

    return Scaffold(
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
                                Container(width: 5, height: 5,),
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
                                Container(width: 5, height: 5,),
                                Text(M.general.open_clipboard),
                              ],
                            )
                          ),
                      ],
                    ),),
            ),
          ],
        ),
    );
  }

  void newData(Map<String, dynamic> data) {

    this.data = data;
    var parser = this.parser = SpaceParser(data);
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

      var deviceId = parser.dishGetStatus?.deviceInfo.id;
      var timestamp = parser.dishTs;
      if (deviceId!=null && timestamp!=null){
        R.dishLog.storeDebugData(deviceId, timestamp*1000, data);
      }
    }

    if (parser.routerGetStatus!=null)
      pages.add(_Page("router", Icons.router, M.general.router, alertsCount: parser.routerGetStatus!.countAlerts()));

    if (parser.deviceApp!=null)
      pages.add(_Page("app", Icons.ad_units, M.general.device_app, entity: parser.deviceApp!));

    if (!(parser.hasData() ?? false)){
      R.showSnackBarText(M.general.no_data_found);
    }
  }

  List<Widget> _buildPage(Entity entity){
    List<Widget> rows = [];

    String? img = entity.get_device_image_file();
    if (img!=null) {
      img = img.replaceFirst("resources/", "assets/images/");
      rows.add(
        Image.asset(img, height: 100,),
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
        rows.add(DishWidget(status: parser.dishGetStatus, features: parser.dishFeatures,));

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
        rows.add(RouterWidget(status: parser.routerGetStatus, features: parser.routerFeatures,));

      }
      if (page.id=="app")
        rows.addAll(_buildPage(parser.deviceApp!));
    }

    return rows;
  }

  Future test() async {
    var dish = DishGetStatusResponse();
    DebugDataHelper.jsonToProto(parser?.json['dish'], dish);
    log(jsonEncode(dish.toProto3Json()));
  }

  void onOpenClipboardClicked() async {
    try {
      var str = await FlutterClipboard.paste();
      var data = jsonDecode(str);
      newData(data);
      setState(() {});
    } catch (e, s) {
      LogUtils.ers(_TAG, "Opening clipboard", e, s);
      R.showSnackBarText("$e");
    }

  }

  void onOpenClicked() async {
    parser = null;
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false
    );

    if (result != null && result.files.single.path!=null) {
      try {
        var f = File(result.files.single.path!);
        if ((await f.stat()).size > 1024 * 1024)
          R.showSnackBarText("Too large file");

        var data = jsonDecode(await f.readAsString());
        newData(data);
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
    return AppBar(
      title: Text(M.general.debug_data_viewer),
      centerTitle: true,
      actions: [
        if (parser!=null)
          ...[
            TextButton(
                onPressed: () async {
                  await showDialog<String>(context: context, builder: (c){
                    return SaveDebugDataDialog(
                        data: JsonEncoder.withIndent("  ").convert(data),
                        uid: data["dish"]?["deviceInfo"]?["id"] ?? data["router"]?["deviceInfo"]?["id"],
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
