// Package: debug_logger
import 'dart:developer';
import 'package:colorful_log_plus/src/services/services.dart';
part 'enums/log_icon.enum.dart';
part 'enums/log_color.enum.dart';

/// A utility for logging debug messages with customizable colors, icons, and context.
///
/// This function supports:
/// - Custom tags and message formatting.
/// - ANSI color codes for terminal output.
/// - Error and stack trace logging.
/// - Source file location tracking (optional).
///
/// Example:
/// ```dart
/// debugLog(
///   tag: 'Network',
///   message: 'Request sent',
///   color: LogColor.cyan,
///   iconType: LogIconType.info,
/// );
/// ```
///
/// Parameters:
/// - [type]: The runtime type of the class generating the log (e.g., `MyClass`).
/// - [tag]: A label for categorizing logs (default: 'Debugger').
/// - [message]: The log content (default: 'No Message').
/// - [iconType]: An emoji icon prepended to the log (default: [LogIconType.info]).
/// - [color]: ANSI color for the message text (default: [LogColor.reset]).
/// - [tagColor]: ANSI color for the tag/icon section (default: [LogColor.reset]).
/// - [error]: An error object to log alongside the message.
/// - [stackTrace]: Stack trace associated with an error.
/// - [showLogAddress]: When `true`, appends source file location (e.g., `main.dart:42`).
void debugLog({
  Type? type,
  String tag = 'Debugger',
  String message = "No Message",
  LogIconType iconType = LogIconType.info,
  LogColor color = LogColor.reset,
  LogColor tagColor = LogColor.reset,
  Object? error,
  StackTrace? stackTrace,
  bool showLogAddress = false,
}) {
  String? fileName;
  String? lineNumber;
  if (showLogAddress) {
    var fileInfo = DebugLogServices.extractFileInfo();
    fileName = fileInfo.$1;
    lineNumber = fileInfo.$2;
  }
  String iconString = "[${iconType.icon}]";
  String? filePath =
      fileName != null && lineNumber != null ? '[$fileName:$lineNumber]' : null;

  String formattedMessage =
      '${color.code}$message${LogColor.reset.code} ${filePath != null ? "\n $filePath" : ""}';
  String formattedName =
      '${tagColor.code}$iconString ${type ?? tag}${LogColor.reset.code}';

  log(
    formattedMessage,
    name: formattedName,
    error: error,
    stackTrace: stackTrace,
  );
}
