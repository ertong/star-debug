// ignore: deprecated_member_use
import 'package:flutter/material.dart' as legacy;
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/stardebug_app.dart';
import 'package:star_debug/theme.dart';

Widget _app(Widget home) => MaterialApp(
  theme: StarDebugTheme.build(Brightness.dark),
  localizationsDelegates: GlobalMaterialLocalizations.delegates,
  builder: starDebugAppBuilder,
  home: home,
);

void main() {
  testWidgets('app builder exposes the theme to legacy material widgets', (
    WidgetTester tester,
  ) async {
    late BuildContext routeContext;
    await tester.pumpWidget(
      _app(
        Builder(
          builder: (context) {
            routeContext = context;
            return const SizedBox();
          },
        ),
      ),
    );

    expect(Theme.of(routeContext).brightness, Brightness.dark);
    expect(legacy.Theme.of(routeContext).brightness, Brightness.dark);
    expect(
      legacy.Theme.of(routeContext).colorScheme.primary,
      Theme.of(routeContext).colorScheme.primary,
    );
    expect(legacy.MaterialLocalizations.of(routeContext), isNotNull);
    expect(MediaQuery.of(routeContext).alwaysUse24HourFormat, isTrue);
  });

  testWidgets('markdown text follows the dark app theme', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      _app(
        Scaffold(
          body: MarkdownBody(
            data: 'Hello',
            styleSheet: MarkdownStyleSheet(textScaler: TextScaler.linear(1.1)),
          ),
        ),
      ),
    );

    final text = tester.widget<RichText>(
      find.byWidgetPredicate(
        (widget) =>
            widget is RichText && widget.text.toPlainText().contains('Hello'),
      ),
    );
    final colors = <Color>[];
    text.text.visitChildren((span) {
      final color = (span as TextSpan).style?.color;
      if (color != null) colors.add(color);
      return true;
    });

    expect(colors, isNotEmpty);
    expect(colors.last.computeLuminance(), greaterThan(0.5));
  });
}
