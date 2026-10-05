import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/widgets/app_surface.dart';
import 'package:star_debug/widgets/app_drawer_pop_scope.dart';

const String _TAG = "MainPage";

class DebugDataPage extends StatefulWidget {
  final Snapshot? snap;

  const DebugDataPage({super.key, this.snap});

  @override
  State createState() => _DebugDataPageState();
}

class _DebugDataPageState extends State<DebugDataPage>
    with TickerProviderStateMixin {
  Snapshot? snap;

  Image? obstructions;

  @override
  void initState() {
    super.initState();
    if (widget.snap != null) {
      newData(widget.snap!);
    }
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

    return AppDrawerPopScope(
      scaffoldKey: scaffoldKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.MAIN),
        bottomNavigationBar: bar,
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 420),
              child: AppSurface(
                padding: EdgeInsets.all(22),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.data_object,
                      size: 42,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(height: 10),
                    Text(
                      M.general.debug_data_viewer,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 18),
                    OutlinedButton.icon(
                      onPressed: onOpenClicked,
                      icon: Icon(Icons.file_open_outlined),
                      label: Text(M.general.open_json_file),
                    ),
                    SizedBox(height: 8),
                    OutlinedButton.icon(
                      onPressed: onOpenClipboardClicked,
                      icon: Icon(Icons.content_paste_outlined),
                      label: Text(M.general.open_clipboard),
                    ),
                  ],
                ),
              ),
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
    PlatformFile? result;
    try {
      result = await FilePicker.pickFile();
    } catch (e, s) {
      LogUtils.ers(_TAG, "Pick files", e, s);
      R.showSnackBarText("$e");
      return;
    }

    if (result != null) {
      try {
        var bytes = await result.readAsBytes();
        if (bytes.length > 1024 * 1024)
          R.showSnackBarText("Too large file");

        newData(SpaceParser.ofJsonStr(utf8.decode(bytes)).toSnapshot());
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
    return AppBar(title: Text(M.general.debug_data_viewer), centerTitle: true);
  }
}
