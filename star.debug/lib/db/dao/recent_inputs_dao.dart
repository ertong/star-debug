import 'package:drift/drift.dart';
import '../database.dart';

part 'recent_inputs_dao.g.dart';

@DriftAccessor(include: {'recent_inputs_dao.drift'})
class RecentInputsDao extends DatabaseAccessor<Database> with _$RecentInputsDaoMixin {
  RecentInputsDao(super.db);

  Future<int> addInputChecked(String type, String? data) async {
    print("================== ADD ========= $type $data");
    if (data==null || data.trim().isEmpty)
      return 0;

    return await addInput(type, DateTime.now().millisecondsSinceEpoch~/1000, data, data.toLowerCase());
  }

}