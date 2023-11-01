
class GeoIp {
  Map<String, String> map = {};
  Set<int> v4bits = {};
  Set<int> v6bits = {};

  void readStarlinkFeed(String feed) {
    for (var line in feed.split("\n")) {
      var A = line.split(",");
      if (A.length<4)
        continue;
      var range = A[0];
      var country = A[1];
      var region = A[2];
      var city = A[3];

      var B = range.split("/");
      var addr = B[0];
      var bits = int.parse(B[1]);
      if (addr.contains(":"))
        v6bits.add(bits);
      else
        v4bits.add(bits);

      map[range] = "$country, $city";
    }
  }

  String? checkIpv4(String addr){
    var asInt = v4ToInt(addr);
    for (var bits in v4bits) {
      int mask = (0xFFFFFFFF << (32 - bits)) & 0xFFFFFFFF;
      var s = "${v4ToStr(asInt & mask)}/$bits";
      var res = map[s];
      if (res!=null)
        return res;
    }

    return null;
  }

  String? checkIpv6(String addr){
    var asInt = v6ToInt(addr);
    for (var bits in v6bits) {
      BigInt mask = ((BigInt.one << bits) - BigInt.one) << (128-bits);
      var s = "${v6ToStr(asInt & mask)}/$bits";
      var res = map[s];
      if (res!=null)
        return res;
    }

    return null;
  }

  String? check(String addr) {
    if (addr.contains(":"))
      return checkIpv6(addr);
    else
      return checkIpv4(addr);
  }

  static int v4ToInt(String ipAddress) {
    List<String> parts = ipAddress.split('.');
    int result = 0;
    for (int i = 0; i < 4; i++) {
      int octet = int.parse(parts[i]);
      result = (result << 8) | octet;
    }

    return result;
  }

  static String v4ToStr(int ipInt) {
    List<int> octets = [];
    for (int i = 3; i >= 0; i--)
      octets.add((ipInt >> (i * 8)) & 0xFF);

    return octets.join('.');
  }

  static BigInt v6ToInt(String ipAddress) {
    List<String> parts = ipAddress.split(':');

    if (parts.last=="")
      parts.removeLast();

    List<BigInt> segments = [];
    for (int i = 0; i < parts.length; i++) {
      if (parts[i].isEmpty) {
          int remainingSegments = 8 - parts.length + 1; // +1 for the '::'
          for (int j = 0; j < remainingSegments; j++)
            segments.add(BigInt.zero);
      } else
        segments.add(BigInt.parse(parts[i], radix: 16));
    }

    if (segments.length != 8)
      throw ArgumentError('Invalid IPv6 address format');

    BigInt result = BigInt.zero;
    for (int i = 0; i < 8; i++)
      result = (result << 16) | segments[i];

    return result;
  }

  static String v6ToStr(BigInt ipBigInt) {
    List<int> segments = [];
    for (int i = 7; i >= 0; i--) {
      BigInt segment = (ipBigInt >> (i * 16)) & BigInt.from(0xFFFF);
      segments.add(segment.toInt());
    }
    int lastSegment = 7;
    while (lastSegment>0 && segments[lastSegment]==0)
      lastSegment--;

    String ipAddress = segments.sublist(0, lastSegment+1).map((e) => e.toRadixString(16)).join(':');
    if (lastSegment<7)
      ipAddress = "$ipAddress::";
    return ipAddress;
  }
}