import os
import sys

DIR = os.path.dirname(os.path.realpath(__file__))
sys.path.insert(0, DIR + "/Space-Debugger")


def indent(num: int, lines: list):
    prefix = ' '*num
    return [prefix+l for l in lines]


def map_str2str(name: str, map: dict):
    lines = []
    lines.append(f"var {name} = {{\n")
    for (k, v) in map.items():
        lines.append(f"  '{k}': '{v}',\n")
    lines.append("};\n\n")
    return lines


def enum(name: str, val_type: str, obj, strs):
    lines = []

    lines.append(f"enum {name} {{\n")
    first = None
    for m in obj:
        if not first:
            first = m
        lines.append(f"  {m.name}({m.value}, '{strs[m]}'),\n")

    lines.append(f"  ;\n")
    lines.append(f"  final {val_type} val;\n")
    lines.append(f"  final String str;\n")
    lines.append(f"  String get strt => _(str);\n")
    lines.append(f"  const {name}(this.val, this.str);\n")
    lines.append(f"  static {name} byVal(int val) {{\n")
    lines.append(f"    var res = {name}.values.where((e) => e.val==val);\n")
    lines.append(f"    return res.length==1 ? res.single : {name}.{first.name};\n")
    lines.append(f"  }}\n")
    lines.append("}\n")
    lines.append("\n")
    return lines


def consts_top(module):
    lines = []

    for k in dir(module):
        val = getattr(module, k)
        if k.isupper() and isinstance(val, str):
            lines.append(f"const {k} = '{val}';\n")

    lines.append("\n")
    return lines

header="""// Generated file. DO NOT edit manually
import 'package:star_debug/preloaded.dart';

var _ = R.text.t;

"""

with open(DIR+"/../star.debug/lib/space/dishy_data.dart", "w") as f:
    import dishy_data
    f.writelines(header)
    f.writelines(map_str2str("dev_images", dishy_data.dev_images))
    f.writelines(enum("MobylityClass", 'int', dishy_data.MobylityClass, dishy_data.mobility_class_str))
    f.writelines(enum("ServiceClass", 'int', dishy_data.ServiceClass, dishy_data.service_class_str))
    f.writelines(enum("SoftwareUpdateState", 'int', dishy_data.SoftwareUpdateState, dishy_data.software_update_state_str))
    f.writelines(enum("ActuatorState", 'int', dishy_data.ActuatorState, dishy_data.actuator_state_str))
    f.writelines(enum("DisablementCode", 'int', dishy_data.DisablementCode, dishy_data.disablement_code_str))
    f.writelines(enum("OutageCause", 'int', dishy_data.OutageCause, dishy_data.outage_cause_str))
    f.writelines(consts_top(dishy_data))

with open(DIR+"/../star.debug/lib/space/router_data.dart", "w") as f:
    import router_data
    f.writelines(header)
    f.writelines(map_str2str("dev_images", router_data.dev_images))
    f.writelines(enum("BootReason", 'int', router_data.BootReason, router_data.boot_reason_str))
    f.writelines(consts_top(router_data))

with open(DIR+"/../star.debug/lib/space/app_data.dart", "w") as f:
    import app_data
    f.writelines(header)
    f.writelines(map_str2str("dev_images", app_data.dev_images))
    f.writelines(consts_top(app_data))

with open(DIR+"/../star.debug/lib/space/common_data.dart", "w") as f:
    import common_data
    f.writelines(header)
    f.writelines(consts_top(common_data))

