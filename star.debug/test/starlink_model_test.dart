import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/utils/starlink_model.dart';

void main() {
  test('models without a CADY clock generator skip the CADY ready state', () {
    for (var hw in [
      'rev4_prod1',
      'rev_mini_prod1',
      'mini1_panda_prod1',
      'rev5_prod1',
      'rev_mini2_prod1',
      'rev_mini2_prod2',
    ]) {
      expect(StarlinkModel.hasCady(hw), isFalse, reason: hw);
    }
    for (var hw in ['rev3_proto2', 'hp1_proto1', 'rev_mini_prod2']) {
      expect(StarlinkModel.hasCady(hw), isTrue, reason: hw);
    }
  });
}
