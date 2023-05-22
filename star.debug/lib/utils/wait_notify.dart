
import 'dart:async';

class WaitNotify{

  Completer<void> _completer = Completer();

  void notifyAll() {
    _completer.complete();
    _completer = Completer();
  }

  Future wait() async {
    await _completer.future;
  }

  Future waitOrTimeout(int mSec) async {
    await wait().timeout(Duration(milliseconds : mSec), onTimeout: ()=>{});
  }
}