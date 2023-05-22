

import 'package:clipboard/clipboard.dart';
import 'package:flex_list/flex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/entity.dart';

class KVWidgetBuilder extends KVConsumer{

  ThemeData theme;

  List<Widget> widgets = [];

  KVWidgetBuilder(this.theme);

  @override
  void kvs(String k, String v) {
    widgets.add(InkWell(
      onTap: () async {
        await FlutterClipboard.copy(v);
        R.showSnackBar(SnackBar(
          duration: Duration(seconds: 2),
          content: Text("Copied: ${v}"),
        ));
      },
      child: FlexList(
        verticalSpacing: 0,
        horizontalSpacing: 7,
        children: [
          if (k.isNotEmpty)
            Text("$k:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )
            ),
          // Container(width: 5,),
          // Expanded(child: Container()),
          Text("$v",
            // overflow: TextOverflow.fade,
            textAlign: TextAlign.right,
          ),
        ],
      ),
    ));
  }

  void header(String name, {bool isAlert = false}){
    widgets.add(Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 2),
      child: Container(
          padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
          color: isAlert
              ? theme.colorScheme.tertiaryContainer
              : theme.secondaryHeaderColor,
          child: Row(
            children: [
              Text(name),
            ],
          )
      ),
    ));
  }

  @override
  void spacer() {
    widgets.add(
      SizedBox(height: 15,)
    );
  }

}