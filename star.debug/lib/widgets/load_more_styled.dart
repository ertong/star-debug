import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/widgets/load_more.dart';

class LoadMoreStyled {
  static Widget Function(
    BuildContext context,
    LoadMoreState state,
    List<TItem>? items,
    int count,
    bool loadMoreError,
  )
  builder<TItem>(
    Widget Function(TItem item) itemBuilder,
    Future Function(LoadMoreState state) onRefresh, {
    GlobalKey<RefreshIndicatorState>? refreshIndicatorKey,
  }) {
    return (
      BuildContext context,
      state,
      List<TItem>? items,
      int count,
      bool loadMoreError,
    ) {
      if (state.state == LoadMoreStateState.LOADING) {
        return Center(child: CircularProgressIndicator());
      }

      if (state.state == LoadMoreStateState.ASK_RETRY)
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.cloud_off_outlined,
                size: 40,
                color: Theme.of(context).colorScheme.error,
              ),
              SizedBox(height: 12),
              Text(M.general.loading_error),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text(M.general.try_again),
                onPressed: () {
                  state.refresh();
                },
              ),
            ],
          ),
        );

      return RefreshIndicator(
        key: refreshIndicatorKey,
        onRefresh: () async {
          await onRefresh(state);
        },
        child: count == 0
            ? ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.22),
                  Icon(
                    Icons.inbox_outlined,
                    size: 48,
                    color: Theme.of(context).disabledColor,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      M.general.no_items,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).disabledColor,
                      ),
                    ),
                  ),
                ],
              )
            : ListView.builder(
                itemCount: count,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int i) {
                  if (i < items!.length) {
                    return itemBuilder(items[i]);
                  } else {
                    if (loadMoreError) {
                      return Container(
                        decoration: BoxDecoration(
                          // border: Border(bottom: BorderSide(color: const Color(0x88e4c273))),
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(M.general.loading_error),
                              ElevatedButton(
                                child: Text(M.general.try_again),
                                onPressed: () {
                                  state.retryLoadMore();
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      state.requestItem(i);
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
      );
    };
  }
}
