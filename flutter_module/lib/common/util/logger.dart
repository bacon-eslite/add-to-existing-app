import 'package:logger/logger.dart' as logger;

class Logger {
  logger.Logger? log;
  static Logger? _instance;

  Logger._() {
    log = logger.Logger();
  }

  factory Logger() => _instance ??= Logger._();

  static void d(String message) => Logger().log?.d(message);

  static void i(String message) => Logger().log?.i(message);

  static void w(String message) => Logger().log?.w(message);

  static void e(String message) => Logger().log?.e(message);
}
