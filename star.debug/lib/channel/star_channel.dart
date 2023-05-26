import 'package:flutter/services.dart';

class StarChannel {
  final MethodChannel channel = MethodChannel('com.stardebug/channel');

  StarChannel() {
    channel.setMethodCallHandler((MethodCall call) async {
      print("CALLED ${call.method} ${call.arguments}");
    });
  }

  Future<String> test() async {
    return (await channel.invokeMethod<String>('test')).toString();
  }

  Future<HttpTestResult> httpTest(String url, String method, String? resolveTo) async {
    var res = await channel.invokeMethod<Map>('httpTest', <String, dynamic>{
      'url': url,
      'method': method,
      'resolveTo': resolveTo,
    });
    return HttpTestResult(res!["code"], res!["body"]);
  }
}

class HttpTestResult {
  int code;
  String body;

  HttpTestResult(this.code, this.body);

  @override
  String toString() {
    return 'HttpTestResult{code: $code, body: $body}';
  }
}
