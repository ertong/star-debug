
import 'package:flutter/material.dart';
import 'package:star_debug/db/database.dart';
import 'package:star_debug/db/models/recent_inputs.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/recent_input.dart';

class WifiSetupDialog extends StatefulWidget
{
  const WifiSetupDialog({super.key,});

  @override
  State createState() => _WifiSetupDialogState();
}

class _WifiSetupDialogState extends State<WifiSetupDialog>
{
  final formKey = GlobalKey<FormState>();
  TextEditingController tecName = TextEditingController();
  TextEditingController tecPassword = TextEditingController();

  final FocusNode fnName = FocusNode();
  final FocusNode fnPassword = FocusNode();

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: tecName,
                autofocus: true,
                textInputAction: TextInputAction.next,
                focusNode: fnName,
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(fnPassword);
                },
                decoration: InputDecoration(
                  labelText: M.wifi.network_name,
                  suffixIcon: IconButton(icon: Icon(Icons.more_horiz), onPressed: () async {
                    var res = await showDialog<String?>(
                        context: context,
                        builder: (c) => RecentInputDialog(
                            type: RecentInputs.TYPE_WIFI_SSID,
                            title: M.wifi.network_name,
                            text: tecName.text
                        )
                    );
                    if (res!=null)
                      setState(() {
                        tecName.text = res;
                      });
                  },)
                ),
                validator: (String? value) {
                  return (value != null && value.trim().isEmpty) ? 'Should not be empty' : null;
                },
              ),
              TextFormField(
                controller: tecPassword,
                textInputAction: TextInputAction.done,
                focusNode: fnPassword,
                decoration: InputDecoration(
                  labelText: M.wifi.password,
                  suffixIcon: IconButton(icon: Icon(Icons.more_horiz), onPressed: () async {
                    var res = await showDialog<String?>(
                        context: context,
                        builder: (c) => RecentInputDialog(
                            type: RecentInputs.TYPE_WIFI_PASS,
                            title: M.wifi.password,
                            text: tecPassword.text
                        )
                    );
                    if (res!=null)
                      setState(() {
                        tecPassword.text = res;
                      });
                  },)
                ),
                validator: (String? value) {
                  return (value == null || value.trim().length<8) ? '8 chars or more' : null;
                },
              ),
              SizedBox(height: 5,),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                        fixedSize: Size(80, 70)
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_WIFI, name:tecName.text, pass:tecPassword.text));
                      }
                    },
                    child: Text(M.wifi.setup_ssid_and_password, textAlign: TextAlign.center,),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                        fixedSize: Size(80, 70)
                    ),
                    onPressed: () {
                      Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_SKIP));
                    },
                    child: Text(M.wifi.keep_default_wifi_settings, textAlign: TextAlign.center),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                        fixedSize: Size(80, 70)
                    ),
                    onPressed: () {
                      Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_BYPASS));
                    },
                    child: Text(M.wifi.enable_bypass_mode, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      actions: <Widget>[
      ],
    );
  }
}

class WifiSetupResult{
  static const String RES_SKIP = "skip";
  static const String RES_WIFI = "wifi";
  static const String RES_BYPASS = "bypass";
  String result;
  String? name;
  String? pass;

  WifiSetupResult(this.result, {this.name, this.pass});
}