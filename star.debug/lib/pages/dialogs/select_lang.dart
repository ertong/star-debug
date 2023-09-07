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
      title: Text(M.general.select_lang),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.grey,
            height: 4.0,
          ),
          for (var lang in I18n.instance.langs.keys)
            ListTile(
              leading: Radio(value: lang, groupValue: I18n.instance.lang, onChanged: (v) {}),
              title: Text(I18n.instance.langs[lang]!().general.lang),
              onTap: () {
                Navigator.pop(context, lang);
              },
            ),
        ],
      ),
    );
  }
}
