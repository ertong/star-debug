import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:drift/native.dart';
import 'package:drift/isolate.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:star_debug/utils/log_utils.dart';

import 'database.dart';


const String _TAG = "DatabaseHolder";

class DatabaseHolder {

  static Database? _database;
  static Completer<void>? _dbInit;
  static Future<Database> getDb() async {
    if (_dbInit!=null) {
      await _dbInit!.future;
      return _database!;
    }

    try {
      _dbInit = Completer();
      _database = Database.connect(await (await _getMoorIsolate())!.connect());
      _dbInit!.complete();
    }catch (e,s){
      _dbInit!.completeError(e,s);
      _dbInit = null;
      rethrow;
    }

    return _database!;
  }

  /// Call in main
  static Future init() async{
    // return Bus.client.publishMethod(BusMain.METHOD_DB_GET_MOOR_ISOLATE, (arg) async {
    //   return await _getMoorIsolate();
    // });
  }

  static DriftIsolate? _moorIsolate;
  static Completer<void>? _init;
  static Future<DriftIsolate?> _getMoorIsolate() async {
    if (Isolate.current.debugName!="main") {
      // return Bus.client.call(BusMain.METHOD_DB_GET_MOOR_ISOLATE, null);
    }

    if (_init!=null) {
      await _init!.future;
      return _moorIsolate;
    }
    try {
      _init = Completer();
      _moorIsolate = await _createMoorIsolate();
      _init!.complete();
    }catch (e,s){
      _init!.completeError(e,s);
      _init = null;
      rethrow;
    }
    return _moorIsolate;
  }

  static Future<DriftIsolate?> _createMoorIsolate() async {
    // this method is called from the main isolate. Since we can't use
    // getApplicationDocumentsDirectory on a background isolate, we calculate
    // the database path in the foreground isolate and then inform the
    // background isolate about the path.

    final dir = Platform.isWindows || Platform.isMacOS || Platform.isLinux || Platform.isIOS
    // ? File(Platform.script.toFilePath()).parent
        ? await getApplicationSupportDirectory()
        : await getApplicationDocumentsDirectory();

    final path = '${dir.path}/sqlite.db';
    LogUtils.d(_TAG, "Database path: $path");
    final receivePort = ReceivePort();

    await Isolate.spawn(
      _startBackground,
      _IsolateStartRequest(receivePort.sendPort, path),
    );

    // _startBackground will send the MoorIsolate to this ReceivePort
    return (await receivePort.first as DriftIsolate?);
  }

  static void _startBackground(_IsolateStartRequest request) {
    // this is the entrypoint from the background isolate! Let's create
    // the database from the path we received
    final executor = NativeDatabase(File(request.targetPath));
    // we're using MoorIsolate.inCurrent here as this method already runs on a
    // background isolate. If we used MoorIsolate.spawn, a third isolate would be
    // started which is not what we want!
    final moorIsolate = DriftIsolate.inCurrent(
          () => DatabaseConnection(executor),
    );
    // inform the starting isolate about this, so that it can call .connect()
    request.sendMoorIsolate.send(moorIsolate);
  }
}

class _IsolateStartRequest {
  final SendPort sendMoorIsolate;
  final String targetPath;

  _IsolateStartRequest(this.sendMoorIsolate, this.targetPath);
}
