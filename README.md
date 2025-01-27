# Colorful Log

A simple Dart package to log messages with colorful outputs in the console. This package provides a convenient way to debug your applications with enhanced readability using colors.

---

## Features

- Log messages with custom colors.
- Use predefined colors like `red`, `green`, `blue`, and more.
- Add custom tags or use types for log identification.
- Log errors and stack traces for debugging.

---

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  colorful_log: ^1.0.0
```

Then run:

```bash
dart pub get
```

---

## Usage

### Basic Logging

```dart
import 'package:colorful_log/colorful_log.dart';

void main() {
  // Basic log
  debugLog(message: 'This is a log message');

  // Log with custom color
  debugLog(
    message: 'This is a green log',
    color: LogColor.green,
  );

  // Log with a custom tag
  debugLog(
    message: 'This is a log with a custom tag',
    tag: 'MyTag',
    color: LogColor.blue,
  );

  // Log with error and stack trace
  try {
    throw Exception('Example exception');
  } catch (e, stackTrace) {
    debugLog(
      message: 'An error occurred',
      error: e,
      stackTrace: stackTrace,
      color: LogColor.red,
    );
  }

  // Log with a type instead of a tag
  debugLog(
    message: 'Log with type',
    type: String,
    color: LogColor.cyan,
  );
}
```

---

## API Reference

### `debugLog` Function

Logs a message with customizable parameters:

```dart
void debugLog({
  Type? type,
  String tag = 'Debugger',
  String message = "LOG",
  LogColor color = LogColor.reset,
  Object? error,
  StackTrace? stackTrace,
})
```

#### Parameters

- `type`: A Dart `Type` object for context (optional).
- `tag`: A string tag to group logs (default: `Debugger`).
- `message`: The message to log.
- `color`: A `LogColor` enum value for coloring the log message (default: `LogColor.reset`).
- `error`: An error object (optional).
- `stackTrace`: A stack trace object (optional).

---

## Enum: `LogColor`

The available colors for logging:

- `LogColor.reset`: Resets to default color.
- `LogColor.red`: Red color for errors.
- `LogColor.green`: Green color for success messages.
- `LogColor.yellow`: Yellow color for warnings.
- `LogColor.blue`: Blue color for informational messages.
- `LogColor.magenta`: Magenta color for custom emphasis.
- `LogColor.cyan`: Cyan color for general messages.

---

## Example

Check out the [example directory](example/) for a complete usage example.

Run the example:

```bash
cd example
dart run colorful_log_example.dart
```

---

## Changelog

See the [CHANGELOG.md](CHANGELOG.md) file for details on the changes made in each version.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
