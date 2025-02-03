class DebugLogServices {
  /// Private method to extract the full file path and line number from stack trace.
  static (String?, String?) extractFileInfo() {
    StackTrace stackTrace = StackTrace.current;
    List<String> traceLines = stackTrace.toString().split("\n");

    // Extract the first valid log call location outside the package
    RegExp regex = RegExp(r'\((.*?\.dart):(\d+):\d+\)');
    for (var line in traceLines) {
      if (!line.contains("/colorful_log_plus/") && !line.contains("services.dart") && !line.contains("debug_log.dart")) {
        Match? match = regex.firstMatch(line);
        if (match != null) {
          String filePath = match.group(1)!;
          String lineNumber = match.group(2)!;

          // Extract only the file name from the full path
          String fileName = filePath.split("/").last;
          return (fileName, lineNumber);
        }
      }
    }
    return ("", "");
  }
}
