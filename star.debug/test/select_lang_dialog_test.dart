import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/dialogs/select_lang.dart';

void main() {
  testWidgets(
    'language dialog marks the current language and returns a tapped one',
    (WidgetTester tester) async {
      String? result = 'none';
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => TextButton(
              onPressed: () async {
                result = await showDialog<String>(
                  context: context,
                  builder: (_) => const SelectLangDialog(),
                );
              },
              child: const Text('open'),
            ),
          ),
        ),
      );
      await tester.tap(find.text('open'));
      await tester.pumpAndSettle();

      final langs = I18n.instance.langs.keys.toList();
      expect(find.byType(Radio<String>), findsNWidgets(langs.length));

      final current = I18n.instance.lang;
      final other = langs.firstWhere((lang) => lang != current);
      final currentRadio = find.byWidgetPredicate(
        (widget) => widget is Radio<String> && widget.value == current,
      );
      expect(
        tester.getSemantics(currentRadio),
        isSemantics(isChecked: true, hasCheckedState: true),
      );

      await tester.tap(
        find.byWidgetPredicate(
          (widget) => widget is Radio<String> && widget.value == other,
        ),
      );
      await tester.pumpAndSettle();

      expect(result, other);
      expect(find.byType(SelectLangDialog), findsNothing);
    },
  );
}
