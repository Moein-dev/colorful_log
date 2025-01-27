# Changelog

All notable changes to this project will be documented in this file.

## [0.0.3] - 2025-01-28

- **Added**:
- Comments to LogColor enum for clarity

---

## [0.0.2] - 2025-01-28

- **Added**:
- Added `tagColor` parameter to the `debugLog` function, allowing customization of the color of the tag or type in log messages.

- **Changed**:

- Updated the `debugLog` function to include `tagColor` for more flexible and visually distinct log formatting.

---

## [0.0.1] - 2025-01-27

- **Added**:
- Added the `debugLog` function to log messages with custom colors, tags, errors, and stack traces.
- Introduced the `LogColor` enum for customizable log colors, including `red`, `green`, `yellow`, `blue`, `magenta`, and `cyan`.
- Added example usage in the `example/` directory.
- Added support for logging errors and stack traces using `debugLog`.

- **Changed**:
- Refactored the `logger` method to `debugLog` and moved it outside the `Debug` class for a more familiar API.
- Updated the public API structure to export `debugLog` via `colorful_log.dart`.

- **Fixed**:
- Resolved issues with inconsistent log formatting for type and tag combinations.

---

## [Unreleased]

- Future changes and updates will be added here.
