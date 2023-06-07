import 'dart:convert';

import 'package:drift/drift.dart' show TableStatements;
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/db/database.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/widgets/load_more.dart';
import 'package:star_debug/widgets/load_more_styled.dart';


const String _TAG="SnapshotsPage";

class SnapshotsPage extends StatefulWidget {
  final String dishId;

  const SnapshotsPage({super.key, required this.dishId});

  @override
  State createState() => _SnapshotsPageState();
}

class _SnapshotsPageState extends State<SnapshotsPage> with TickerProviderStateMixin {
  late LoadMoreData<DishLogRow> loadMoreData;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    loadMoreData = LoadMoreData<DishLogRow>(
      callback: (data, from) async {
          var list = await R.db.dishesDao.getDishLogs(from?.row.timestamp, widget.dishId, 10).get();
          return list.map((e) => DishLogRow(e)).toList();
      },
      onChange: () => setState(() {})
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);

    return WillPopScope(
        onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
        child: Scaffold(
          key: scaffoldKey,
          appBar: _buildBar(context) as PreferredSizeWidget?,
          drawer: AppDrawer(),
          body: Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10.0),
                  child: buildList()
              ),
            ],
          ),
        ));
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.my.snapshots),
      centerTitle: true,
      actions: [
        if ((loadMoreData.items?.length ?? 0) > 1)
            TextButton(
                onPressed: () async {
                  var res = await showDialog<bool>(context: context,
                      builder: (c) { return ConfirmDialog(
                          text: M.my.delete_all_snapshots_but_last_prompt(widget.dishId),
                          title: M.general.confirmation);
                      }
                  );

                  if (res==true) {
                    R.db.dishesDao.deleteDishLogsButLast(widget.dishId);
                    // await loadMoreData.load();
                    _refreshIndicatorKey.currentState?.show();
                  }
                },
                child: Icon(Icons.delete, color: Colors.white,)
            ),
      ],
    );
  }

  Widget buildList(){
    return LoadMore<DishLogRow>(
      key: ValueKey("dish-list"),
      dataBuilder: ()=>loadMoreData,
      builder: LoadMoreStyled.builder<DishLogRow>(buildRow, (state) async {
        await state.refresh();
      }, refreshIndicatorKey: _refreshIndicatorKey),
    );
  }

  Widget buildRow(DishLogRow log){
    DateTime? ts;
    ts = DateTime.fromMillisecondsSinceEpoch(log.row.timestamp);

    String? dishStr;
    bool dishOk = true;
    if (log.dish!=null) {
      dishStr = "${Format.sec(log.dish!.deviceState.uptimeS.toInt())}";
      if (log.dish!.hasDisablementCode())
        dishStr = "$dishStr, ${log.dish!.disablementCode}";

      if (log.dish!.disablementCode != UtDisablementCode.OKAY)
        dishOk = false;

      if (log.dish!.hasOutage()) {
        dishStr = "$dishStr, ${log.dish!.outage.cause}";
        dishOk = false;
      }
    }

    return Dismissible(
      key: ValueKey("log-${log.row.id}"),
      confirmDismiss: (dir) async {
        var res = await showDialog<bool>(context: context,
            builder: (c) { return ConfirmDialog(
                text: M.my.delete_snapshot_prompt(log.row.dishId, ts),
                title: M.general.confirmation);
            }
        );

        if (res==true) {
          R.db.dishLogs.deleteOne(log.row);
          return true;
        }

        return false;
      },
      onDismissed: (dir) async {
        loadMoreData.remove(log);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: InkWell(
          onTap: () async {
            await Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  SpaceParser p = log.row.debugDataJson!=null && log.row.debugDataJson!="null"
                      ? SpaceParser.ofJsonStr(log.row.debugDataJson!)
                      : SpaceParser.ofGrpc(log.row.timestamp, log.dish, log.router);
                  return DebugDataPage(parser: p);
                },
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(log.row.dishId),
              if (dishStr!=null)
                Row(
                  children: [
                    Icon(Icons.circle, color: dishOk ? Colors.green : Colors.red, size: 15,),
                    Text(dishStr),
                  ],
                ),
              Row(children: [
                Expanded(child: Text("${ts.toString()}")),
                Icon(Icons.bug_report, size: 18, color: log.hasDebugData() ? Colors.blue : Colors.blue.withAlpha(50),),
                Icon(Icons.settings_input_antenna, size: 18, color: log.hasDish() ? Colors.blue : Colors.blue.withAlpha(50),),
                Icon(Icons.router, size: 18, color: log.hasRouter() ? Colors.blue : Colors.blue.withAlpha(50),),
              ],),
            ],
          ),
        )
      ),
    );
  }

}

class DishLogRow {
  DishLog row;
  DishGetStatusResponse? dish;
  WifiGetStatusResponse? router;
  // bool _hasRouter = false;

  bool hasDebugData() => row.debugDataJson!=null && row.debugDataJson!="null";
  // bool hasDish() => row.dishStatusJson?.isNotEmpty ?? false;
  bool hasDish() => dish!=null;
  // bool hasRouter() => row.wifiStatusJson?.isNotEmpty ?? false;
  bool hasRouter() => router!=null;

  DishLogRow(this.row) {
    if (row.dishStatusJson?.isNotEmpty ?? false) {
      dish = DishGetStatusResponse.fromBuffer(row.dishStatusJson!);
    }

    if (row.wifiStatusJson?.isNotEmpty ?? false) {
      router = WifiGetStatusResponse.fromBuffer(row.wifiStatusJson!);
    }

    if (row.debugDataJson!=null && row.debugDataJson!="null") {
      var json = jsonDecode(row.debugDataJson!);

      var jsonDish = json["dish"] as Map<String, dynamic>?;
      if (jsonDish!=null && jsonDish.containsKey("deviceInfo")) {
        dish = DishGetStatusResponse();
        DebugDataHelper.jsonToProto(jsonDish, dish!);
      }

      var jsonRouter = json['router'] as Map<String, dynamic>?;
      // _hasRouter = jsonRouter!=null && jsonRouter.containsKey("deviceInfo");
      if (jsonRouter!=null && jsonRouter.containsKey("deviceInfo")) {
        router = WifiGetStatusResponse();
        DebugDataHelper.jsonToProto(jsonRouter, router!);
      }
    }
  }
}