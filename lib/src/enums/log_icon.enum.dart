part of '../debug_log.dart';

/// Emoji icons to prefix log messages for visual categorization.
///
/// Example:
/// ```dart
/// debugLog(
///   iconType: LogIconType.error,
///   message: 'Failed to connect',
/// );
/// ```
enum LogIconType {
  /// ℹ️ Informational messages (default).
  info('ℹ️'),

  /// ⚠️ Warnings or non-critical issues.
  warning('⚠️'),

  /// ❌ Errors or critical failures.
  error('❌'),

  /// 🐛 Debugging-specific messages.
  debug('🐛');

  /// The emoji string associated with this icon type.
  final String icon;

  /// Creates a [LogIconType] instance with the associated [icon].
  const LogIconType(this.icon);
}
