import 'dart:async';
import 'dart:developer';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:convert/convert.dart' show hex;
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart' as pbgrpc;
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

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
          key: scaffoldKey,
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
      ),
    );
  }

  List<Widget> _buildBody(){
    List<Widget> res = [];

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton(onPressed: (){
          throw Exception("Test Exception at ${DateTime.now().toString()}");
        }, child: Text("Throw Test Exception")),
        OutlinedButton(onPressed: (){
          test1();
        }, child: Text("test")),
      ],
    ));

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
        }, child: Text("GetObstructionMap")),
        OutlinedButton(onPressed: (){
          getLocation();
        }, child: Text("GetLocation")),
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

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("WifiSetup", () => Request(wifiSetup: WifiSetupRequest(skip: true, networkName: "ErtStar", networkPassword: "monolit71")), router: true),

      ],
    ));

    // UNIMPLEMENTED, NO PERMISSION
    // res.add(Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     reqButton("GetPersistentStats", () => Request(getPersistentStats: GetPersistentStatsRequest()), router: true),
    //     reqButton("DishClearObstructionMap", () => Request(dishClearObstructionMap: DishClearObstructionMapRequest()), router: true),
    //     reqButton("GetDiagnosticsRequest", () => Request(getDiagnostics: GetDiagnosticsRequest()), router: true),
    //     reqButton("ResetButtonRequest", () => Request(resetButton: ResetButtonRequest()), router: true),
    //     reqButton("TcpConnectivityTestRequest", () => Request(tcpConnectivityTest: TcpConnectivityTestRequest()), router: true),
    //     reqButton("UdpConnectivityTestRequest", () => Request(udpConnectivityTest: UdpConnectivityTestRequest()), router: true),
    //     reqButton("DishSetConfigRequest", () => Request(dishSetConfig: DishSetConfigRequest(
    //         dishConfig: DishConfig(
    //           applyPowerSaveMode: false,
    //         )
    //     )), router: false),
    //   ],
    // ));

    res.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reqButton("UpdateRequestRouter", () => Request(update: UpdateRequest()), router: true),
      ],
    ));

    res.add(InkWell(
      onTap: () async {
        if (text.isEmpty)
          return;
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

  Future getLocation() async {
    // LogUtils.d(_TAG, "${await R.starChannel.test()}");
    try {
      // var r = await R.starChannel.httpTest("http://1.1.1.1", "GET", null);

      await withConnected<DishGetConfigResponse?>((stub, channel) async {
        var res = await stub.handle(Request(getLocation: GetLocationRequest(source: PositionSource.STARLINK)));
        log("Starlink location: ${jsonEncode(res.toProto3Json())}");

        var res1 = await stub.handle(Request(getLocation: GetLocationRequest(source: PositionSource.GPS)));
        log("Starlink GPS location: ${jsonEncode(res1.toProto3Json())}");


        setState(() {
          text = "${jsonEncode(res.toProto3Json())}\n\n ${jsonEncode(res1.toProto3Json())}";
        });
        return null;
      }, router: false);

    } catch(e,s){
      setState(() {
        text = "$e $s";
      });
    }
  }

  Future test1() async {
    try {
      for (var s in [
        "6A 1C 75 74 30 31 30 30 30 30 30 30 2D 30 30 30 30 30 30 30 30 2D 30 30 32 61 32 38 32 37 E2 3E 00",
        "08 92 03 18 09 a2 7d c5 02 0a 6f 0a 1c 75 74 30 31 30 30 30 30 30 30 2d 30 30 30 30 30 30 30 30 2d 30 30 32 61 32 38 32 37 12 0b 72 65 76 33 5f 70 72 6f 74 6f 32 1a 32 35 66 64 38 62 35 31 32 2d 65 65 34 36 2d 34 37 63 36 2d 62 62 36 36 2d 65 35 32 62 38 64 32 66 33 62 65 30 2e 75 74 65 72 6d 2e 72 65 6c 65 61 73 65 22 02 55 41 28 91 1c 40 c4 1a 60 9a a9 f1 a5 06 12 04 08 e7 dd 0f e2 3e 1c 0d 5b cc 42 3d 25 40 07 7b 48 35 7b 10 07 3f 3d 91 2d 62 43 4d cf cd 04 3b 50 c7 1e ea 3e 02 38 01 fd 3e 65 19 e2 46 85 3f 38 bb b5 46 8d 3f 0c c3 24 42 9d 3f f1 be a3 c1 a5 3f 91 f7 8b 42 ba 3f 04 08 01 10 07 c0 3f e8 07 c8 3f 01 d0 3f 01 da 3f 0c 08 01 10 01 18 01 20 01 28 01 30 01 e8 3f 01 80 40 02 88 40 01 92 40 07 08 01 15 00 00 80 3f 9a 40 16 1d dc f4 9f 41 25 f1 be a3 c1 2d 91 f7 8b 42 30 02 3d ad 94 e0 3e 82 7d 1e 08 02 20 ec 09 28 f0 01 c8 3e 01 88 7d 01 c8 bb 01 01 88 fa 01 01 c8 b8 02 01 88 f7 02 01 a2 40 1c 08 e3 02 10 25 18 ad 03 20 d2 02 28 d7 02 30 b7 07 38 c6 02 40 d5 02 48 23 50 e5 02",
        "6A 1C 75 74 30 31 30 30 30 30 30 30 2D 30 30 30 30 30 30 30 30 2D 30 30 32 61 32 38 32 37 D2 7D 05 0A 03 88 7D 01",
        "08 91 03 18 09 D2 7D 20 0A 1E 08 02 20 EC 09 28 F0 01 C8 3E 01 88 7D 01 C8 BB 01 01 88 FA 01 01 C8 B8 02 01 88 F7 02 01",
        "6A 1C 75 74 30 31 30 30 30 30 30 30 2D 30 30 30 30 30 30 30 30 2D 30 30 32 61 32 38 32 37 D2 7D 07 0A 05 10 01 88 7D 01",
        "08 93 03 18 09 D2 7D 22 0A 20 08 02 10 01 20 EC 09 28 F0 01 C8 3E 01 88 7D 01 C8 BB 01 01 88 FA 01 01 C8 B8 02 01 88 F7 02 01",
        "6A 1C 75 74 30 31 30 30 30 30 30 30 2D 30 30 30 30 30 30 30 30 2D 30 30 32 61 32 38 32 37 E2 3E 00",
        "08 94 03 18 09 A2 7D C7 02 0A 6F 0A 1C 75 74 30 31 30 30 30 30 30 30 2D 30 30 30 30 30 30 30 30 2D 30 30 32 61 32 38 32 37 12 0B 72 65 76 33 5F 70 72 6F 74 6F 32 1A 32 35 66 64 38 62 35 31 32 2D 65 65 34 36 2D 34 37 63 36 2D 62 62 36 36 2D 65 35 32 62 38 64 32 66 33 62 65 30 2E 75 74 65 72 6D 2E 72 65 6C 65 61 73 65 22 02 55 41 28 91 1C 40 C4 1A 60 9A A9 F1 A5 06 12 04 08 F4 DD 0F E2 3E 1C 0D 5B CC 42 3D 25 80 0A 7B 48 35 7B 10 07 3F 3D 91 2D 62 43 4D 16 CC 04 3B 50 C7 1E EA 3E 02 38 01 FD 3E 75 3F 27 46 85 3F 33 DD EB 46 8D 3F 9A 99 88 42 9D 3F A5 1E A5 C1 A5 3F 7D EC 8B 42 BA 3F 04 08 01 10 06 C0 3F E8 07 C8 3F 01 D0 3F 01 DA 3F 0C 08 01 10 01 18 01 20 01 28 01 30 01 E8 3F 01 80 40 02 88 40 01 92 40 07 08 01 15 00 00 80 3F 9A 40 16 1D 48 DD 9F 41 25 A5 1E A5 C1 2D 7D EC 8B 42 30 02 3D 0A 86 B8 3E 82 7D 20 08 02 10 01 20 EC 09 28 F0 01 C8 3E 01 88 7D 01 C8 BB 01 01 88 FA 01 01 C8 B8 02 01 88 F7 02 01 A2 40 1C 08 E3 02 10 25 18 AD 03 20 D2 02 28 D7 02 30 B7 07 38 C6 02 40 D5 02 48 23 50 E5 02",
      ]) {
        var data = hex.decode(
            s.replaceAll(" ", ""));
      var r = pbgrpc.Request.fromBuffer(data);
      // var r = Request(dishGetConfig: DishGetConfigRequest());
      // var r = Request(dishGetObstructionMap: DishGetObstructionMapRequest());

      log("AAAAAAAAAA: ${jsonEncode(r.toProto3Json())}");
      // log("AAAAAAAAAA: ${hex.encode(r.writeToBuffer())}");
    }
    } catch (e, s) {
      LogUtils.ers("Debug", "", e, s);
      setState(() {
        text = "$e $s";
      });
    }
  }
}
