
import 'package:colorful_log_plus/colorful_log_plus.dart';
import 'package:test/test.dart';

void main() {
  group('LogIconType Enum Tests', () {
    test('Should return correct emoji icons', () {
      expect(LogIconType.info.icon, 'ℹ️');
      expect(LogIconType.warning.icon, '⚠️');
      expect(LogIconType.error.icon, '❌');
      expect(LogIconType.debug.icon, '🐛');
    });
  });
}