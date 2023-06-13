import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:url_launcher/url_launcher.dart';

const String _TAG="AboutPage";

class AboutPage extends StatefulWidget {

  const AboutPage({super.key});

  @override
  State createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => AppDrawer.willPopFunc(scaffoldKey),
      child: Scaffold(
          key: scaffoldKey,
          appBar: _buildBar(context) as PreferredSizeWidget?,
          drawer: AppDrawer(selectedRoute: Routes.DEBUG),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: _buildBody(),
              ),
            ],
          )
      ),
    );
  }

  List<Widget> _buildBody(){
    List<Widget> res = [];

    var theme = Theme.of(context);

    var style = MarkdownStyleSheet.fromTheme(theme);
    style = MarkdownStyleSheet(textScaleFactor: 1.2);

    res.add(Center(child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
      child: Image(
        image: AssetImage(
            R.prefs.data.darkMode
                ? 'assets/images/starlinkforukraine.png'
                : 'assets/images/starlinkforukraine_black.png'
        ),
        width: min(MediaQuery.of(context).size.width*0.35, 150.0),
      ),
    ),));

    res.add(Expanded(
      child: Markdown(
        styleSheet: style,
        data: M.about.about_text,
      ),
    ));

    res.add(ListTile(
        leading: Icon(Icons.public),
        title: Text(M.about.starlink_for_ukraine_in_fb),
        onTap: () {
          launchUrl(Uri.parse("https://www.facebook.com/groups/starlinkforukraine/"));
        },
    ));

    res.add(ListTile(
      leading: Icon(Icons.code),
      title: Text(M.about.project_on_github),
      onTap: () {
        launchUrl(Uri.parse("https://github.com/ertong/star-debug"));
      },
    ));

    res.add(ListTile(
      leading: Icon(Icons.copyright),
      title: Text("© Ihor Lytvynenko, 2023"),
      subtitle: Text("stardebug@ert.org.ua"),
      onTap: () async {
        try{
          await sendMail();
        } catch (e,s){
          LogUtils.ers(_TAG, "", e, s);
          if (e is PlatformException)
            R.showSnackBarText("${e.message}");
          else
            R.showSnackBarText("$e");
        }
      },
    ));

    return res;
  }

  Future<void> sendMail() async{
    DeviceInfoPlugin di = DeviceInfoPlugin();

    String body = 'App version: ${R.versionName}\n';


    if (Platform.isAndroid){
      var info = await di.androidInfo;
      body = "$body"
          "Platform: Android ${info.version.release} sdk ${info.version.sdkInt} patch ${info.version.securityPatch}\n"
          "Device: ${info.manufacturer} ${info.model} ${info.board} ${info.brand} ${info.device}\n";
    } else if (Platform.isIOS){
      var info = await di.iosInfo;
      body = "$body"
          "Platform: iOS ${info.systemName} ${info.systemVersion} \n"
          "Device: ${info.model} ${info.name}\n";
    } else {
      body = "$body"
          'Platform: ${Platform.operatingSystem} ${Platform.operatingSystemVersion}\n';
    }

    final Email email = Email(
      body: "$body\n",
      recipients: ['stardebug@ert.org.ua'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.about.about),
      centerTitle: true,
    );
  }
}
