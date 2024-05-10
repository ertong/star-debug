
import 'package:protobuf/protobuf.dart';
import 'package:star_debug/messages/i18n.dart';

class Format {
  static String bytesPerSec(double b){
    return "${bytes(b)}/s";
  }

  static String bytes(double b){
    if (b<2048)
      return "${b.toStringAsFixed(0)} B";
    else if (b<2048*1024)
      return "${(b/1024).toStringAsFixed(2)} KB";
    else //if (b<2048*1024*1024)
      return "${(b/1024/1024).toStringAsFixed(2)} MB";
  }

  static String bitsPerSec(double b){
    return "${bits(b)}/s";
  }

  static String bits(double b){
    if (b<2048)
      return "${b.toStringAsFixed(0)} bits";
    else if (b<2048*1024)
      return "${(b/1024).toStringAsFixed(2)} Kb";
    else //if (b<2048*1024*1024)
      return "${(b/1024/1024).toStringAsFixed(2)} Mb";
  }

  static String sec(int t){
    if (t<120)
      return "$t s";
    else if (t<120*60)
      return "${t~/60} m ${t%60} s";
    else
      return "${t~/3600} h ${(t~/60)%60} m ${t%60} s";
  }

  static String secD(double t){
    if (t.isNaN || t.isInfinite)
      return "$t";
    if (t<2)
      return "${t.toStringAsFixed(3)} s";
    else if (t<60)
      return "${t.toStringAsFixed(2)} s";
    else
      return sec(t.toInt());
  }


  static String? ago(int t){
    int now = DateTime.now().millisecondsSinceEpoch;
    int d = now - t;
    if (d<0)
      return null;
    if (d<60*1000)
      return M.general.just_now;
    if (d<180*60*1000)
      return M.general.x_min_ago(d~/1000~/60);
    if (d<48*60*60*1000)
      return M.general.x_hours_ago(d~/1000~/60~/60);

    return M.general.x_days_ago(d~/1000~/60~/60~/24);
  }

  static String formatEnumHint(String tmp, List<ProtobufEnum> values ) {
    String str = "";
    for (var val in values) {
      var s = val.name;
      if (!tmp.contains("- **$s**"))
        str = "$str\n- **$s**";
    }

    return tmp.replaceFirst("- OTHER_OPTIONS", str);
  }
}