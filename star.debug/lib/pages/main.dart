import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/dishy.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/log_utils.dart';

import '../utils/kv_widget.dart';

final String _TAG="MainPage";

class MainPage extends StatefulWidget {
  final String route;

  const MainPage({super.key, this.route = Routes.MAIN});

  @override
  _MainPageState createState() => _MainPageState();
}

class _Page {
  String id;
  IconData icon;
  String label;
  Entity entity;

  _Page(this.id, this.icon, this.label, this.entity);
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {

  int _selectedIndex=0;
  List<_Page> pages = [];

  SpaceParser? parser;

  Image? obstructions;

  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {

    Widget? bar = null;

    if (pages.isNotEmpty)
      bar = BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (var p in pages)
            BottomNavigationBarItem(
              label: p.label,
              icon: p.entity.alertsCount==0
                  ? Icon(p.icon)
                  : Badge(
                    label: Text("${p.entity.alertsCount}"),
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
                    : Center(child: TextButton(
                        onPressed: onOpenClicked,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.add_circle),
                            Container(width: 5, height: 5,),
                            Text(M.general.open_json_file),
                          ],
                        )
                      ),),
            ),
          ],
        ),
    );
  }

  void newData(Map<String, dynamic> data) {

    parser = SpaceParser(data);
    pages.clear();
    obstructions = null;
    _selectedIndex = 0;

    if (parser?.dishy!=null) {
      pages.add(_Page("dishy", Icons.settings_input_antenna, M.general.dish, parser!.dishy!));

      for (var p in parser!.dishy!.plugins) {
        if (p is DishyObstructions && p.frac_obstr_list.isNotEmpty) {
          () async {
            obstructions = Image.memory(await ObstructionImage.generateImgFromList(p.frac_obstr_list));
            setState(() {});
          }();
        }
      }
    }

    if (parser?.router!=null)
      pages.add(_Page("router", Icons.router, M.general.router, parser!.router!));

    if (parser?.deviceApp!=null)
      pages.add(_Page("app", Icons.ad_units, M.general.device_app, parser!.deviceApp!));

    if (!(parser?.hasData() ?? false)){
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
      var b = KVWidgetBuilder();
      entity.get_readable_params(b);
      rows.addAll(b.widgets);
    }
    for (var p in entity.plugins) {
      if(p==null)
        continue;

      bool is_alert = (p is ModuleAlerts) && p.data.isNotEmpty;

      var b = KVWidgetBuilder();
      p.get_data(b);

      if (b.widgets.isEmpty)
        continue;

      var name = p.get_name();
      rows.add(Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 2),
        child: Container(
            padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
            color: is_alert ? Colors.red.shade100 : Colors.lightBlue.shade100,
            child: Row(
              children: [
                Text(name),
              ],
            )
        ),
      ));
      // var data = p.get_data();
      rows.addAll(b.widgets);


      if (p is DishyObstructions && this.obstructions!=null) {
        rows.add(SizedBox(
            width: 200,
            child: obstructions!
        ));
      }


    }

    return rows;
  }


  List<Widget> _buildSpace() {
    final parser = this.parser;
    if (parser == null)
      return [];

    List<Widget> rows = [];

    if (_selectedIndex<pages.length){
      var page = pages[_selectedIndex];
      if (page.id=="dishy" && parser.dishy!=null)
        rows.addAll(_buildPage(parser.dishy!));
      if (page.id=="router" && parser.router!=null)
        rows.addAll(_buildPage(parser.router!));
      if (page.id=="app")
        rows.addAll(_buildPage(parser.deviceApp!));
    }

    return rows;
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
        TextButton(
            onPressed: onOpenClicked,
            child: Icon(Icons.add_circle, color: Colors.white,)
        )
      ],
    );
  }

}
