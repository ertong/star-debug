import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:star_debug/messages/i18n.dart';

class ConfirmDialog extends StatefulWidget
{
  final String? title;
  final String text;
  final bool markdown;
  final List<Widget> extraActions;
  const ConfirmDialog({super.key, required this.text, this.title, this.markdown = false, this.extraActions=const []});

  @override
  State createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog>
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
            content: widget.markdown ? MarkdownBody(
              // styleSheet: style,
              selectable: true,
              data: widget.text,
            ) : Text(widget.text),
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