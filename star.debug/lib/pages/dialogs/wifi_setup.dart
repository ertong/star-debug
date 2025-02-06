
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:star_debug/db/models/recent_inputs.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/confirm.dart';
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

  int? passRate;

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

  static final reDigit = RegExp(r'[0-9]+');
  static final reLower = RegExp(r'[a-z]+');
  static final reUpper = RegExp(r'[A-Z]+');
  static final reSymb = RegExp(r'[^0-9a-zA-Z]+');

  int ratePassword(String text) {
    int nChars = 0;
    if (reDigit.hasMatch(text)) nChars+=10;
    if (reLower.hasMatch(text)) nChars+=26;
    if (reUpper.hasMatch(text)) nChars+=26;
    if (reSymb.hasMatch(text)) nChars+=5; // not so much symbols are usually used
    // 2414.8kH/s WPA2 hashes on RTX 4090
    var rateD = (text.length*log(nChars)-log(2414800*60*60*24))/log(10);
    // rateD approximately from -3.3 to 10, with threshold in 2 and 6
    int rate = ((rateD+4)/1.4*10).toInt(); // from ~0 to ~100 with threshold 42 and 71
    if (rate<5) rate=5;
    if (rate>99) rate=100;
    return rate;
  }

  Color rateColor(int rate) {
    if (rate<41)
      return Colors.red;
    if (rate<71)
      return Colors.orange;
    return Colors.green;
  }

  void onTextChanged(){
    if (tecPassword.text.length<8)
      passRate = null;
    else
      passRate = ratePassword(tecPassword.text);
    setState(() {});
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
                  return (value != null && value.trim().isEmpty) ? M.general.should_not_be_empty : null;
                },
              ),
              TextFormField(
                controller: tecPassword,
                textInputAction: TextInputAction.done,
                focusNode: fnPassword,
                onChanged: (_) => onTextChanged(),
                decoration: InputDecoration(
                  labelText: M.wifi.password,
                  // helperText: "asdf",
                  // helperStyle: TextStyle(color: Colors.red),
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
                  return (value == null || value.trim().length<8) ? M.wifi.more_8_chars : null;
                },
              ),
              if (passRate!=null)
                LinearProgressIndicator(value: passRate!/100.0, color: rateColor(passRate!),),
              SizedBox(height: 5,),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                        fixedSize: Size(80, 70)
                    ),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        var res = await showDialog<bool>(context: context,
                            builder: (c) { return ConfirmDialog(
                                text: M.wifi.setup_ssid_pass(tecName.text, tecPassword.text),
                                title: M.general.confirmation);
                            }
                        );
                        if (mounted && res==true)
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
                    onPressed: () async {
                      var res = await showDialog<bool>(context: context,
                          builder: (c) { return ConfirmDialog(
                              text: M.wifi.setup_default,
                              title: M.general.confirmation);
                          }
                      );
                      if (mounted && res==true)
                        Navigator.pop(context, WifiSetupResult(WifiSetupResult.RES_SKIP));
                    },
                    child: Text(M.wifi.keep_default_wifi_settings, textAlign: TextAlign.center),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                        fixedSize: Size(80, 70)
                    ),
                    onPressed: () async {
                      var res = await showDialog<bool>(context: context,
                          builder: (c) { return ConfirmDialog(
                              text: M.wifi.setup_bypass,
                              title: M.general.confirmation);
                          }
                      );
                      if (mounted && res==true)
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

      actions: const <Widget>[
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