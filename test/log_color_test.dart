import 'package:colorful_log_plus/colorful_log_plus.dart';
import 'package:test/test.dart';

void main() {
  group('LogColor Enum Tests', () {
    test('Should return correct ANSI codes', () {
      expect(LogColor.reset.code, '\x1B[0m');
      expect(LogColor.red.code, '\x1B[31m');
      expect(LogColor.green.code, '\x1B[32m');
      expect(LogColor.yellow.code, '\x1B[33m');
      expect(LogColor.blue.code, '\x1B[34m');
      expect(LogColor.magenta.code, '\x1B[35m');
      expect(LogColor.cyan.code, '\x1B[36m');
    });
  });
}
