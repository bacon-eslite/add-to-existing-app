import 'package:logger/logger.dart' as log;

class Logger extends log.Logger {
  log.Logger? l;

  static Logger? _instance;

  Logger._() {
    l = log.Logger(
      printer: log.PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 8,
        lineLength: 500,
        colors: true,
        printEmojis: true,
        printTime: false,
      ),
    );
  }

  factory Logger() => _instance ??= Logger._();
}
