import 'dart:async';

import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/kv_widget.dart';

const String _TAG="OnlineTab";

class OnlineTab extends StatefulWidget {
  const OnlineTab({super.key});

  @override
  State createState() => _OnlineTabState();
}

class _OnlineTabState extends State<OnlineTab> with TickerProviderStateMixin {

  StreamSubscription? subOnline;

  @override
  void initState() {
    super.initState();
    subOnline = R.onlineHolder.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    subOnline?.cancel();
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return Center(
      child: Column(children:
      _buildBody(),),
    );
  }

  List<Widget> _buildBody(){
    final online = R.online;

    if (online==null)
      return [Center(child: Text("Stating ... "))];

    List<Widget> rows = [];

    var b = KVWidgetBuilder(theme);
    online.consume(b);
    rows.addAll(b.widgets);

    return rows;
  }

}
