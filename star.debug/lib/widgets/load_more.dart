import 'dart:async';

import 'package:flutter/material.dart';
import 'package:star_debug/utils/log_utils.dart';

const String _TAG="LoadMore";

class LoadMore<TItem> extends StatefulWidget {
  final Widget Function(BuildContext context, LoadMoreState state, List<TItem>? items, int count, bool loadMoreError)? builder;

  final LoadMoreData<TItem>? Function()? dataBuilder;

  const LoadMore({super.key, this.builder, this.dataBuilder});

  @override
  LoadMoreState createState() => LoadMoreState<TItem>();
}

enum LoadMoreStateState{
  LOADING,
  ASK_RETRY,
  PRESENTING
}

class LoadMoreData<TItem>{
  List<TItem>? items = [];
  int? fixedItemCount;
  bool noMore = false;
  bool loadMoreError = false;
  void Function()? onChange;

  final Future<List<TItem>?> Function(LoadMoreData data, TItem? fromExclusive)?  callback;

  LoadMoreData({this.callback, this.onChange});

  void remove(TItem item) {
    items?.remove(item);
  }

  Future<void> load() async {
    items = await callback!(this, null);
    onChange?.call();
  }

  Future<void> loadMore() async{
    try {
      noMore = false;
      if (items?.isEmpty ?? true) {
        await load();
        if (items?.isEmpty ?? true)
          noMore = true;
        return;
      }

      var res = (await callback!(this, items![items!.length - 1]))!;
      if (res.isEmpty)
        noMore = true;
      else
        items!.addAll(res);
    } catch (e,s) {
      LogUtils.ers(_TAG, "", e, s);
      // print("Oy Wei Exception");
      // noMore = true;
      loadMoreError = true;
    }
    onChange?.call();
  }

}

class LoadMoreState<TItem> extends State<LoadMore<TItem>> {

  bool _isLoadingMore = false;
  int _loadTill = 0;
  LoadMoreData<TItem>? _data;

  LoadMoreStateState state = LoadMoreStateState.LOADING;

  @override
  void initState()
  {
    super.initState();

    _data = widget.dataBuilder!();

    // print("New LoadMoreState is created");
    _load();
  }

  Future<void> _load() async {
    setState(() {
      state = LoadMoreStateState.LOADING;
    });

    try {
      await _data!.load();
      _loadTill = _data!.items!.length - 1;
      state = LoadMoreStateState.PRESENTING;
    } catch(e,s) {
      LogUtils.ers(_TAG, "", e, s);
      state = LoadMoreStateState.ASK_RETRY;
    }

    if (mounted)
      setState(() {});
  }

  Future<void> _loadMore() async
  {
    // print("Load till $_loadTill");

    if (_isLoadingMore || _data!.noMore || _data!.loadMoreError)
      return;

    _isLoadingMore = true;

    await _data!.loadMore();

    _isLoadingMore = false;

    if (mounted)
      setState(() {
        if (_data!.noMore) {
          // print("Count was too large for some reason.");
          _loadTill = _data!.items!.length-1;
        }
        else {
          if (_loadTill <= _data!.items!.length-1) {
            _loadTill = _data!.items!.length - 1;
          }
          else
            _loadMore();
        }
      });
  }

  void retryLoadMore() {
    setState(() {
      _data!.loadMoreError = false;
    });
    _loadMore();
  }

  void requestItem(int pos){
    if (pos>_loadTill) {
      _loadTill = pos;
      if (!_isLoadingMore)
        _loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    var count = _data!.fixedItemCount;
    count ??= _data!.items!.length + (_data!.noMore?0:1);

    return widget.builder!(context, this, _data!.items, count, _data!.loadMoreError);
  }

  Future<void> refresh() async{
    if (state==LoadMoreStateState.ASK_RETRY)
      return await _load();
    else {
      try {
        await _data!.load();
        _loadTill = _data!.items!.length - 1;
        state = LoadMoreStateState.PRESENTING;
      } catch(e,s) {
        LogUtils.ers(_TAG, "", e, s);
        state = LoadMoreStateState.ASK_RETRY;
      }

      setState(() {});
    }
  }
}
