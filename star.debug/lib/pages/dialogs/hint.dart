
import 'package:clipboard/clipboard.dart';
import 'package:flex_list/flex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';

class HintDialog extends StatefulWidget
{
  final String k;
  final String v;
  final String hint;
  const HintDialog({Key? key, required this.k, required this.v, required this.hint,}) : super(key: key);

  @override
  State createState() => _HintDialogState();
}

class _HintDialogState extends State<HintDialog>
{
  @override
  void initState()
  {
    super.initState();
  }

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

      // title: Container(
      //   // color: Colors.red,
      //   child: Row(
      //     children: [
      //       Expanded(child: Text(M.wifi.setup_wifi)),
      //       Container(
      //         // color: Colors.green,
      //           child: TextButton(
      //               style: TextButton.styleFrom(
      //                 padding: EdgeInsets.fromLTRB(0,0,0,0),
      //               ) ,
      //               onPressed: (){
      //                 Navigator.pop(context, null);
      //               }, child: Icon(Icons.close)
      //           )
      //       )
      //     ],
      //   ),
      // ),
      content: _build(),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context, null);
          },
          child: Text(M.general.ok),
        ),
      ],
    );
  }

  Future onCopy(String v) async {
    if (v.isEmpty)
      return;
    await FlutterClipboard.copy(v);
    R.showSnackBar(SnackBar(
      duration: Duration(seconds: 2),
      content: Text("Copied: ${v}"),
    ));
  }

  Widget _build(){
    var theme = Theme.of(context);

    var style = MarkdownStyleSheet.fromTheme(theme);
    style = MarkdownStyleSheet(textScaleFactor: 1.1);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              onCopy("${widget.k}: ${widget.v}");
            },
            child: FlexList(
              verticalSpacing: 0,
              horizontalSpacing: 7,
              children: [
                Text("${widget.k}:"),
                Text("${widget.v}",
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          MarkdownBody(
            styleSheet: style,
            selectable: true,
            data: widget.hint,
          ),
        ],
      ),
    );
  }
}