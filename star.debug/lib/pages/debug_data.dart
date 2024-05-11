import 'dart:async';
import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

import '../utils/kv_widget.dart';

const String _TAG = "MainPage";

class DebugDataPage extends StatefulWidget {
  final Snapshot? snap;

  const DebugDataPage({super.key, this.snap});

  @override
  State createState() => _DebugDataPageState();
}

class _DebugDataPageState extends State<DebugDataPage> with TickerProviderStateMixin {
  Snapshot? snap;

  Image? obstructions;

  @override
  void initState() {
    super.initState();
    if (widget.snap != null) {
      newData(widget.snap!);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Widget? bar;

    if (snap != null)
      return SnapshotPage(
        snap: snap!,
        onClose: () {
          obstructions = null;
          snap = null;
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: onOpenClicked,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add_circle),
                        SizedBox(
                          width: 5,
                          height: 5,
                        ),
                        Text(M.general.open_json_file),
                      ],
                    )),
                TextButton(
                    onPressed: onOpenClipboardClicked,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.paste),
                        SizedBox(
                          width: 5,
                          height: 5,
                        ),
                        Text(M.general.open_clipboard),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void newData(Snapshot snap) {
    obstructions = null;
    this.snap = null;

    if (!snap.hasData())
      R.showSnackBarText(M.general.no_data_found);
    else {
      this.snap = snap;
      R.dishLog.storeDebugData(snap);
    }

    setState(() {});
  }

  void onOpenClipboardClicked() async {
    try {
      var str = await FlutterClipboard.paste();
      newData(SpaceParser.ofJsonStr(str).toSnapshot());
      setState(() {});
    } catch (e, s) {
      LogUtils.ers(_TAG, "Opening clipboard", e, s);
      R.showSnackBarText("$e");
    }
  }

  void onOpenClicked() async {
    snap = null;
    FilePickerResult? result;
    try {
      result = await FilePicker.platform.pickFiles(allowMultiple: false);
    } catch (e, s) {
      LogUtils.ers(_TAG, "Pick files", e, s);
      R.showSnackBarText("$e");
      return;
    }

    if (result != null && result.files.single.path != null) {
      try {
        var f = File(result.files.single.path!);
        if ((await f.stat()).size > 1024 * 1024) R.showSnackBarText("Too large file");

        newData(SpaceParser.ofJsonStr(await f.readAsString()).toSnapshot());
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
    );
  }
}
