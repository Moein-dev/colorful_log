part of '../debug_log.dart';

/// ANSI color codes for terminal text formatting.
///
/// Usage:
/// ```dart
/// debugLog(
///   message: 'Error occurred',
///   color: LogColor.red,
/// );
/// ```
enum LogColor {
  /// Resets text to the terminal's default color.
  reset('\x1B[0m'),

  /// Red text (commonly used for errors).
  red('\x1B[31m'),

  /// Green text (commonly used for success messages).
  green('\x1B[32m'),

  /// Yellow text (commonly used for warnings).
  yellow('\x1B[33m'),

  /// Blue text (commonly used for informational messages).
  blue('\x1B[34m'),

  /// Magenta text (for emphasis or special cases).
  magenta('\x1B[35m'),

  /// Cyan text (neutral or general-purpose messages).
  cyan('\x1B[36m');

  /// The ANSI escape code for this color.
  final String code;

  /// Creates a [LogColor] instance with the associated ANSI [code].
  const LogColor(this.code);
}