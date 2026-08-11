# Repository Guidelines

## Project Structure & Module Organization

The Flutter application lives in `star.debug/`.
Run Flutter and Dart commands from that directory.

Key paths include:

- `lib/pages/` for screens and dialogs.
- `lib/controller/` for connections and state.
- `lib/space/` for Starlink data parsing.
- `lib/db/` for Drift models and DAOs.
- `lib/utils/` for shared helpers.
- `assets/images/` for application images.
- `test/` for tests and `test_resources/` for JSON fixtures.

Platform projects contain platform-specific integration.
They are under `android/`, `ios/`, `macos/`, `linux/`, and `windows/`.
Protocol definitions are maintained in `_misc/`.
Generated protobuf, localization, and Drift Dart files live beneath `lib/`.

## Build, Test, and Development Commands

From `star.debug/`, use:

- `flutter pub get` — install locked dependencies.
- `flutter run` — launch on a connected device or selected desktop target.
- `flutter test` — run the complete `flutter_test` suite; this is the CI test command.
- `flutter analyze` — apply the analyzer and repository lint configuration.
- `dart format lib test` — format Dart sources and tests.
- `dart run build_runner build --delete-conflicting-outputs` — regenerate Drift and JSON
  serialization outputs after model changes.
- `python msg.py sync` — synchronize generated localization files after editing message YAML.
- `flutter build apk --debug --target-platform android-arm,android-arm64,android-x64` —
  reproduce the Android debug build used by CI.

## Coding Style & Naming Conventions

Follow `analysis_options.yaml` and `flutter_lints`.
Use Dart's standard two-space indentation.
Name files and directories in `snake_case`, types in `UpperCamelCase`, and members in
`lowerCamelCase`.
Keep UI, connection logic, parsing, and persistence in their existing modules.
Do not manually edit generated `*.g.dart`, `*.pb*.dart`, or `*.i18n.dart` files.
Update their source definitions and regenerate them instead.

## Testing Guidelines

Add focused `flutter_test` tests named `*_test.dart`.
Use `test()` for parsing and utility behavior, and `testWidgets()` for UI interactions.
Store reusable debug-data fixtures in `test_resources/`.
Do not include credentials or personal device data in fixtures.
Run tests from `star.debug/` because fixture paths are repository-relative.
No numeric coverage threshold is configured; cover regressions and new branches meaningfully.

## Commit & Pull Request Guidelines

Recent commits use short, imperative summaries.
They sometimes include a scope such as `[ios]` or `[ci]`.
Prefer informative forms like `[android] fix release signing` over placeholder messages.
Keep commits narrowly scoped.

Pull requests should explain the behavior change, list validation commands, and link issues.
Include screenshots or recordings for UI changes.
Call out generated files, platform-specific impact, and configuration changes explicitly.
