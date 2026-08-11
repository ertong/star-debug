import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/theme.dart';
import 'package:star_debug/utils/tab_index.dart';
import 'package:star_debug/widgets/app_surface.dart';

void main() {
  test('theme defines consistent light and dark component styling', () {
    final light = StarDebugTheme.build(Brightness.light);
    final dark = StarDebugTheme.build(Brightness.dark);

    expect(light.useMaterial3, isFalse);
    expect(dark.useMaterial3, isFalse);
    expect(light.scaffoldBackgroundColor, isNot(dark.scaffoldBackgroundColor));
    expect(light.appBarTheme.foregroundColor, Colors.white);
    expect(light.snackBarTheme.behavior, SnackBarBehavior.floating);

    final shape = light.cardTheme.shape! as RoundedRectangleBorder;
    final radius = shape.borderRadius as BorderRadius;
    expect(radius.topLeft.x, 14);
  });

  test('live page selection stays valid when optional tabs change', () {
    expect(validLivePageIndex(3, 3), 2);
    expect(validLivePageIndex(1, 3), 1);
    expect(validLivePageIndex(-1, 3), 0);
    expect(validLivePageIndex(0, 0), 0);
  });

  testWidgets('app surface provides a clipped tappable surface', (
    WidgetTester tester,
  ) async {
    var taps = 0;
    await tester.pumpWidget(
      MaterialApp(
        theme: StarDebugTheme.build(Brightness.light),
        home: Scaffold(
          body: AppSurface(onTap: () => taps++, child: Text('Open')),
        ),
      ),
    );

    expect(find.byType(InkWell), findsOneWidget);
    await tester.tap(find.text('Open'));
    await tester.pump();
    expect(taps, 1);
  });
}
