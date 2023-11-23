
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
  TextEditingController tecInput = TextEditingController();

  String? _searchingWithQuery;

  List<RecentInput> options = [];

  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState()
  {
    super.initState();
    tecInput.text = widget.text;
    tecInput.addListener(() {
      unawaited(updateOptions());
    });
    unawaited(updateOptions());


  }

  @override
  void dispose()
  {
    super.dispose();
  }

  Future<void> updateOptions() async{
        var text = tecInput.text;
        if (_searchingWithQuery == text)
          return;
        _searchingWithQuery = text;

        print("AAAAAAAAA ${widget.type} '$text'");
        var newOptions =
            await R.db.recentInputsDao.find(widget.type, text.trim().toLowerCase()).get();
            // await _FakeAPI.search(_searchingWithQuery!);
        print("BBBBBBBBB ${newOptions.length}");

        // If another search happened after this one, throw away these options.
        // Use the previous options intead and wait for the newer request to
        // finish.
        if (_searchingWithQuery == tecInput.text) {
          options = newOptions;
          _listKey = GlobalKey<AnimatedListState>();
          setState(() {});
        }
        else
          print("CHANGED ${_searchingWithQuery} ${tecInput.text}");
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
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: tecInput,
            autofocus: true,
            decoration: InputDecoration(
                labelText: M.recent.search,
                // floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: tecInput.text.isEmpty ? null : IconButton(icon: Icon(Icons.clear, color: Colors.grey, size: 20,), onPressed: () async {
                    setState(() {
                      tecInput.text="";
                    });
                },)
            ),
          ),
          if (options.isEmpty)
            Expanded(
              child: Center(child: Text(M.recent.no_options)
              ),
            )
          else
            Expanded(
            child: AnimatedList(
              key: _listKey,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              initialItemCount: options.length,
              itemBuilder: (BuildContext context, int index, animation) {
                var option = options.elementAt(index);
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      onTap: () {
                        // onSelected(option);
                        Navigator.pop(context, option.data);
                      },
                      trailing: IconButton(
                          onPressed: () async {
                            var lst = (options as List);
                            var idx = lst.indexOf(option);
                            lst.removeAt(idx);
                            await R.db.recentInputsDao.removeInput(widget.type, option.data);
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
                          },
                          icon: const Icon(Icons.delete, color: Colors.red,)),
                      title: Text(option.data)),
                );
              },
            ),
          ),
        ],
      ),

      actions: <Widget>[
      ],
    );
  }
}
