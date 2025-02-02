part of 'services.dart';

String? _extractFileInfoService(String filePath){
      try {
      return File(filePath).absolute.path;
    } catch (e) {
      log("Error resolving absolute path: $e");
      return null;
    }
}