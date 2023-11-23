
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';

class RecentInputDialog extends StatefulWidget
{
  final String title;
  final String type;
  final String text;
  const RecentInputDialog({super.key, required this.type, required this.title, required this.text});

  @override
  State createState() => _RecentInputDialogState();
}

class _RecentInputDialogState extends State<RecentInputDialog>
{
  static TextEditingController tecInput = TextEditingController();

  String? _searchingWithQuery;

  // The most recent options received from the API.
  late Iterable<RecentInput> _lastOptions = <RecentInput>[];

  List<RecentInput> options = [];

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState()
  {
    super.initState();
    // unawaited(() async {
    //
    // }());
  }

  // Future updateOptions() async {
  //   options =
  //       await R.db.recentInputsDao.find(widget.type, val.text.toLowerCase()).get();
  //   setState(() {});
  // }

  @override
  void dispose()
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        // insetPadding: EdgeInsets.fromLTRB(0, 0,0,0),
        titlePadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        contentPadding: EdgeInsets.all(10.0),
        // actionsPadding: EdgeInsets.all(0.0),

      title: Row(
        children: [
          Expanded(child: Text(widget.title)),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.fromLTRB(0,0,0,0),
            ) ,
            onPressed: (){
                Navigator.pop(context, null);
            }, child: Icon(Icons.close)
          )
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Autocomplete<RecentInput>(
                  displayStringForOption: (val) => val.data ?? "",
                  optionsViewBuilder: (BuildContext _,AutocompleteOnSelected<RecentInput> onSelected, Iterable<RecentInput> options){
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        elevation: 4.0,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 200, maxWidth: constraints.maxWidth+20),
                          child: AnimatedList(
                            key: _listKey,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            initialItemCount: options.length,
                            itemBuilder: (BuildContext context, int index, animation) {
                              var option = options.elementAt(index);
                              final bool highlight = AutocompleteHighlightedOption.of(context) == index;
                              // looks like need one more builder here
                              // if (highlight) {
                              //   SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
                              //     Scrollable.ensureVisible(context, alignment: 0.5);
                              //   });
                              // }
                              return SizeTransition(
                                sizeFactor: animation,
                                child: Container(
                                  color: highlight ? Theme.of(context).focusColor : null,
                                  child: ListTile(
                                      dense: true,
                                      onTap: () {
                                        onSelected(option);
                                      },
                                      trailing: IconButton(
                                          onPressed: () async {
                                            // await R.db.recentInputsDao.removeInput(widget.type, option.data);
                                            var lst = (options as List);
                                            var idx = lst.indexOf(option);
                                            lst.removeAt(idx);
                                            _listKey.currentState?.removeItem(idx, (context, animation) =>
                                                SizeTransition(
                                                  sizeFactor: animation,
                                                  child: ListTile(
                                                    dense: true,
                                                    trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: Colors.red,)),
                                                    title: Text(option.data)
                                                  ),
                                                )
                                            );

                                            setState(() {});
                                            // setState(() {
                                            //   _kOptions.remove(text);
                                            // });
                                            // print(_kOptions);
                                          },
                                          icon: const Icon(Icons.delete, color: Colors.red,)),
                                      title: Text(option.data)),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );

                  },
                  optionsBuilder: (TextEditingValue val) async{
                    _searchingWithQuery = val.text;
                    print("AAAAAAAAA");
                    final Iterable<RecentInput> options =
                        await R.db.recentInputsDao.find(widget.type, val.text.toLowerCase()).get();
                        // await _FakeAPI.search(_searchingWithQuery!);
                    print("BBBBBBBBB $options");

                    // If another search happened after this one, throw away these options.
                    // Use the previous options intead and wait for the newer request to
                    // finish.
                    if (_searchingWithQuery != val.text) {
                      return _lastOptions;
                    }

                    _lastOptions = options;
                    return options;
                  },
                  onSelected: (RecentInput selection) {
                    debugPrint('You just selected $selection');
                  },
                );
              }
            ),
            // SizedBox(height: 5,),
            // Wrap(
            //   alignment: WrapAlignment.spaceBetween,
            //   children: [
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
            //           fixedSize: Size(80, 70)
            //       ),
            //       onPressed: () {
            //         if (formKey.currentState!.validate()) {
            //           Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_WIFI, name:tecName.text, pass:tecPassword.text));
            //         }
            //       },
            //       child: Text(M.wifi.setup_ssid_and_password, textAlign: TextAlign.center,),
            //     ),
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
            //           fixedSize: Size(80, 70)
            //       ),
            //       onPressed: () {
            //         Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_SKIP));
            //       },
            //       child: Text(M.wifi.keep_default_wifi_settings, textAlign: TextAlign.center),
            //     ),
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
            //           fixedSize: Size(80, 70)
            //       ),
            //       onPressed: () {
            //         Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_BYPASS));
            //       },
            //       child: Text(M.wifi.enable_bypass_mode, textAlign: TextAlign.center),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),

      actions: <Widget>[
      ],
    );
  }
}

class WifiSetupResult{
  static const String RES_SKIP = "skip";
  static const String RES_WIFI = "wifi";
  static const String RES_BYPASS = "bypass";
  String result;
  String? name;
  String? pass;

  WifiSetupResult(this.result, {this.name, this.pass});
}