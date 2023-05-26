import 'dart:async';
import 'dart:developer';
import 'dart:convert';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart' hide Notification, Card;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:grpc/grpc.dart';
import 'package:star_debug/drawer.dart';
import 'package:star_debug/grpc/starlink/starlink.pbgrpc.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: _buildBody(),
        )
    );
  }

  List<Widget> _buildBody(){
    List<Widget> res = [];

    var theme = Theme.of(context);

    var style = MarkdownStyleSheet.fromTheme(theme);
    style = MarkdownStyleSheet(textScaleFactor: 1.2);

    res.add(Expanded(
      child: Markdown(
        styleSheet: style,
        data: 'Додаток створений в рамках волонтерської ініціативи "**Народний старлінк**" '
            'для потреб людей, що щодня працюють над тим, щоб зв\'язок був доступний навіть в місцях, '
            'які росія намагається перетворити на пустелю.'
      ),
    ));

    res.add(ListTile(
        leading: Icon(Icons.public),
        title: Text("Народний старлінк у Facebook"),
        onTap: () {
          launchUrl(Uri.parse("https://www.facebook.com/groups/starlinkforukraine/"));
        },
    ));

    res.add(ListTile(
        leading: Icon(Icons.code),
        title: Text("GitHub проекту"),
        onTap: () {
          launchUrl(Uri.parse("https://github.com/ertong/star-debug"));
        },
    ));

    return res;
  }

  Widget _buildBar(BuildContext context) {
    return AppBar(
      title: Text("About"),
      centerTitle: true,
    );
  }
}
