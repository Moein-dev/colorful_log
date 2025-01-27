import 'package:colorful_log_plus/colorful_log_plus.dart';

void main() {
  // Basic log with default settings
  debugLog(message: 'This is a default log');

  // Log with a custom color
  debugLog(
    message: 'This is a green log',
    color: LogColor.green,
  );

  // Log with a custom tag
  debugLog(
    message: 'This log has a custom tag',
    tag: 'CustomTag',
    color: LogColor.blue,
  );

  // Log with error and stack trace
  try {
    throw Exception('Example exception');
  } catch (e, stackTrace) {
    debugLog(
      message: 'An error occurred',
      error: e,
      stackTrace: stackTrace,
      color: LogColor.red,
    );
  }

  // Log with a type instead of a tag
  debugLog(
    message: 'Logging with a type',
    type: String,
    color: LogColor.cyan,
  );

  // Logging a warning
  debugLog(
    message: 'This is a warning',
    tag: 'WarningTag',
    color: LogColor.yellow,
  );
}
