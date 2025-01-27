// Package: debug_logger

/// A simple logger package to display colorful debug logs in the console.


import 'dart:developer';

/// Enum for ANSI color codes.
enum LogColor {
  reset('\x1B[0m'),
  red('\x1B[31m'),
  green('\x1B[32m'),
  yellow('\x1B[33m'),
  blue('\x1B[34m'),
  magenta('\x1B[35m'),
  cyan('\x1B[36m');

  final String code;
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
  String message = "LOG",
  LogColor color = LogColor.reset,
  Object? error,
  StackTrace? stackTrace,
}) {
  String formattedMessage = '${color.code}$message${LogColor.reset.code}';
  String formattedName = '${color.code}${type ?? tag}${LogColor.reset.code}';

  log(
    formattedMessage,
    name: formattedName,
    error: error,
    stackTrace: stackTrace,
  );
}
