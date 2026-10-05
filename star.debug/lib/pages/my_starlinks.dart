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
import 'package:star_debug/widgets/app_surface.dart';
import 'package:star_debug/widgets/app_drawer_pop_scope.dart';
import 'package:time_machine2/time_machine2.dart';

const String _TAG = "MyStarlinksPage";

class MyStarlinksPage extends StatefulWidget {
  const MyStarlinksPage({super.key});

  @override
  State createState() => _MyStarlinksPageState();
}

class _MyStarlinksPageState extends State<MyStarlinksPage>
    with TickerProviderStateMixin {
  late LoadMoreData<DishRow> loadMoreData;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();

    loadMoreData = LoadMoreData<DishRow>(
      callback: (data, from) async {
        var list = await R.db.dishesDao
            .getDishes(from?.row.dishId, from?.row.latestLogTimestamp, 10)
            .get();
        // print("${from?.row.dishId} ${from?.row.latestLogTimestamp} ${[for (var row in list) row.dishId]}");
        return list.map((e) => DishRow(e)).toList();
      },
      onChange: () => setState(() {}),
    );
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ThemeData theme = ThemeData.fallback();

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);

    return AppDrawerPopScope(
      scaffoldKey: scaffoldKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.MY_STARLINKS),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10.0),
              child: buildList(),
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
          IconButton(
            tooltip: "Delete all",
            onPressed: () async {
              var res = await showDialog<bool>(
                context: context,
                builder: (c) {
                  return ConfirmDialog(
                    text: M.my.delete_all_dished_prompt,
                    title: M.general.confirmation,
                  );
                },
              );

              if (res == true) {
                await R.db.dishLogs.deleteAll();
                await R.db.dishes.deleteAll();
                R.dishLog.invalidateAll();
                _refreshIndicatorKey.currentState?.show();
                setState(() {});
              }
            },
            icon: Icon(Icons.delete_outline),
          ),
      ],
    );
  }

  Widget buildList() {
    //    return Center(
    //      child: Text(M.general.notifications),
    //    );
    return LoadMore<DishRow>(
      key: ValueKey("dish-list"),
      dataBuilder: () => loadMoreData,
      builder: LoadMoreStyled.builder<DishRow>(buildRow, (state) async {
        await state.refresh();
      }, refreshIndicatorKey: _refreshIndicatorKey),
    );
  }

  Widget buildRow(DishRow dish) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    String? ts;
    if (dish.row.timestamp != null) {
      ts = Instant.fromEpochMilliseconds(
        dish.row.timestamp!,
      ).inLocalZone().toString("yyyy-MM-dd HH:mm:ss");
      var ago = Format.ago(dish.row.timestamp!);
      if (ago != null) ts = "$ts ($ago)";
    }

    return Dismissible(
      key: ValueKey("dish-${dish.row.id}"),
      confirmDismiss: (dir) async {
        var res = await showDialog<bool>(
          context: context,
          builder: (c) {
            return ConfirmDialog(
              text: M.my.delete_dish_prompt(dish.row.dishId),
              title: M.general.confirmation,
            );
          },
        );

        if (res == true) {
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
      background: _deleteBackground(Alignment.centerLeft),
      secondaryBackground: _deleteBackground(Alignment.centerRight),
      child: AppSurface(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.fromLTRB(14, 12, 10, 12),
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SnapshotsPage(dishId: dish.row.dishId);
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    dish.row.dishId,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(Icons.chevron_right, color: theme.disabledColor),
              ],
            ),
            SizedBox(height: 2),
            Text(
              "${dish.row.logCount} dumps",
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colors.onSurface.withAlpha(175),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    ts ?? "",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurface.withAlpha(155),
                    ),
                  ),
                ),
                _dataIcon(Icons.bug_report, dish.hasDebugData()),
                SizedBox(width: 6),
                _dataIcon(Icons.settings_input_antenna, dish.hasDish()),
                SizedBox(width: 6),
                _dataIcon(Icons.router, dish.hasRouter()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataIcon(IconData icon, bool available) {
    final theme = Theme.of(context);
    return Icon(
      icon,
      size: 18,
      color: available
          ? theme.colorScheme.primary
          : theme.disabledColor.withAlpha(80),
    );
  }

  Widget _deleteBackground(Alignment alignment) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 22),
      alignment: alignment,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error.withAlpha(215),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(Icons.delete_outline, color: Colors.white),
    );
  }
}

class DishRow {
  GetDishesResult row;
  DishGetStatusResponse? dish;
  bool _hasRouter = false;

  bool hasDebugData() =>
      row.debugDataJson != null && row.debugDataJson != "null";
  // bool hasDish() => row.dishStatusJson?.isNotEmpty ?? false;
  bool hasDish() => dish != null;
  // bool hasRouter() => row.wifiStatusJson?.isNotEmpty ?? false;
  bool hasRouter() => _hasRouter;

  DishRow(this.row) {
    if (row.dishStatusJson?.isNotEmpty ?? false) {
      dish = DishGetStatusResponse.fromBuffer(row.dishStatusJson!);
    }

    if (row.wifiStatusJson?.isNotEmpty ?? false) {
      _hasRouter = true;
    }

    if (row.debugDataJson != null && row.debugDataJson != "null") {
      var json = jsonDecode(row.debugDataJson!);

      var jsonDish = json["dish"] as Map<String, dynamic>?;
      if (jsonDish != null && jsonDish.containsKey("deviceInfo")) {
        dish = DishGetStatusResponse();
        DebugDataHelper.jsonToProto(jsonDish, dish!);
      }

      var jsonRouter = json['router'] as Map<String, dynamic>?;
      _hasRouter = jsonRouter != null && jsonRouter.containsKey("deviceInfo");
    }
  }
}
