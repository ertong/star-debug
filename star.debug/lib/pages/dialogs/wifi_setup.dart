
import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';

class WifiSetupDialog extends StatefulWidget
{
  const WifiSetupDialog({Key? key,}) : super(key: key);

  @override
  State createState() => _WifiSetupDialogState();
}

class _WifiSetupDialogState extends State<WifiSetupDialog>
{
  final formKey = GlobalKey<FormState>();
  static TextEditingController tecName = TextEditingController();
  static TextEditingController tecPassword = TextEditingController();

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

      title: Row(
        children: [
          Expanded(child: Text(M.wifi.setup_wifi)),
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
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: tecName,
              decoration: InputDecoration(
                labelText: M.wifi.network_name,
              ),
              validator: (String? value) {
                return (value != null && value.trim().isEmpty) ? 'Should not be empty' : null;
              },
            ),
            TextFormField(
              controller: tecPassword,
              decoration: InputDecoration(
                labelText: M.wifi.password,
              ),
              validator: (String? value) {
                return (value == null || value.trim().length<8) ? '8 chars or more' : null;
              },
            )
          ],
        ),
      ),

      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context, WifiSetupResult(skip: true));
          },
          child: Text(M.wifi.skip),
        ),
        ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.pop(context, WifiSetupResult(name:tecName.text, pass:tecPassword.text));
            }
          },
          child: Text(M.general.ok),
        ),
      ],
    );
  }
}

class WifiSetupResult{
  bool? skip;
  String? name;
  String? pass;

  WifiSetupResult({this.skip, this.name, this.pass});
}