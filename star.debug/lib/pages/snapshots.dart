import 'package:drift/drift.dart' show TableStatements;
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:star_debug/db/database.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/network.pbenum.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/widgets/load_more.dart';
import 'package:star_debug/widgets/load_more_styled.dart';
import 'package:star_debug/widgets/app_surface.dart';
import 'package:star_debug/widgets/app_drawer_pop_scope.dart';
import 'package:time_machine2/time_machine2.dart';

const String _TAG = "SnapshotsPage";

class SnapshotsPage extends StatefulWidget {
  final String dishId;

  const SnapshotsPage({super.key, required this.dishId});

  @override
  State createState() => _SnapshotsPageState();
}

class _SnapshotsPageState extends State<SnapshotsPage>
    with TickerProviderStateMixin {
  late LoadMoreData<DishLogRow> loadMoreData;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    loadMoreData = LoadMoreData<DishLogRow>(
      callback: (data, from) async {
        var list = await R.db.dishesDao
            .getDishLogs(from?.row.timestamp, widget.dishId, 10)
            .get();
        return list.map((e) => DishLogRow(e)).toList();
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
        drawer: AppDrawer(),
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
      title: Text(M.my.snapshots),
      centerTitle: true,
      actions: [
        if ((loadMoreData.items?.length ?? 0) > 1)
          IconButton(
            tooltip: "Delete older snapshots",
            onPressed: () async {
              var res = await showDialog<bool>(
                context: context,
                builder: (c) {
                  return ConfirmDialog(
                    text: M.my.delete_all_snapshots_but_last_prompt(
                      widget.dishId,
                    ),
                    title: M.general.confirmation,
                  );
                },
              );

              if (res == true) {
                R.db.dishesDao.deleteDishLogsButLast(widget.dishId);
                // await loadMoreData.load();
                R.dishLog.invalidateOne(widget.dishId);
                _refreshIndicatorKey.currentState?.show();
              }
            },
            icon: Icon(Icons.delete_outline),
          ),
      ],
    );
  }

  Widget buildList() {
    return LoadMore<DishLogRow>(
      key: ValueKey("dish-list"),
      dataBuilder: () => loadMoreData,
      builder: LoadMoreStyled.builder<DishLogRow>(buildRow, (state) async {
        await state.refresh();
      }, refreshIndicatorKey: _refreshIndicatorKey),
    );
  }

  Widget buildRow(DishLogRow log) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    String? ts = Instant.fromEpochMilliseconds(
      log.row.timestamp,
    ).inLocalZone().toString("yyyy-MM-dd HH:mm:ss");
    {
      var ago = Format.ago(log.row.timestamp);
      if (ago != null) ts = "$ts ($ago)";
    }

    String? dishStr;
    bool dishOk = true;
    var dish = log.snap.dishGetStatus;
    if (dish != null) {
      dishStr = "${Format.sec(dish.deviceState.uptimeS.toInt())}";
      if (dish.hasDisablementCode())
        dishStr = "$dishStr, ${dish.disablementCode}";

      if (dish.disablementCode != UtDisablementCode.OKAY) dishOk = false;

      if (dish.hasOutage()) {
        dishStr = "$dishStr, ${dish.outage.cause}";
        dishOk = false;
      }
    }

    return Dismissible(
      key: ValueKey("log-${log.row.id}"),
      confirmDismiss: (dir) async {
        var res = await showDialog<bool>(
          context: context,
          builder: (c) {
            return ConfirmDialog(
              text: M.my.delete_snapshot_prompt(log.row.dishId, ts),
              title: M.general.confirmation,
            );
          },
        );

        if (res == true) {
          R.db.dishLogs.deleteOne(log.row);
          R.dishLog.invalidateOne(widget.dishId);
          return true;
        }

        return false;
      },
      onDismissed: (dir) async {
        loadMoreData.remove(log);
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
                return SnapshotPage(snap: log.snap);
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
                    log.row.dishId,
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
            if (dishStr != null)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: dishOk ? Colors.green : Colors.red,
                      size: 11,
                    ),
                    SizedBox(width: 6),
                    Expanded(child: Text(dishStr)),
                  ],
                ),
              ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "$ts",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurface.withAlpha(155),
                    ),
                  ),
                ),
                if (log.row.forceStore)
                  _dataIcon(Icons.person, true)
                else
                  _dataIcon(Icons.bug_report, log.hasDebugData()),
                SizedBox(width: 6),
                _dataIcon(Icons.settings_input_antenna, log.hasDish()),
                SizedBox(width: 6),
                _dataIcon(Icons.router, log.hasRouter()),
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

class DishLogRow {
  DishLog row;
  late Snapshot snap;

  bool hasDebugData() =>
      row.debugDataJson != null && row.debugDataJson != "null";
  // bool hasDish() => row.dishStatusJson?.isNotEmpty ?? false;
  bool hasDish() => snap.dishGetStatus != null;
  // bool hasRouter() => row.wifiStatusJson?.isNotEmpty ?? false;
  bool hasRouter() => snap.routerGetStatus != null;

  DishLogRow(this.row) {
    snap = Snapshot.ofRow(row);
  }
}
