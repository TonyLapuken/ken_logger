import 'package:ansicolor/ansicolor.dart';

enum LogType { error, info, success, warning }

class KenLogger {
  static void error(Object message) => _log(message, LogType.error);
  static void info(Object message) => _log(message, LogType.info);
  static void success(Object message) => _log(message, LogType.success);
  static void warning(Object message) => _log(message, LogType.warning);

  static void _log(Object message, LogType type) {
    final prefix = _getPrefix(type);
    final colorCode = _getColorCode(type);

    final date = DateTime.now();

    String formattedDate =
        '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} '
        '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}:${date.second.toString().padLeft(2, '0')}';

    // ANSI color formatting
    AnsiPen pen = AnsiPen()..xterm(colorCode as int);
    // ignore: avoid_print
    print('$formattedDate ${pen('$prefix: $message')}');
  }

  static Object _getPrefix(LogType type) {
    switch (type) {
      case LogType.error:
        return '[❌ ERROR]';
      case LogType.info:
        return '[ℹ️ INFO]';
      case LogType.success:
        return '[✅ SUCCESS]';
      case LogType.warning:
        return '[⚠️ WARNING]';
    }
  }

  static Object _getColorCode(LogType type) {
    switch (type) {
      case LogType.error:
        // Red
        return 9;
      case LogType.info:
        // Blue
        return 12;
      case LogType.success:
        // Green
        return 10;
      case LogType.warning:
        // Yellow
        return 11;
    }
  }
}
