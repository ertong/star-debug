import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
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

class DebugPage extends StatefulWidget {
  final String route;

  const DebugPage({super.key, this.route = Routes.MAIN});

  @override
  _DebugPageState createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> with TickerProviderStateMixin {

  String text = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.MAIN),
        body: Center(
          child: Column(children:
            _buildBody(),),
        )
    );
  }

  List<Widget> _buildBody(){
    List<Widget> res = [];

    res.add(TextButton(onPressed: (){
      test();
    }, child: Text("test")));

    res.add(Text(text));

    return res;
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.general.debug_data_viewer),
      centerTitle: true,
    );
  }


  Future test() async {
    print('try test');
    final channel = ClientChannel(
      'dev.z.min.org.ua',
      port: 20192,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    final stub = DeviceClient(channel);

    try {
      final response = await stub.handle(
        // Request()..getDeviceInfo = GetDeviceInfoRequest()
        Request()..getStatus = GetStatusRequest()
      );
      print('client received: ${response}');

      setState(() {
        text = '${response}';
      });
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }
}
