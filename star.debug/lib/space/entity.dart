import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/kv_consumer.dart';
import 'package:time_machine/time_machine.dart';

import 'common_data.dart';


/* Basic class for all entities like Dishy, Router, Local device */
abstract class Entity {
  String name = "";
  bool reachable = false;
  bool cloud_access = false;
  int alertsCount = 0;
  List<EntityModule?> plugins = [];

  Entity();

  String? get_device_image_file() {
    return null;
  }

  void get_readable_params(KVConsumer kv);

}

/* Basic class for additional data plugins */
abstract class EntityModule {
  String get_name();

  void get_data(KVConsumer kv);
}
