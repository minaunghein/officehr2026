import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class LogEntry {
  final String message;
  final String? tag;
  final String level;
  final String color;
  final DateTime time;

  LogEntry({
    required this.message,
    this.tag,
    required this.level,
    required this.color,
    required this.time,
  });

  String get formattedTime =>
      "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}.${time.millisecond.toString().padLeft(2, '0')}";

  @override
  String toString() {
    return '[$formattedTime][$level]${tag != null ? "[$tag]" : ""} ➜ $message';
  }
}

class AppLogger {
  static const _reset = '\x1B[0m';
  static const _red = '\x1B[31m';
  static const _green = '\x1B[32m';
  static const _yellow = '\x1B[33m';
  static const _magenta = '\x1B[35m';
  static const _cyan = '\x1B[36m';
  static const _white = '\x1B[37m';

  static const int maxLogs = 400;
  static final List<LogEntry> logs = [];
  static final ValueNotifier<List<LogEntry>> logNotifier = ValueNotifier([]);

  static void i(String? message, {String? tag}) {
    _log(message, tag: tag, color: _white, level: 'INFO');
  }

  static void s(String? message, {String? tag}) {
    _log(message, tag: tag, color: _green, level: 'SUCCESS');
  }

  static void w(String? message, {String? tag}) {
    _log(message, tag: tag, color: _yellow, level: 'WARN');
  }

  static void e(
    String? message, {
    String? tag,
    Object? error,
    StackTrace? stack,
  }) {
    _log(message, tag: tag, color: _red, level: 'ERROR');
    if (error != null) _log(error.toString(), color: _red, level: 'EXCEPTION');
    if (stack != null) _log(stack.toString(), color: _magenta, level: 'STACK');
  }

  static void d(String? message, {String? tag}) {
    // if (kDebugMode) {
    _log(message, tag: tag, color: _cyan, level: 'DEBUG');
    // }
  }

  static void clearLogs() {
    logs.clear();
    logNotifier.value = List.from(logs);
  }

  static void _log(
    String? message, {
    String? tag,
    required String color,
    required String level,
  }) {
    final now = DateTime.now();
    final timeStr = now.toIso8601String().split('T').last;
    final formatted =
        '$color[$timeStr][$level]${tag != null ? "[$tag]" : ""} ➜ $message$_reset';

    final entry = LogEntry(
      message: message ?? 'No message provided',
      tag: tag,
      level: level,
      color: color,
      time: now,
    );

    logs.add(entry);
    if (logs.length > maxLogs) {
      logs.removeAt(0);
    }
    logNotifier.value = List.from(logs);

    if (kReleaseMode) {
      developer.log(message ?? 'No message provided', name: tag ?? level);
    } else {
      debugPrint(formatted);
    }
  }
}
