import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';

part 'extract_file_info_service.dart';

class DebugLogServices {
/// Private method to extract the full file path and line number from stack trace.
static (String?, String?) extractFileInfo() {
  StackTrace stackTrace = StackTrace.current;
  String traceString = stackTrace.toString().split("\n")[1];

  // Extract file path and line number using regex
  RegExp regex = RegExp(r'(\S+\.dart):(\d+):\d+');
  Match? match = regex.firstMatch(traceString);

  if (match == null) return (null, null);

  String filePath = match.group(1)!; // Extracted file path
  String lineNumber = match.group(2)!; // Extracted line number

  // Convert relative path to absolute path (Only works on non-Web)
  if (!kIsWeb) {
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