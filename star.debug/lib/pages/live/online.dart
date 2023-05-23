import 'package:flutter/material.dart' hide Notification, Card, ConnectionState;

const String _TAG="OnlineTab";

class OnlineTab extends StatefulWidget {
  const OnlineTab({super.key});

  @override
  State createState() => _OnlineTabState();
}

class _OnlineTabState extends State<OnlineTab> with TickerProviderStateMixin {

  // StreamSubscription? grpcSubs;

  @override
  void initState() {
    super.initState();
    // grpcSubs = R.grpc.routerHolder.stream.listen((event) {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // grpcSubs?.cancel();
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
    // final RouterConnection? conn = R.grpc.router;
    //
    // if (conn==null || conn.isClosed)
    //   return [ Text("Connection not initialized") ];

    List<Widget> rows = [];

    int now = DateTime.now().millisecondsSinceEpoch;

    return rows;
  }

}
