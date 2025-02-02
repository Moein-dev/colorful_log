import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';

part 'extract_file_info_service.dart';

class DebugLogServices {
  /// Private method to extract the full file path and line number from stack trace.
  static (String?, String?) extractFileInfo() {
    StackTrace stackTrace = StackTrace.current;
    List<String> traceLines = stackTrace.toString().split("\n");

    // Find the first caller outside `debug_log.dart`
    String? traceString;
    for (var line in traceLines) {
      if (!line.contains('debug_log.dart')) {
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

    // Convert relative path to absolute path (Only works on non-Web)
    if (!kIsWeb && filePath.startsWith('package:')) {
      filePath = _extractFileInfoService(filePath) ?? filePath;
    }

    // Web workaround (show only relative path)
    if (kIsWeb) {
      return ("[Web] $filePath", lineNumber);
    }

    // Format for clickable paths
    return ("file://$filePath", lineNumber);
  }
}
