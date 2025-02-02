part of 'services.dart';

String? _extractFileInfoService(String filePath) {
  try {
    return _resolvePackagePath(filePath) ?? filePath;
  } catch (e) {
    log("Error resolving absolute path: $e");
    return null;
  }
}

/// Convert 'package:' paths to absolute file paths
String? _resolvePackagePath(String packagePath) {
  String packageRoot = Directory.current.path; // Get project root
  return "$packageRoot/lib/${packagePath.replaceFirst('package:', '')}";
}
