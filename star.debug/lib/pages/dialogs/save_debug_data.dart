import 'dart:convert';
import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/preloaded.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:star_debug/utils/log_utils.dart';

const String _TAG="LivePage";

class SaveDebugDataDialog<TItem> extends StatefulWidget
{
  final String? uid;
  final String data;
  final bool showInApp;
  const SaveDebugDataDialog({Key? key, required this.data, this.uid, this.showInApp = true}) : super(key: key);

  @override
  State createState() => _SaveDebugDataDialogState<TItem>();
}

class _SaveDebugDataDialogState<TItem> extends State<SaveDebugDataDialog<TItem>>
{
  @override
  void initState()
  {
    super.initState();
  }

  @override
  void dispose()
  {
    super.dispose();
  }

  Future<String?> getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await path_provider.getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
        // ignore: avoid_slow_async_io
        if (!await directory.exists()) directory = await path_provider.getExternalStorageDirectory();
      }
    } catch (err, stack) {
      print("Cannot get download folder path");
    }
    return directory?.path;
  }

  Future saveToFile() async {
    try {
      if (!await Permission.storage
          .request()
          .isGranted) {
        R.showSnackBar(SnackBar(
          duration: Duration(seconds: 2),
          content: Text("No storage permission. Cannot store"),
        ));
        return;
      }

      String? dir = await getDownloadPath();
      if (dir == null) {
        R.showSnackBar(SnackBar(
          duration: Duration(seconds: 2),
          content: Text("No Download directory. Cannot store"),
        ));
        return;
      }

      var basename = "DebugData";
      if (widget.uid!=null)
        basename="$basename.${widget.uid}";
      var path = "$dir/$basename.json.txt";
      int i = 0;
      while (await File("$path").exists()) {
        i = i + 1;
        path = "$dir/$basename.$i.json.txt";
      }

      var f = File("$path").openWrite();
      try {
        f.write(widget.data);
      } finally {
        f.close();
      }

      R.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text("Saved to $path"),
      ));

    } catch(e,s){
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text("$e"),
      ));
    }
  }

  Future share() async {
    try {
      String dir = (await path_provider.getApplicationSupportDirectory()).path;

      var basename = "DebugData";
      if (widget.uid!=null)
        basename="$basename.${widget.uid}";
      var path = "$dir/$basename.json.txt";

      var f = File("$path").openWrite();
      try {
        f.write(widget.data);
      } finally {
        f.close();
      }

      Share.shareXFiles([XFile(path)], text: widget.uid ?? basename);

    } catch(e,s){
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text("$e"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // var btnStyle = TextButton.styleFrom(foregroundColor: Theme.of(context).primaryColor);
    return AlertDialog(
        // insetPadding: EdgeInsets.fromLTRB(0, 0,0,0),
        titlePadding: EdgeInsets.all(14.0),
        contentPadding: EdgeInsets.all(10.0),
        // actionsPadding: EdgeInsets.all(0.0),
      title: Text(M.general.save_debug_data),
      content: IntrinsicWidth(
        stepWidth: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              onPressed: () async {
                await FlutterClipboard.copy(widget.data);
                R.showSnackBar(SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text("Copied DebugData json"),
                ));

                if (mounted)
                  Navigator.pop(context, null);
              },
              child: Text(M.general.to_clipboard),
            ),
            OutlinedButton(
              onPressed: () async {
                await share();
                if (mounted)
                  Navigator.pop(context, null);
              },
              child: Text(M.general.share),
            ),
            OutlinedButton(
              onPressed: () async {
                await saveToFile();
                if (mounted)
                  Navigator.pop(context, null);
              },
              child: Text(M.general.to_file),
            ),
            if (widget.showInApp)
              OutlinedButton(
                onPressed: () async {
                  if (mounted) {
                    Navigator.pop(context, null);
                    await Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DebugDataPage(debugDataToOpen: widget.data);
                        },
                      ),
                    );
                  }
                },
                child: Text(M.general.view_in_app),
              ),
          ],
        ),
      ),

      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context, null);
          },
          child: Text(M.general.cancel),
        ),
      ],
    );
  }
}
