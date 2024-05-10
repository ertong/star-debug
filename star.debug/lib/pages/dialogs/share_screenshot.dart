import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:image/image.dart' as img;

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/live/dish.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/utils.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:time_machine/time_machine.dart';

const String _TAG="ShareScreenshot";

class ShareScreenshot<TItem> extends StatefulWidget
{
  final Snapshot snap;
  const ShareScreenshot({super.key, required this.snap});

  @override
  State createState() => _ShareScreenshotState<TItem>();
}

enum _State{
  CONFIG,
  LOADING,
  SHARE
}

class _ShareScreenshotState<TItem> extends State<ShareScreenshot<TItem>>
{
  ScreenshotController screenshotController = ScreenshotController();
  Uint8List? image;
  MemoryImage? memImage;

  _State state = _State.CONFIG;

  ViewOptions viewOptions = ViewOptions();

  @override
  void initState()
  {
    super.initState();
    viewOptions.hideIds = false;
    viewOptions.hideMac = false;
    viewOptions.hideIp = false;
    viewOptions.hideLocation = true;
    viewOptions.hideRouterClients = true;
    // unawaited(run());
  }

  @override
  void dispose()
  {
    super.dispose();
  }

  Future run() async {
    try {
      setState(() { state = _State.LOADING; });
      image = null;
      memImage = null;

      Uint8List png = await screenshotController.captureFromLongWidget(
        pixelRatio: 2,
        // Text("This text will be captured as image"),
        InheritedTheme.captureAll(
          context,
          Material(
            child: buildImage()
          ),
        ),
      );

      Uint8List? jpg = await (img.Command()
        ..decodePng(png)
        ..encodeJpg(quality: 85))
        .getBytes()
        ;

      image = jpg;

      // if (image!=null)
      memImage = MemoryImage(image!);

    } catch (e,s) {
      LogUtils.ers(_TAG, "", e, s);
    }
    state = _State.SHARE;
    if (mounted)
      setState(() {});
  }

  Widget buildImage(){
    List<Widget> items = [];

    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.snap.dishGetStatus!=null)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 380,
                  child: DishWidget(
                    snap: widget.snap,
                    viewOptions: viewOptions,
                  ),
                ),
              if (widget.snap.routerGetStatus!=null)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 380,
                  child: RouterWidget(
                    snap: widget.snap,
                    viewOptions: viewOptions,
                  ),
                ),
              if (widget.snap.dishGetHistory!=null)
                Container(
                    padding: EdgeInsets.all(10),
                    width: 380,
                    child: Column(
                      children: [
                        ...buildCharts(),
                        ...buildOutages(),
                      ],
                    ),
                )
      
            ],
          ),
          Container(
            color: Colors.grey.shade400,
            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: Row(
              children: [
                Text("Generated by ${M.general.app_name} v${R.versionName}"),
                Expanded(child: SizedBox()),
                Text("${Instant.fromEpochMilliseconds(widget.snap.timestamp).inLocalZone().toString("yyyy-MM-dd HH:mm:ss 'GMT'o<g>")}")
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> buildOutages() {
    var outages = widget.snap.dishGetHistory?.outages ?? [];
    var b = KVWidgetBuilder(context, Theme.of(context));
    if (outages.isNotEmpty && R.features.outagesHistory) {

      b.header(M.live.outages);

      if (outages.length>20)
        b.widgets.add(Text(M.live.n_records_before(outages.length-20), textAlign: TextAlign.center,));

      for (var o in outages.length<=20 ? outages : outages.skip(outages.length-20) ) {
        if (o.startTimestampNs==-1) {
          b.kvs("${o.cause}", "");
          continue;
        }

        int ts_int = (o.startTimestampNs~/1000~/1000).toInt();

        // var ts = Instant.fromEpochMilliseconds(ts_int+delta).inLocalZone();
        var ts = Instant.fromEpochMilliseconds(ts_int).inLocalZone();

        b.kvs("${ts.toString("HH:mm:ss")} ${o.cause}", "${Format.secD(o.durationNs.toDouble()/1000/1000/1000)}");
        // print("OUTAGE ${o.cause} ${o.didSwitch} ${o.durationNs.toDouble()/1000/1000/1000} ${o.startTimestampNs.toDouble()/1000/1000/1000}");
      }
    }
    return b.widgets;
  }
  List<Widget> buildCharts(){
    List<Widget> items = [];
    var history = widget.snap.dishGetHistory;
    if (history==null)
      return items;

    var time = widget.snap.historyTs ?? widget.snap.timestamp;

    items.add(buildGraph(M.grpc.DishGetStatus.pop_ping_latency_ms, history.current.toInt(), time, history.popPingLatencyMs));
    items.add(buildGraph(M.grpc.DishGetStatus.pop_ping_drop_rate, history.current.toInt(), time, history.popPingDropRate));
    items.add(buildGraph("Uplink, Mb/s", history.current.toInt(), time, [for (var v in history.uplinkThroughputBps) v/1024/1024]));
    items.add(buildGraph("Downlink, Mb/s", history.current.toInt(), time, [for (var v in history.downlinkThroughputBps) v/1024/1024]));

    return items;
  }


  String getBasename() {
    var id = widget.snap.dishGetStatus?.deviceInfo.id;
    if (id==null || viewOptions.hideIds)
      return "starlink-"+Instant.now().inLocalZone().toString("yyyyMMdd-HHmmss");
    else {
      return "starlink-$id";
    }
  }

  Future onShare() async {
    Uint8List? img = image;
    if (img==null)
      return;

    try {
      String dir = (await path_provider.getApplicationSupportDirectory()).path;

      var basename = getBasename();
      var path = "$dir/$basename.jpg";

      await File("$path").writeAsBytes(img);

      Share.shareXFiles([XFile(path)], subject: basename);

    } catch(e,s){
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text("$e"),
      ));
    }
  }

  Future saveToFileDesktop() async {
    Uint8List? img = image;
    if (img==null)
      return;
    try {
      var name = "${getBasename()}.jpg";

      var path = await FilePicker.platform.saveFile(
        dialogTitle: "Save Screenshot",
        fileName: name,
      );

      if (path==null)
        return;

      await File("$path").writeAsBytes(img);

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

  Future saveToFileMobile() async {
    Uint8List? img = image;
    if (img==null)
      return;
    try {
      await Permission.storage.request();
      // If it is not granted, we can try to write ... it is possible that it is allowed by default

      String? dir = await getDownloadPath();
      if (dir == null) {
        R.showSnackBar(SnackBar(
          duration: Duration(seconds: 2),
          content: Text("No Download directory. Cannot store"),
        ));
        return;
      }

      var basename = getBasename();
      var name = "$basename.jpg";
      int i = 0;
      while (await File("$dir/$name").exists()) {
        i = i + 1;
        name = "$basename.$i.jpg";
      }

      var path = "$dir/$name";

      await File("$path").writeAsBytes(img);

      var msg = "Saved to $path";

      if (Platform.isIOS)
        msg = "Saved to Files/${M.general.app_name}/$name";
      if (Platform.isAndroid)
        msg = "Saved to Downloads/$name";

      R.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text(msg),
      ));

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
    var img = memImage;
    return AlertDialog(
        // insetPadding: EdgeInsets.fromLTRB(0, 0,0,0),
        titlePadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        contentPadding: EdgeInsets.all(10.0),
        // actionsPadding: EdgeInsets.all(0.0),
      title: Row(
        children: [
          Expanded(child: Text("Screenshot")),
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(0,0,0,0),
                maximumSize: Size(36, 36),
                minimumSize: Size(36, 36),
              ),
              onPressed: (){
                Navigator.pop(context, null);
              }, child: Icon(Icons.close)
          ),
        ],
      ),
      content: IntrinsicWidth(
        stepWidth: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (state==_State.CONFIG)
              buildConfigForm()
            else
            if (state==_State.LOADING)
              SizedBox(height:280, child: Center(child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(),)))
            else if (img!=null)
              ...[
                Image(image: img, height: 200),
                SizedBox(height: 20,),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 16, runSpacing: 16,
                  children: [
                    _buildButton("Share", onShare),
                    _buildButton("To File", () {
                      if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                        saveToFileDesktop();
                      else
                        saveToFileMobile();
                    }),
                  ],
                )              ]
            else
              Text("Error"),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String txt,Function()? onPressed,
      {Color? btnColor, double width=75})
  {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
          // backgroundColor: btnColor,
          minimumSize: Size(width, 50)
      ),
      child:Column(
        children: <Widget>[
          // Icon(icon),
          const SizedBox(height: 2.0),
          Text(txt, textAlign: TextAlign.center,),
        ],
      ),
    );
  }

  Widget buildConfigForm(){
    return Column(children: [
      Text("Compact all the important data into an image to quickly share it to get a remote help/advice."),
      buildCheckboxRow("Hide terminal/router ids", viewOptions.hideIds, (v) { setState( () { viewOptions.hideIds = v; }); }),
      buildCheckboxRow("Hide MAC addresses", viewOptions.hideMac, (v) { setState( () { viewOptions.hideMac = v; }); }),
      buildCheckboxRow("Hide IP addresses", viewOptions.hideIp, (v) { setState( () { viewOptions.hideIp = v; }); }),
      buildCheckboxRow("Hide location", viewOptions.hideLocation, (v) { setState( () { viewOptions.hideLocation = v; }); }),
      OutlinedButton(
        onPressed: run,
        child: SizedBox(width:100, child: Text("Build", textAlign: TextAlign.center,)),
      )
    ],);
  }

  Widget buildCheckboxRow(String title, bool val, Function(bool) onChange){
    return InkWell(
      onTap: () {
        onChange(!val);
        setState(() {});
      },
      child: Row(
        children: [
          Expanded(child: Text(title)),
          Checkbox(value: val, onChanged: (v) {
            onChange(!val);
            setState(() {});
          }),
        ],
      ),
    );
  }
}
