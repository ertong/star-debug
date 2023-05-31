import 'dart:async';
import 'dart:developer';
import 'dart:convert';
import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
import 'package:star_debug/messages/I18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/obstructions.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildBar(context) as PreferredSizeWidget?,
        drawer: AppDrawer(selectedRoute: Routes.DEBUG),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: _buildBody(),
            ),
            // LayoutBuilder(
            //   builder: (BuildContext context, BoxConstraints constraints) {
            //     return Center(child: Opacity(
            //       opacity: 0.2,
            //       child: Image(
            //         image: AssetImage(
            //             R.prefs.data.darkMode
            //                 ? 'assets/images/starlinkforukraine.png'
            //                 : 'assets/images/starlinkforukraine_black.png'
            //         ),
            //         width: constraints.maxWidth*0.75,
            //       ),
            //     ),);
            //   }
            // )
          ],
        )
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

    return res;
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text(M.about.about),
      centerTitle: true,
    );
  }
}
