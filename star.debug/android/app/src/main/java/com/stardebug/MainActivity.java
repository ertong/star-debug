package com.stardebug;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import android.util.Log;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;


public class MainActivity extends FlutterActivity {
    public static ExecutorService executor = Executors.newCachedThreadPool();

    @Override
    public void configureFlutterEngine(FlutterEngine engine){
        super.configureFlutterEngine(engine);
        MethodChannel channel = new MethodChannel(engine.getDartExecutor().getBinaryMessenger(), "com.stardebug/channel");
        channel.setMethodCallHandler(new Handler());
    }

    public class Handler implements MethodChannel.MethodCallHandler{
        @Override
        public void onMethodCall(MethodCall call, MethodChannel.Result result) {
            Log.d("StarDebugChannel", "onMethodCall: "+call.method);
            if (call.method.equals("test")) {
                result.success("testResult");
            } else if (call.method.equals("httpTest")) {
                String url = call.argument("url");
                String method = call.argument("method");
                String resolveTo = call.argument("resolveTo");

                executor.submit(()->{
                    try {
                        HashMap<String, Object> res = HttpTester.run(url, method, resolveTo, null);
                        result.success(res);
                    } catch (Throwable e) {
//                        Log.e("StarDebugChannel", "httpTest "+url, e);
                        result.error("error", e.getMessage()+"\n"+Log.getStackTraceString(e), null);
                    }
                });

            } else {
                result.notImplemented();
            }
        }
    }
}
