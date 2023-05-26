import 'dart:async';
import 'dart:io';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_debug/stardebug_app.dart';

import 'loading.dart';
import 'messages/I18n.dart';
import 'preloaded.dart';
import 'utils/log_utils.dart';

const String _TAG = "Main";

void main() async {
  await runZonedGuarded<Future<void>>(() async {
    LogUtils.d("Main", "Dart main started");

    R = Preloaded();
    unawaited(()async{
      try {
        await R.init();

        WidgetsBinding.instance.addObserver(R.lifecycleObserver);

        R.initialized.complete();
      } catch (e,s){
        R.initialized.completeError(e,s);
      }
    }());

    runApp(Loading(
      onInit: (context) async {
        try {
          await R.initialized.future;
          await I18n.instance.init(context);
          {
            //device pixels for logical pixel
            // double dpr = WidgetsBinding.instance.window.devicePixelRatio;

            // By definition, there are roughly 38 logical pixels per centimeter, or about 96 logical pixels per inch, of the physical display.
            // int dpi = (dpr * 96).round();
            // int height = (WidgetsBinding.instance.window.physicalSize.height).round();
            // int width = (WidgetsBinding.instance.window.physicalSize.width).round();

          }
        } catch(e,s){
          LogUtils.ers("Main", "on load", e, s);
          await Future.delayed(const Duration(seconds: 5));
          exit(0); // give up
        }
      },
      onLoaded: (context) {
          return StreamBuilder(
              stream: I18n.instance.onChange,
              builder: (context, asyncSnapshot) => StarDebugApp(key: R.appKey),
            );
      },
    ));
  }, (error, stack) {
    LogUtils.ers("UNCATCHED", "", error, stack);
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}
