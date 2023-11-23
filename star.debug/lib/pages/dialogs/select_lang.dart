import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';

class SelectLangDialog<TItem> extends StatefulWidget {
  const SelectLangDialog({Key? key}) : super(key: key);

  @override
  State createState() => _SelectLangDialogState<TItem>();
}

class _SelectLangDialogState<TItem> extends State<SelectLangDialog<TItem>> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.fromLTRB(0, 0,0,0),
      titlePadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      contentPadding: EdgeInsets.fromLTRB(10,0,10,10),
      actionsPadding: EdgeInsets.all(0.0),
      title: Row(
        children: [
          Expanded(child: Text(M.general.select_lang)),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.grey,
            height: 4.0,
          ),
          for (var lang in I18n.instance.langs.keys)
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Row(
                children: [
                  Radio(value: lang, groupValue: I18n.instance.lang, onChanged: (v) => onSelect(lang)),
                  Text(I18n.instance.langs[lang]!().general.lang),
                ],
              ),
              onTap: () => onSelect(lang),
            ),
        ],
      ),
    );
  }

  void onSelect(String lang) {
    Navigator.pop(context, lang);
  }
}
