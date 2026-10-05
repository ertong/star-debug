import 'package:flutter/material.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/routes.dart';

class AppDrawer extends StatefulWidget {
  final String selectedRoute;

  const AppDrawer({super.key, this.selectedRoute = ""});

  @override
  State createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int debugClickCount = 0;

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
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _createHeader(),
                _createDrawerItemRoute(
                  context,
                  Icons.play_arrow,
                  "Starlink Live",
                  Routes.LIVE,
                ),
                _createDrawerItemRoute(
                  context,
                  Icons.bug_report,
                  M.general.debug_data_viewer,
                  Routes.MAIN,
                ),
                _createDrawerItemRoute(
                  context,
                  Icons.pets,
                  M.my.my_starlinks,
                  Routes.MY_STARLINKS,
                ),
                if (R.isDebug)
                  _createDrawerItemRoute(
                    context,
                    Icons.smart_toy,
                    "Sandbox",
                    Routes.DEBUG,
                  ),
                _createDrawerItemRoute(
                  context,
                  Icons.settings,
                  M.settings.settings,
                  Routes.SETTINGS,
                ),
              ],
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
              child: ListTile(
                leading: Transform.scale(scale: 1, child: _buildLogo()),
                title: Text(M.about.about_starlink_for_ukraine),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                selected: widget.selectedRoute == Routes.ABOUT,
                selectedTileColor: Theme.of(
                  context,
                ).colorScheme.primary.withAlpha(24),
                onTap: () {
                  if (widget.selectedRoute == Routes.ABOUT) {
                    Navigator.pop(context);
                  } else {
                    Navigator.of(
                      context,
                    ).pushNamedAndRemoveUntil(Routes.ABOUT, (r) => false);
                  }
                },
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.black,
      ),
      width: 30,
      height: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: OverflowBox(
          maxWidth: 50,
          maxHeight: 50,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
            child: Image(
              image: AssetImage('assets/images/starlinkforukraine1.png'),
              width: 50,
            ),
          ),
        ),
      ),
    );
  }

  Widget _createHeader() {
    var media = MediaQuery.of(context);
    return SizedBox(
      height: 130 + media.viewPadding.top,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color(0xFF4f5b62),
              Color(0xFF263238),
              Color(0xFF000a12),
            ],
            transform: GradientRotation(3 * 3.14 / 4),
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                Positioned(
                  top: 30,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          debugClickCount++;
                          if (debugClickCount > 5 && !R.isDebug)
                            setState(() {
                              R.isDebug = true;
                            });
                        },
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo_transparent.png',
                          ),
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth - 50 - 20 - 10,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                M.general.app_name,
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                softWrap: true,
                              ),
                              SizedBox(height: 2),
                              Text(
                                R.versionName,
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(
                                      color: Colors.white.withAlpha(190),
                                    ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _createDrawerItemRoute(
    BuildContext context,
    IconData icon,
    String text,
    String route,
  ) {
    return _createDrawerItem(
      context,
      icon,
      text,
      () {
        if (widget.selectedRoute == route) {
          Navigator.pop(context);
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(route, (r) => false);
        }
      },
      null,
      widget.selectedRoute == route,
    );
  }

  Widget _createDrawerItem(
    BuildContext context,
    IconData icon,
    String text,
    GestureTapCallback onTap,
    String? subtitle,
    bool isSelected,
  ) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: ListTile(
        title: Text(
          text,
          style: isSelected ? TextStyle(fontWeight: FontWeight.w600) : null,
        ),
        leading: Icon(icon, color: isSelected ? colors.primary : null),
        selected: isSelected,
        selectedTileColor: colors.primary.withAlpha(24),
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 14),
        subtitle: subtitle != null ? Text(subtitle) : null,
        onTap: onTap,
      ),
    );
  }
}
