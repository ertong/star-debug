

import 'package:clipboard/clipboard.dart';
import 'package:flex_list/flex_list.dart';
import 'package:flutter/material.dart';
import 'package:star_debug/pages/dialogs/hint.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/kv_consumer.dart';

class KVWidgetBuilder extends KVConsumer{

  ThemeData theme;
  BuildContext context;

  List<Widget> widgets = [];

  KVWidgetBuilder(this.context, this.theme);

  Future onCopy(String v) async {
    if (v.isEmpty)
      return;
    await FlutterClipboard.copy(v);
    R.showSnackBar(SnackBar(
      duration: Duration(seconds: 2),
      content: Text("Copied: $v"),
    ));
  }

  @override
  void kvs(String k, String v, {bool? ok, String? hint, bool isLoading = false}) {
    widgets.add(InkWell(
      onTap: () async {
        if (hint==null)
          await onCopy("$k: $v");
        else {
          await showDialog(context: context, builder: (c) => HintDialog(k: k, v: v, hint: hint));
        }
      },
      onLongPress: ()async {
        onCopy("$k: $v");
      },
      child: FlexList(
        verticalSpacing: 0,
        horizontalSpacing: 7,
        children: [
          if (k.isNotEmpty)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (ok!=null)
                  ...[
                    Icon(Icons.circle, color: ok? Colors.green : Colors.red, size: 15,),
                    SizedBox(width: 4,)
                  ],

                Text("$k:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                ),
                if (hint!=null)
                  Icon(Icons.info_outline, size: 14, color: Colors.blue,),
              ],
            ),
          // Container(width: 5,),
          // Expanded(child: Container()),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isLoading)
                ...[
                  SizedBox(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(strokeWidth: 2,)
                  ),
                  if (v!="")
                    SizedBox(width: 5,)
                ],
              Flexible(
                child: Text("$v",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void header(String name, {bool isAlert = false, List<Widget> more=const [], Function()? onTap}){
    widgets.add(GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 2),
        child: Container(
            padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
            color: isAlert
                ? theme.colorScheme.error.withAlpha(150)
                : theme.secondaryHeaderColor,
            child: Row(
              children: [
                Text(name),
                ...more
              ],
            )
        ),
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