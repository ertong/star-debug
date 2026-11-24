import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/view/dish.dart';
import 'package:star_debug/utils/kv_widget.dart';

// The live General tab has no test harness, so this covers the shared row it uses.
Future<void> _pumpRow(WidgetTester tester, DishGetStatusResponse status) {
  return tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            var b = KVWidgetBuilder(context, Theme.of(context));
            addSignalQualityRow(b, status);
            return Column(children: b.widgets);
          },
        ),
      ),
    ),
  );
}

void main() {
  testWidgets('signal quality row is colored by band', (tester) async {
    Future<Color?> dot(double quality) async {
      await _pumpRow(
        tester,
        DishGetStatusResponse.fromBuffer(
          DishGetStatusResponse(signalQuality: quality).writeToBuffer(),
        ),
      );
      expect(find.text(quality.toStringAsFixed(2)), findsOneWidget);
      return tester.widget<Icon>(find.byIcon(Icons.circle)).color;
    }

    expect(await dot(0.8), Colors.green);
    expect(await dot(0.52), Colors.amber);
    expect(await dot(0.24), Colors.red);
  });

  testWidgets('signal quality row is omitted when unset or not finite', (
    tester,
  ) async {
    for (var status in [
      DishGetStatusResponse(),
      DishGetStatusResponse(signalQuality: double.nan),
    ]) {
      await _pumpRow(tester, status);
      expect(
        find.text('${M.grpc.DishGetStatus.signal_quality}:'),
        findsNothing,
      );
    }
  });
}
