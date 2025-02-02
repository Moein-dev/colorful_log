# Colorful Log Plus

A simple and powerful debugging logger for Dart applications. This package allows developers to log messages with customizable colors, icons, and context information, making debugging easier and more organized.

## Features

- 📝 **Customizable log messages** with tags, colors, and icons.
- 🎨 **ANSI color codes** for terminal output.
- 🛑 **Error and stack trace logging**.
- 🔍 **Source file location tracking** (optional).
- 🚀 **Lightweight and easy to use**.

---

## Installation

Add the following dependency to your `pubspec.yaml`:

```yaml
dependencies:
  colorful_log_plus: ^1.0.2
```

Then, run:

```sh
flutter pub get
```

---

## Importing the Package

```dart
import 'package:colorful_log_plus/colorful_log_plus.dart';
```

---

## Usage

### Basic Logging

```dart
debugLog(message: "This is a simple log message");
```

### Logging with a Custom Tag

```dart
debugLog(tag: 'Auth', message: "User logged in successfully");
```

### Using Colors

```dart
debugLog(
  message: "This is a warning message",
  color: LogColor.yellow,
);
```

### Adding an Icon

```dart
debugLog(
  iconType: LogIconType.error,
  message: "Failed to fetch data",
);
```

### Logging Errors with Stack Trace

```dart
try {
  throw Exception("Something went wrong");
} catch (e, stack) {
  debugLog(
    message: "An error occurred",
    iconType: LogIconType.error,
    color: LogColor.red,
    error: e,
    stackTrace: stack,
  );
}
```

### Showing Source File Location

```dart
debugLog(
  message: "Debugging in progress...",
  showLogAddress: true,
);
```

---

## Log Levels and Icons

| Log Type  | Icon  |
|-----------|-------|
| Info      | ℹ️  |
| Warning   | ⚠️  |
| Error     | ❌  |
| Debug     | 🐛  |

---

## Available Colors

| Name    | Example |
|---------|---------|
| Reset   | 🔲 Reset |
| Red     | 🟥 Red |
| Green   | 🟩 Green |
| Yellow  | 🟨 Yellow |
| Blue    | 🟦 Blue |
| Magenta | 🟪 Magenta |
| Cyan    | 🟦 Cyan |

---

## Contributing

Feel free to open issues or submit pull requests to improve this package!

---

## License

This package is available under the MIT License.
