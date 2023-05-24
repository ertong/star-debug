import 'dart:async';
import 'dart:developer';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/obstructions.dart';

const String _TAG="DebugPage";

class DebugPage extends StatefulWidget {

  const DebugPage({super.key});

  @override
  State createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> with TickerProviderStateMixin {

  String text = "";
  Image? img;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.DEBUG),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: _buildBody(),
            ),
          ),
        )
    );
  }

  List<Widget> _buildBody(){
    List<Widget> res = [];

    // res.add(OutlinedButton(onPressed: (){
    //   test();
    // }, child: Text("test")));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("GetStatus", () => Request(getStatus: GetStatusRequest()), router: false),
        // reqButton("GetObstructionMap", () => Request(dishGetObstructionMap: DishGetObstructionMapRequest())),
        OutlinedButton(onPressed: () async {
          final DishGetObstructionMapResponse? resp = await withConnected<DishGetObstructionMapResponse?>((stub, channel) async {
            var res = await stub.handle(Request(dishGetObstructionMap: DishGetObstructionMapRequest()));
            log("Received response: ${jsonEncode(res.toProto3Json())}");

            if (res.hasDishGetObstructionMap())
              return res.dishGetObstructionMap;
            else
              return null;
          }, router: false);

          text = "";
          img = null;
          if (resp!=null)
            img = Image.memory(await generateObstructionImgFromMap(resp));

          setState(() {});
        }, child: Text("GetObstructionMap"))
      ],
    ));

    // PERMISSION_DENIED, message: GetLocation requests are not enabled on this device
    // res.add(reqButton("getLocation", () => Request(getLocation: GetLocationRequest(source: PositionSource.AUTO)), router: false));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("Reboot", () => Request(reboot: RebootRequest())),
        reqButton("Stow", () => Request(dishStow: DishStowRequest(unstow: false))),
        reqButton("UnStow", () => Request(dishStow: DishStowRequest(unstow: true)))
      ],
    ));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("InhibitGPS", () => Request(dishInhibitGps: DishInhibitGpsRequest(inhibitGps: true)), router: false),
        reqButton("NoInhibitGPS", () => Request(dishInhibitGps: DishInhibitGpsRequest(inhibitGps: false)), router: false),
      ],
    ));

    // UNIMPLEMENTED
    // res.add(Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     reqButton("TransceiverGetStatus", () => Request(transceiverGetStatus: TransceiverGetStatusRequest()), router: false),
    //     reqButton("TransceiverGetTelemetry", () => Request(transceiverGetTelemetry: TransceiverGetTelemetryRequest()), router: false),
    //   ],
    // ));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("WifiGetStatus", () => Request(getStatus: GetStatusRequest()), router: true),
        reqButton("WifiRoboot", () => Request(reboot: RebootRequest()), router: true),
        // reqButton("WifiGetConfig", () => Request(wifiGetConfig: WifiGetConfigRequest()), router: true),
        // reqButton("WifiGetClients", () => Request(wifiGetClients: WifiGetClientsRequest()), router: true),
      ],
    ));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("GetHistory", () => Request(getHistory: GetHistoryRequest()), router: false),
        reqButton("WifiGetHistory", () => Request(getHistory: GetHistoryRequest()), router: true),
      ],
    ));

    // UNIMPLEMENTED, NO PERMISSION
    // res.add(Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     reqButton("GetPersistentStats", () => Request(getPersistentStats: GetPersistentStatsRequest()), router: true),
    //     reqButton("WifiGetDiagnostics", () => Request(wifiGetDiagnostics: WifiGetDiagnosticsRequest()), router: true),
    //   ],
    // ));

    res.add(InkWell(
      onTap: () async {
        await FlutterClipboard.copy(text);
        R.showSnackBar(SnackBar(
          duration: Duration(seconds: 2),
          content: Text("Copied response json"),
        ));
      },
      child: Column(
        children: [
          if (img!=null)
            SizedBox(
                width: 200,
                child: img!
            ),
          Text(text),
        ],
      ),
    ));

    return res;
  }

  Widget reqButton(String name, Request Function() reqBuilder, {bool router = false}){
    return OutlinedButton(onPressed: () async {
      text = await withConnectedHandleJson(reqBuilder(), router: router);
      img = null;
      setState(() {});
    }, child: Text(name));
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text("Sandbox"),
      centerTitle: true,
    );
  }

  Future<String> withConnectedHandleJson( Request req, {bool router = false}) async {
    return await withConnected((stub, channel) async {
      var resp = await stub.handle(req);

      log("Received response: ${jsonEncode(resp.toProto3Json())}");

      return JsonEncoder.withIndent("  ").convert(resp.toProto3Json());
    }, router: router) ?? "";
  }

  Future<T?> withConnected<T>(Future<T> Function(DeviceClient stub, ClientChannel channel) callback, {bool router = false} ) async {
    final channel = ClientChannel(
      router ? '192.168.1.1' : '192.168.100.1',
      port: router ? 9000 : 9200,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    final stub = DeviceClient(channel);

    try {
      T res = await callback(stub, channel);
      return res;
    } catch (e, s) {
      LogUtils.ers(_TAG, "", e, s);
      R.showSnackBarText("$e");
    }
    finally {
      await channel.shutdown();
    }

    return null;
  }

}
