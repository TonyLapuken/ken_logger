enum LogType { error, info, success, warning }

class KenLogger {
  static void error(Object message) => _log(message, LogType.error);
  static void info(Object message) => _log(message, LogType.info);
  static void success(Object message) => _log(message, LogType.success);
  static void warning(Object message) => _log(message, LogType.warning);


  static void _log(Object message, LogType type) {
    final prefix = _getPrefix(type);
    final colorCode = _getColorCode(type);

    // ANSI color formatting
    // ignore: avoid_print
    print('\x1B[${colorCode}m$prefix: $message\x1B[0m');
  }

  static Object _getPrefix(LogType type) {
    switch (type) {
      case LogType.error:
        return '[🗙 ERROR]';
      case LogType.info:
        return '[🛈 INFO]';
      case LogType.success:
        return '[✔ SUCCESS]';
      case LogType.warning:
        return '[⚠ WARNING]';
    }
  }

  static Object _getColorCode(LogType type) {
    switch (type) {
      case LogType.error:
        return '31'; // Red
      case LogType.info:
        return '34'; // Blue
      case LogType.success:
        return '32'; // Green
      case LogType.warning:
        return '33'; // Yellow
    }
  }
}
