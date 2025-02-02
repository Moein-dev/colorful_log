# Changelog

All notable changes to this project will be documented in this file.

## [1.0.1] - 2025-02-02

- **Added**:
  - Introduced `DebugLogServices.extractFileInfo()` to handle file path extraction.
  - Added `_extractFileInfoService()` for resolving absolute file paths.
  - Implemented full cross-platform file path retrieval, ensuring:
    - ✅ **Windows/macOS/Linux** → Absolute paths are extracted.
    - ✅ **Android/iOS** → Relative paths are used.
    - ✅ **Web** → Displays relative paths only (no filesystem access).
  
- **Changed**:
  - **Refactored `debugLog`**:
    - Extracted stack trace handling into a dedicated service (`DebugLogServices`).
    - Improved log formatting for better readability and consistency.
  - **Updated API**:
    - `debugLog` now calls `DebugLogServices.extractFileInfo()` instead of inline stack trace processing.

- **Fixed**:
  - **Clickable log file paths**:
    - File paths in logs are now formatted as **`file://` URLs** for IDE compatibility.
    - Clicking the log address in **VS Code / IntelliJ** now navigates to the correct file & line.
  - **Fixed inconsistencies** in file path resolution across platforms.

## [1.0.0] - 2025-02-02

- **Added**:
- Initial stable release.
- Introduced a structured logging system with:
  - **Customizable tags** for better organization.
  - **ANSI color support** for improved readability.
  - **Icons for different log levels** (info, warning, error, debug).
  - **Error and stack trace logging** for better debugging.
  - **Optional source file tracking** for precise debugging.

- **Changed**:
- Improved `debugLog` function to support structured logging.
- Enhanced color and tag formatting for consistency.
- Refactored API for ease of use.

- **Fixed**:
- Resolved minor formatting inconsistencies.
- Ensured proper handling of log messages across different platforms.

---  

## [0.0.3] - 2025-01-28

- **Added**:
- Comments to LogColor enum for clarity

## [0.0.2] - 2025-01-28

- **Added**:
- Added `tagColor` parameter to the `debugLog` function, allowing customization of the color of the tag or type in log messages.

- **Changed**:

- Updated the `debugLog` function to include `tagColor` for more flexible and visually distinct log formatting.

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

## [Unreleased]

- Future changes and updates will be added here.
