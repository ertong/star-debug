// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/debug_data.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:star_debug/utils/geoip.dart';

void main() {

  test('GeoIp static v4', () async {
    expect(GeoIp.v4ToInt("127.0.0.1"), 0x7F000001);
    expect(GeoIp.v4ToInt("1.2.3.4"), 0x01020304);

    for (var str in ["127.0.0.1", "1.2.3.4", "0.0.0.0", "192.168.0.0", "10.0.0.0", "255.255.255.255"]) {
      var a = GeoIp.v4ToInt(str);
      var b = GeoIp.v4ToStr(a);
      var c = GeoIp.v4ToInt(b);
      expect(c, a);
      expect(b, str);
    }

  });

  test('GeoIp static v6', () async {
    expect(GeoIp.v6ToInt("2406:2d40::"), BigInt.from(0x24062d40)<<96);
    expect(GeoIp.v6ToInt("2a0d:3340:1000:1000:1000:1000:1000:1000"), BigInt.parse("2a0d3340100010001000100010001000", radix: 16));

    for (var str in ["2406:2d40::", "2a0d:3340:1000:1000:1000:1000:1000:1000", "2a0d:3340:100:100::", "2a0d:3340:100:1::"]) {
      var a = GeoIp.v6ToInt(str);
      var b = GeoIp.v6ToStr(a);
      var c = GeoIp.v6ToInt(b);
      expect(b, str);
      expect(c, a);
    }

  });

  test('GeoIp v4', () async {
    var geo = GeoIp();
    geo.readStarlinkFeed('''14.1.72.0/24,IN,IN-MH,Mumbai,
14.1.73.0/24,IN,IN-MH,Mumbai,
14.1.74.0/24,IN,IN-MH,Mumbai,
14.1.75.0/24,IN,IN-MH,Mumbai,
14.1.76.0/24,PK,PK-SD,Karachi,
14.1.77.0/24,PK,PK-SD,Karachi,
14.1.78.0/24,PK,PK-SD,Karachi,
14.1.79.0/24,PK,PK-SD,Karachi,
65.181.0.0/24,AU,AU-NSW,Sydney,
65.181.1.0/24,AU,AU-NSW,Sydney,
65.181.2.0/24,AU,AU-NSW,Sydney,
65.181.3.0/24,AU,AU-NSW,Sydney,
2a0d:3344:1cc0::/42,PT,PT-11,Lisbon,
2a0d:3344:1d00::/42,RO,RO-B,Bucharest,
2a0d:3344:1d40::/42,RS,RS-00,Belgrade,''');

    expect(geo.checkIpv4("65.181.3.1"), "AU, Sydney");
    expect(geo.checkIpv4("65.181.4.0"), null);
    expect(geo.checkIpv4("65.181.4.1"), null);

    expect(geo.checkIpv4("127.0.0.1"), null);

    expect(geo.checkIpv4("14.1.76.0"), "PK, Karachi");
    expect(geo.checkIpv4("14.1.76.255"), "PK, Karachi");

    expect(geo.checkIpv6("2a0d:3344:1d80::"), null);

    expect(geo.checkIpv6("2a0d:3344:1d40::"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d41::"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d44::"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d40::0"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d40::1"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d40:0:0:0:0:1"), "RS, Belgrade");
    expect(geo.checkIpv6("2a0d:3344:1d4f:ffff:ffff:ffff:ffff:ffff"), "RS, Belgrade");

    expect(geo.check("127.0.0.1"), null);
    expect(geo.check("14.1.76.255"), "PK, Karachi");
    expect(geo.check("2a0d:3344:1d80::"), null);
    expect(geo.check("2a0d:3344:1d40::"), "RS, Belgrade");

    expect(geo.check("2A0D:3344:1D40::"), "RS, Belgrade");
  });

}
