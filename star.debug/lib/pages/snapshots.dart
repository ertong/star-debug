import 'dart:convert';

import 'package:drift/drift.dart' show TableStatements;
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/db/database.dart';
import 'package:star_debug/db/models/dish_logs.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/debug_data.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/widgets/load_more.dart';
import 'package:star_debug/widgets/load_more_styled.dart';
import 'package:time_machine/time_machine.dart';


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
                    R.dishLog.invalidateOne(widget.dishId);
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
    String? ts = Instant.fromEpochMilliseconds(log.row.timestamp).inLocalZone().toString("yyyy-MM-dd HH:mm:ss");
    {
      var ago = Format.ago(log.row.timestamp);
      if (ago != null)
        ts = "$ts ($ago)";
    }

    String? dishStr;
    bool dishOk = true;
    var dish = log.snap.dishGetStatus;
    if (dish!=null) {
      dishStr = "${Format.sec(dish.deviceState.uptimeS.toInt())}";
      if (dish.hasDisablementCode())
        dishStr = "$dishStr, ${dish.disablementCode}";

      if (dish.disablementCode != UtDisablementCode.OKAY)
        dishOk = false;

      if (dish.hasOutage()) {
        dishStr = "$dishStr, ${dish.outage.cause}";
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
          R.dishLog.invalidateOne(widget.dishId);
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
                  return SnapshotPage(snap: log.snap);
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
                Expanded(child: Text("$ts")),
                if (log.row.forceStore)
                  Icon(Icons.person, size: 18, color: Colors.blue)
                else
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
  late Snapshot snap;

  bool hasDebugData() => row.debugDataJson!=null && row.debugDataJson!="null";
  // bool hasDish() => row.dishStatusJson?.isNotEmpty ?? false;
  bool hasDish() => snap.dishGetStatus!=null;
  // bool hasRouter() => row.wifiStatusJson?.isNotEmpty ?? false;
  bool hasRouter() => snap.routerGetStatus!=null;

  DishLogRow(this.row) {
    snap = Snapshot.ofRow(row);
  }
}