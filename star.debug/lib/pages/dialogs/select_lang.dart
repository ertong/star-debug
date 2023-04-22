import 'package:flutter/material.dart';
import 'package:star_debug/messages/I18n.dart';

class SelectLangDialog<TItem> extends StatefulWidget
{

  SelectLangDialog({Key? key}) : super(key: key);

  @override
  _SelectLangDialogState createState() => _SelectLangDialogState<TItem>();
}

class _SelectLangDialogState<TItem> extends State<SelectLangDialog<TItem>>
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
        insetPadding: EdgeInsets.fromLTRB(0, 0,0,0),
        titlePadding: EdgeInsets.all(14.0),
        contentPadding: EdgeInsets.all(10.0),
        actionsPadding: EdgeInsets.all(0.0),
      title: Text(M.general.select_lang),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var lang in I18n.instance.langs.keys)
            ListTile(title: Text(I18n.instance.langs[lang]!().general.lang),onTap: (){
              Navigator.pop(context, lang);
            },),
        ],
      ),

      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context, null);
            },
            style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor
            ),
            child: Text(M.general.close),
          ),
        ],
      );
  }
}