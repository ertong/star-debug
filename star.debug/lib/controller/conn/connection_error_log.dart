import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';

class ConnectionFailure {
  final DateTime time;
  final String message;

  const ConnectionFailure(this.time, this.message);
}

/// Recent failures for one device connection, retained across reconnect attempts.
class ConnectionErrorLog {
  static const maxEntries = 200;
  final List<ConnectionFailure> _entries = [];

  List<ConnectionFailure> get entries => List.unmodifiable(_entries);

  void add(Object error, {DateTime? time}) {
    _entries.insert(
      0,
      ConnectionFailure(time ?? DateTime.now(), describe(error)),
    );
    if (_entries.length > maxEntries) _entries.removeLast();
  }

  static String describe(Object error) {
    if (error is TimeoutException) return 'Connection timed out';

    final text = error.toString().toLowerCase();
    if (text.contains('connection refused')) return 'Connection refused';
    if (text.contains('network is unreachable') ||
        text.contains('no route to host')) {
      return 'Network unreachable';
    }
    if (text.contains('failed host lookup') ||
        text.contains('name or service not known')) {
      return 'DNS lookup failed';
    }
    if (text.contains('timed out') || text.contains('timeout')) {
      return 'Connection timed out';
    }
    if (text.contains('connection reset') || text.contains('broken pipe')) {
      return 'Connection lost';
    }
    if (error is HandshakeException || error is TlsException) {
      return 'TLS handshake failed';
    }

    String message;
    if (error is GrpcError) {
      message =
          error.message ??
          switch (error.code) {
            StatusCode.deadlineExceeded => 'Connection timed out',
            StatusCode.permissionDenied => 'Permission denied',
            StatusCode.unauthenticated => 'Authentication required',
            StatusCode.unavailable => 'Device unavailable',
            StatusCode.cancelled => 'Connection cancelled',
            _ => 'Connection failed',
          };
    } else if (error is SocketException) {
      message = error.osError?.message ?? error.message;
    } else {
      message = error.toString();
    }
    message = message.replaceAll(RegExp(r'\s+'), ' ').trim();
    if (message.isEmpty) return 'Connection failed';
    return message.length > 100 ? '${message.substring(0, 97)}...' : message;
  }
}
