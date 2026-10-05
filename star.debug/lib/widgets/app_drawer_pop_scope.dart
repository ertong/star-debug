import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Preserves the root screen's Back-to-drawer behavior while allowing pushed
/// routes to pop normally, including through predictive back gestures.
class AppDrawerPopScope extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Scaffold child;

  const AppDrawerPopScope({
    super.key,
    required this.scaffoldKey,
    required this.child,
  });

  @override
  State<AppDrawerPopScope> createState() => _AppDrawerPopScopeState();
}

class _AppDrawerPopScopeState extends State<AppDrawerPopScope> {
  bool _openedByBack = false;

  Future<void> _onPopInvoked(bool didPop, Object? result) async {
    if (didPop || ModalRoute.isFirstOf(context) != true) return;

    final scaffold = widget.scaffoldKey.currentState;
    if (scaffold == null || !scaffold.hasDrawer) return;

    if (scaffold.isDrawerOpen) {
      scaffold.closeDrawer();
      // A second Back after opening the root drawer leaves the application.
      // A drawer opened manually only closes on Back.
      if (_openedByBack) await SystemNavigator.pop();
    } else {
      _openedByBack = true;
      scaffold.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope<Object?>(
      canPop:
          ModalRoute.isFirstOf(context) != true || widget.child.drawer == null,
      onPopInvokedWithResult: _onPopInvoked,
      child: widget.child,
    );
  }
}
