import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/messages/messages.i18n.dart';
import 'package:star_debug/messages/messages_uk.i18n.dart';
import 'package:star_debug/pages/live/general.dart';
import 'package:star_debug/utils/format.dart';

void main() {
  setUp(() => M = Messages());
  tearDown(() => M = Messages());

  test('charging battery shows time to full when reported', () {
    expect(
      batterySummary(
        DishBatteryStats(
          stateOfCharge: 80,
          isCharging: true,
          timeToChargeMinutes: 80,
          timeToEmptyMinutes: 300,
        ),
      ),
      '80 % · Charging · full in 1 h 20 m',
    );
  });

  test('discharging battery shows time to empty when reported', () {
    expect(
      batterySummary(
        DishBatteryStats(
          stateOfCharge: 62,
          timeToChargeMinutes: 80,
          timeToEmptyMinutes: 45,
        ),
      ),
      '62 % · 45 m left',
    );
  });

  test('missing estimates leave charge and charging state only', () {
    expect(
      batterySummary(DishBatteryStats(stateOfCharge: 80, isCharging: true)),
      '80 % · Charging',
    );
    expect(batterySummary(DishBatteryStats(stateOfCharge: 62)), '62 %');
  });

  test('estimates are translated', () {
    M = MessagesUk();
    expect(
      batterySummary(
        DishBatteryStats(stateOfCharge: 62, timeToEmptyMinutes: 125),
      ),
      '62 % · залишилось 2 h 5 m',
    );
  });

  test('minutes format hours only from one hour', () {
    expect(Format.minutes(59), '59 m');
    expect(Format.minutes(60), '1 h 0 m');
  });
}
