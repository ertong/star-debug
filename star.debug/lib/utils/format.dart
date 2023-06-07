
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

}