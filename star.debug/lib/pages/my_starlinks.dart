import 'dart:convert';

import 'package:drift/drift.dart' show TableStatements;
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/db/dao/dishes_dao.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
import 'package:star_debug/pages/snapshots.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/widgets/load_more.dart';
import 'package:star_debug/widgets/load_more_styled.dart';
import 'package:time_machine/time_machine.dart';


const String _TAG="MyStarlinksPage";

class MyStarlinksPage extends StatefulWidget {
  const MyStarlinksPage({super.key});

  @override
  State createState() => _MyStarlinksPageState();
}

class _MyStarlinksPageState extends State<MyStarlinksPage> with TickerProviderStateMixin {

  late LoadMoreData<DishRow> loadMoreData;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();

    loadMoreData = LoadMoreData<DishRow>(
      callback: (data, from) async {
          var list = await R.db.dishesDao.getDishes(from?.row.dishId, from?.row.latestLogTimestamp, 10).get();
          // print("${from?.row.dishId} ${from?.row.latestLogTimestamp} ${[for (var row in list) row.dishId]}");
          return list.map((e) => DishRow(e)).toList();
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
          drawer: AppDrawer(selectedRoute: Routes.MY_STARLINKS),
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10.0),
                child: buildList()
              ),
            ],
          ),
      ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.my.my_starlinks),
      centerTitle: true,
      actions: [
        if (loadMoreData.items?.isNotEmpty ?? false)
          TextButton(
              onPressed: () async {
                var res = await showDialog<bool>(context: context,
                    builder: (c) { return ConfirmDialog(
                        text: M.my.delete_all_dished_prompt,
                        title: M.general.confirmation);
                    }
                );

                if (res==true) {
                  await R.db.dishLogs.deleteAll();
                  await R.db.dishes.deleteAll();
                  R.dishLog.invalidateAll();
                  _refreshIndicatorKey.currentState?.show();
                  setState(() {});
                }
              },
              child: Icon(Icons.delete, color: Colors.white,)
          ),
      ],
    );
  }

  Widget buildList(){
//    return Center(
//      child: Text(M.general.notifications),
//    );
    return LoadMore<DishRow>(
      key: ValueKey("dish-list"),
      dataBuilder: ()=>loadMoreData,
      builder: LoadMoreStyled.builder<DishRow>(buildRow, (state) async {
        await state.refresh();
      }, refreshIndicatorKey: _refreshIndicatorKey),
    );
  }

  Widget buildRow(DishRow dish){
    String? ts;
    if (dish.row.timestamp!=null) {
      ts = Instant.fromEpochMilliseconds(dish.row.timestamp!).inLocalZone().toString("yyyy-MM-dd HH:mm:ss");
      var ago = Format.ago(dish.row.timestamp!);
      if (ago!=null)
        ts = "$ts ($ago)";
    }

    return Dismissible(
      key: ValueKey("dish-${dish.row.id}"),
      confirmDismiss: (dir) async {
        var res = await showDialog<bool>(context: context,
            builder: (c) { return ConfirmDialog(
                text: M.my.delete_dish_prompt(dish.row.dishId),
                title: M.general.confirmation);
            }
        );

        if (res==true) {
          await R.db.dishesDao.deleteDishLogs(dish.row.dishId);
          await R.db.dishesDao.deleteDish(dish.row.dishId);
          R.dishLog.invalidateOne(dish.row.dishId);
          return true;
        }

        return false;
      },
      onDismissed: (dir) async {
        loadMoreData.remove(dish);
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
                  return SnapshotsPage(dishId: dish.row.dishId,);
                },
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dish.row.dishId),
              Text("${dish.row.logCount} dumps"),
              Row(children: [
                Expanded(child: Text("${ts ?? ""}")),
                Icon(Icons.bug_report, size: 18, color: dish.hasDebugData() ? Colors.blue : Colors.blue.withAlpha(50),),
                Icon(Icons.settings_input_antenna, size: 18, color: dish.hasDish() ? Colors.blue : Colors.blue.withAlpha(50),),
                Icon(Icons.router, size: 18, color: dish.hasRouter() ? Colors.blue : Colors.blue.withAlpha(50),),
              ],),
            ],
          ),
        )
      ),
    );
  }

}

class DishRow {
  GetDishesResult row;
  DishGetStatusResponse? dish;
  bool _hasRouter = false;

  bool hasDebugData() => row.debugDataJson!=null && row.debugDataJson!="null";
  // bool hasDish() => row.dishStatusJson?.isNotEmpty ?? false;
  bool hasDish() => dish!=null;
  // bool hasRouter() => row.wifiStatusJson?.isNotEmpty ?? false;
  bool hasRouter() => _hasRouter;

  DishRow(this.row) {
    if (row.dishStatusJson?.isNotEmpty ?? false) {
      dish = DishGetStatusResponse.fromBuffer(row.dishStatusJson!);
    }

    if (row.wifiStatusJson?.isNotEmpty ?? false) {
      _hasRouter = true;
    }

    if (row.debugDataJson!=null && row.debugDataJson!="null") {
      var json = jsonDecode(row.debugDataJson!);

      var jsonDish = json["dish"] as Map<String, dynamic>?;
      if (jsonDish!=null && jsonDish.containsKey("deviceInfo")) {
        dish = DishGetStatusResponse();
        DebugDataHelper.jsonToProto(jsonDish, dish!);
      }

      var jsonRouter = json['router'] as Map<String, dynamic>?;
      _hasRouter = jsonRouter!=null && jsonRouter.containsKey("deviceInfo");
    }
  }
}