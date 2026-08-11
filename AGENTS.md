# Repository guidelines

## Start here

The Flutter application is nested under `star.debug/`. Run Flutter, Dart, and fixture-based test
commands from that directory. Repository-level protocol and CI tooling lives beside it.

Read the focused documentation before changing a central subsystem:

- [`docs/architecture.md`](docs/architecture.md) explains startup, connection lifetimes, snapshots,
  debug-data compatibility, and persistence.
- [`docs/development.md`](docs/development.md) covers generators, tests, platform tooling, and
  common traps.
- [`docs/README.md`](docs/README.md) is the documentation index and source map.

## Project structure

- `star.debug/lib/pages/` contains screens, live tabs, and dialogs.
- `star.debug/lib/controller/` owns network and persistence controllers.
- `star.debug/lib/space/` normalizes external Starlink debug-data formats.
- `star.debug/lib/utils/snapshot.dart` is the interchange model for live, imported, and stored data.
- `star.debug/lib/db/` contains Drift tables, SQL queries, DAOs, and database startup.
- `star.debug/lib/channel/` and Android Java sources implement the native method-channel boundary.
- `star.debug/test/` contains tests; `star.debug/test_resources/` contains JSON fixtures.
- `_misc/` contains protobuf sources and their generation script.
- `_build/` and `.gitlab-ci.yml` define build, test, and release jobs.

Platform runners are under `star.debug/android`, `ios`, `macos`, `linux`, and `windows`. The project
does not currently have a web target.

## Architectural rules

- `Preloaded` and the global `R` own process-wide services. Do not use dependent services before
  `Preloaded.init()` completes.
- Holder stream subscriptions express demand for live connections. Preserve listener accounting and
  cancellation in widgets.
- A connection captures its host when constructed. `close()` alone does not clear the holder's
  connection reference or guarantee immediate replacement.
- `PooledRequest.data` retains the last value even when stale. Use its timestamps,
  `hasRecentData()`, or `validData()` when freshness matters.
- Keep external JSON compatibility in `SpaceParser`, protobuf/JSON conversion in `DebugDataHelper`,
  and cross-source state in `Snapshot`.
- Keep database work behind Drift and `DatabaseHolder`; the SQLite executor runs in a background
  isolate.
- Debug-data source timestamps are seconds, while runtime and database timestamps are milliseconds.
- Coordinate method-channel contract changes between Dart and Android Java implementations.

## Commands

From `star.debug/`:

- `flutter pub get` — install locked dependencies.
- `flutter run` — launch on a selected target.
- `flutter test` — run the complete suite; this is the CI test command.
- `flutter test test/debug_data_test.dart` — run the debug-data compatibility suite.
- `flutter analyze` — apply the analyzer and repository lint configuration.
- `dart format lib test` — format Dart sources and tests.
- `dart run build_runner build --delete-conflicting-outputs` — regenerate Drift and localization
  Dart output.
- `./msg.sh sync` — align translated message YAML keys through the project virtual environment.
- `flutter build apk --debug --target-platform android-arm,android-arm64,android-x64` — reproduce
  the Android debug build used by CI.

From the repository root, run `bash _misc/protoc.sh` to regenerate Starlink protobuf Dart output.
See the prerequisites and exact ownership map in `docs/development.md`.

## Generated files

Do not manually edit generated `*.g.dart`, `*.pb*.dart`, or `*.i18n.dart` files.

- Update Drift models and `*.drift` SQL, then run `build_runner`.
- Update `lib/messages/*.i18n.yaml`, run `./msg.sh sync`, then run `build_runner`.
- Update `_misc/*.proto`, then run `_misc/protoc.sh` from the repository root.

Review and commit generated output together with its source changes. Treat platform-generated plugin
registrants the same way.

## Coding and testing conventions

Follow `analysis_options.yaml` and `flutter_lints`. Use Dart's standard two-space indentation. Name
files and directories in `snake_case`, types in `UpperCamelCase`, and members in `lowerCamelCase`.
Keep UI, connection logic, parsing, and persistence in their existing ownership areas.

Add focused `flutter_test` tests named `*_test.dart`. Use `test()` for parsing and utility behavior
and `testWidgets()` for UI interactions. For a new debug-data format, add a sanitized fixture and
verify both embedded-protobuf and JSON-only round trips. Never include credentials, Wi-Fi passwords,
or personal device data in fixtures.

Before finishing, run the narrow tests for the changed behavior, then `flutter test` and
`flutter analyze` when practical. Check formatting for touched Dart files. For generated or
platform-specific changes, also run the relevant generator or platform build.

## Commits and pull requests

Use short, imperative commit summaries, optionally with a scope such as `[android]`, `[ios]`, or
`[ci]`. Prefer informative summaries such as `[android] fix release signing`. Keep commits narrowly
scoped.

Pull requests should explain the behavior change, list validation commands, and link issues. Include
screenshots or recordings for UI changes. Call out generated files, platform-specific impact, and
configuration changes explicitly.
