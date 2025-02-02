import 'package:flutter/foundation.dart';
import 'extract_file_info_service.dart';

class DebugLogServices {
  /// Private method to extract the full file path and line number from stack trace.
static (String?, String?) extractFileInfo() {
  StackTrace stackTrace = StackTrace.current;
  List<String> traceLines = stackTrace.toString().split("\n");

  // Detect the first caller OUTSIDE the package
  String? traceString;
  for (var line in traceLines) {
    if (!line.contains('/colorful_log_plus/') && !line.contains('services.dart') && !line.contains('debug_log.dart')) {
      traceString = line;
      break;
    }
  }

  if (traceString == null) return (null, null);

  // Extract file path and line number using regex
  RegExp regex = RegExp(r'\((.*?\.dart):(\d+):\d+\)');
  Match? match = regex.firstMatch(traceString);

  if (match == null) return (null, null);

  String filePath = match.group(1)!; // Extracted file path
  String lineNumber = match.group(2)!; // Extracted line number

  // Convert 'package:' paths to absolute paths (only for non-Web)
  if (!kIsWeb && filePath.startsWith('package:')) {
    filePath = resolvePackagePath(filePath) ?? filePath;
  }

  // Web workaround (show only relative package path)
  if (kIsWeb) {
    return ("[Web] $filePath:$lineNumber", lineNumber);
  }

  return ("file://$filePath:$lineNumber", lineNumber);
}
}
