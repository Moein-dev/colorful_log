# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2025-01-27

### Added

- Added the `debugLog` function to log messages with custom colors, tags, errors, and stack traces.
- Introduced the `LogColor` enum for customizable log colors, including `red`, `green`, `yellow`, `blue`, `magenta`, and `cyan`.
- Added example usage in the `example/` directory.
- Added support for logging errors and stack traces using `debugLog`.

### Changed

- Refactored the `logger` method to `debugLog` and moved it outside the `Debug` class for a more familiar API.
- Updated the public API structure to export `debugLog` via `colorful_log.dart`.

### Fixed

- Resolved issues with inconsistent log formatting for type and tag combinations.

---

## [Unreleased]

- Future changes and updates will be added here.
