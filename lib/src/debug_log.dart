// Package: debug_logger
import 'dart:developer';

/// Enum for ANSI color codes for logging.
enum LogColor {
  /// Resets to the default console color.
  reset('\x1B[0m'),

  /// Red color, typically used for errors.
  red('\x1B[31m'),

  /// Green color, typically used for success messages.
  green('\x1B[32m'),

  /// Yellow color, typically used for warnings.
  yellow('\x1B[33m'),

  /// Blue color, typically used for informational messages.
  blue('\x1B[34m'),

  /// Magenta color, typically used for emphasis.
  magenta('\x1B[35m'),

  /// Cyan color, typically used for general or neutral messages.
  cyan('\x1B[36m');

  /// The ANSI escape code associated with this color.
  final String code;

  /// Creates a [LogColor] instance with the associated ANSI [code].
  const LogColor(this.code);
}

/// Logs a message with optional color, tag, and additional details.
///
/// - [type]: The class or type generating the log (optional).
/// - [tag]: A custom tag for the log (default is 'Debugger').
/// - [message]: The log message (default is 'LOG').
/// - [color]: The ANSI color for the log message (default is no color).
/// - [error]: An optional error object to log.
/// - [stackTrace]: An optional stack trace to log.
void debugLog({
  Type? type,
  String tag = 'Debugger',
  String message = "No Message",
  LogColor color = LogColor.reset,
  LogColor tagColor = LogColor.reset,
  Object? error,
  StackTrace? stackTrace,
}) {
  String formattedMessage = '${color.code}$message${LogColor.reset.code}';
  String formattedName = '${tagColor.code}${type ?? tag}${LogColor.reset.code}';

  log(
    formattedMessage,
    name: formattedName,
    error: error,
    stackTrace: stackTrace,
  );
}
