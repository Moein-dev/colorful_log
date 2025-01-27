import 'package:colorful_log_plus/colorful_log_plus.dart';
import 'package:test/test.dart';

void main() {
  group('debugLog', () {
    test('logs a message with default settings', () {
      expect(
        () => debugLog(message: 'This is a test log'),
        returnsNormally,
      );
    });

    test('logs a message with custom color and tag', () {
      expect(
        () => debugLog(
          message: 'Colored log',
          tag: 'CustomTag',
          color: LogColor.green,
        ),
        returnsNormally,
      );
    });

    test('logs a message with error and stack trace', () {
      try {
        throw Exception('Test exception');
      } catch (e, stackTrace) {
        expect(
          () => debugLog(
            message: 'Error occurred',
            error: e,
            stackTrace: stackTrace,
            color: LogColor.red,
          ),
          returnsNormally,
        );
      }
    });

    test('logs with a type instead of a tag', () {
      expect(
        () => debugLog(
          message: 'Type-based log',
          type: String,
          color: LogColor.blue,
        ),
        returnsNormally,
      );
    });
  });
}
