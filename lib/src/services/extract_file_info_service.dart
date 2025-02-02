import 'dart:io';

export 'services.dart';

/// Convert 'package:' paths to absolute file paths
String? resolvePackagePath(String packagePath) {
  String packageRoot = Directory.current.path; // Get project root
  return "${packageRoot}lib/${packagePath.replaceFirst('package:', '')}";
}
