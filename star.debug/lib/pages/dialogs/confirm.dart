import 'package:flutter/material.dart';
import 'package:star_debug/messages/I18n.dart';

class ConfirmDialog<TItem> extends StatefulWidget
{
  final String? title;
  final String? text;
  final List<Widget> extraActions;
  const ConfirmDialog({Key? key, this.text, this.title, this.extraActions=const []}) : super(key: key);

  @override
  State createState() => _ConfirmDialogState<TItem>();
}

class _ConfirmDialogState<TItem> extends State<ConfirmDialog<TItem>>
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
    return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            titlePadding: EdgeInsets.all(14.0),
            contentPadding: EdgeInsets.all(10.0),
//            actionsPadding: EdgeInsets.all(0.0),
            title: Text(widget.title!),
            content: Text(widget.text!),
            actions: <Widget>[
              ...widget.extraActions,
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(M.general.cancel),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(M.general.confirm),
              ),
            ],
          );
        }
    );
  }
}