import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/db/dao/dishes_dao.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/pages/dialogs/save_debug_data.dart';
import 'package:star_debug/pages/snapshots.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/pages/view/router.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/space/entity.dart';
import 'package:star_debug/space/obstructions.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/api_helper.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/widgets/load_more.dart';
import 'package:star_debug/widgets/load_more_styled.dart';

import '../utils/kv_widget.dart';

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
          var list = await R.db.dishesDao.getDishes(from?.row.dishId, 10).get();
          return list.map((e) => DishRow(e)).toList();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  ThemeData theme = ThemeData.fallback();
  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);

    return Scaffold(
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
    );
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.my.my_starlinks),
      centerTitle: true,
      actions: [

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
    DateTime? ts;
    if (dish.row.timestamp!=null)
      ts = DateTime.fromMillisecondsSinceEpoch(dish.row.timestamp!);

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          // BoxShadow()
        ]
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
              Expanded(child: Text("${ts?.toString() ?? ""}")),
              Icon(Icons.bug_report, size: 18, color: dish.hasDebugData() ? Colors.blue : Colors.blue.withAlpha(50),),
              Icon(Icons.settings_input_antenna, size: 18, color: dish.hasDish() ? Colors.blue : Colors.blue.withAlpha(50),),
              Icon(Icons.router, size: 18, color: dish.hasRouter() ? Colors.blue : Colors.blue.withAlpha(50),),
            ],),
          ],
        ),
      )
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