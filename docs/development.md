# Development guide

## Prerequisites and setup

The Flutter package is [`star.debug/`](../star.debug/). Its `.tool-versions` pins Flutter `3.47.6`,
and `pubspec.yaml` requires Dart `>=3.13.0 <4.0.0`.

From the repository root:

```sh
cd star.debug
flutter pub get
flutter run
```

Choose a connected mobile device or an enabled desktop target. Live dish and router views require
network access to the Starlink subnets. The defaults are `192.168.100.1` for the dish and
`192.168.1.1` for the router; the settings screen can persist alternate IPv4 addresses.

Firebase initializes only on Android and iOS. Desktop development does not require Firebase
startup, but platform plugin availability can still differ.

Follow the [Change scope rules](../AGENTS.md#change-scope): preserve surrounding style and
pre-existing changes, and review each diff hunk for task relevance.

## Validation

Run commands from `star.debug/` unless noted otherwise:

```sh
flutter test
flutter analyze
```

Check formatting by passing only the Dart files needed for the task to
`dart format --output=none --set-exit-if-changed`. This check does not write changes. A formatting
failure in existing code does not authorize restyling that code. Report pre-existing findings
outside the task's scope, and use a writing formatter only when its edits stay within that scope.
Repository-wide formatting requires an explicit formatting request.

CI runs `flutter test`. Before completing a change, also run the analyzer and scoped formatting
check. Use a focused test during iteration, for example:

```sh
flutter test test/debug_data_test.dart
```

The Android branch build used by CI is:

```sh
flutter build apk --debug --target-platform android-arm,android-arm64,android-x64
```

## Generated code

Generated files are committed. Edit their inputs and regenerate; do not patch generated output.

- Drift sources are `lib/db/database.dart`, table models, and `lib/db/**/*.drift`. They generate
  `lib/db/**/*.g.dart` through
  `dart run build_runner build --delete-conflicting-outputs`.
- Localization sources are `lib/messages/*.i18n.yaml`. They generate adjacent `*.i18n.dart` files
  through `dart run build_runner build --delete-conflicting-outputs`.
- Protocol sources are the repository-root `_misc/*.proto` files. From the repository root,
  `bash _misc/protoc.sh` generates `star.debug/lib/grpc/starlink/*.pb*.dart`.

The protobuf script requires Python 3 with `venv` support and `uv` to bootstrap a repository-root
`.venv` from `requirements.txt` when absent. It also requires `protoc-gen-dart` on `PATH`:

```sh
dart pub global activate protoc_plugin
```

After generation, review generated diffs together with their source changes.
[`analysis_options.yaml`](../star.debug/analysis_options.yaml) excludes generated Drift,
protobuf, and localization output from analysis.

For active work on Drift or localization sources, continuous generation is available:

```sh
dart run build_runner watch
```

Launcher icon inputs and settings are in `pubspec.yaml` and `star.debug/_misc/`. Regenerate platform
icons from `star.debug/` with:

```sh
flutter pub run flutter_launcher_icons
```

## Localization workflow

English is the source catalog in `lib/messages/messages.i18n.yaml`; Ukrainian is in the adjacent
`messages_uk.i18n.yaml`. When adding or removing keys:

```sh
./msg.sh sync
dart run build_runner build --delete-conflicting-outputs
```

`msg.sh` invokes `msg.py` with the repository-root `.venv/bin/python` and forwards all arguments.
It fails with setup guidance if the project virtual environment does not exist. `msg.py sync`
aligns non-English keys with English. Missing strings are retained as marked entries for
translation, and removed English keys are preserved as obsolete entries rather than silently
discarded. Its optional `--auto` mode calls an external translation service, so use it only when
network access and external data submission are appropriate. The optional translator currently
embeds key-like strings and prints the selected token; their validity was not checked.

The wrapper shares the project virtual environment used by `_misc/protoc.sh`. Its dependencies are
listed in the repository-root `requirements.txt`.

## Database changes

The schema inputs are:

- `lib/db/models/*.dart` for table definitions;
- `lib/db/database.drift` for shared imports and indexes;
- `lib/db/dao/*.drift` for named SQL queries;
- `lib/db/database.dart` for schema version and migration behavior.

For a schema change:

1. Update the appropriate table or Drift query source.
2. Update `Database.schemaVersion` and migration behavior when persisted data needs it.
3. Run `dart run build_runner build --delete-conflicting-outputs`.
4. Exercise a fresh database and an upgrade from every supported prior schema.

The database runs in a background isolate. Resolve platform paths and plugin calls before crossing
the isolate boundary; the current `DatabaseHolder` deliberately computes the path on the main
isolate.

## Debug-data compatibility tests

`test/debug_data_test.dart` is the main compatibility suite. Each fixture is parsed, converted back
to StarDebug JSON, parsed with embedded `_proto` data, and parsed again after those binary fields
are removed. Add assertions for fields that distinguish a new format instead of only asserting
that parsing succeeds.

Fixtures belong in `test_resources/` and must not contain credentials, Wi-Fi passwords, or personal
device identifiers. Tests must run from `star.debug/` because fixture paths are relative to that
directory.

`test/geoip_test.dart` covers address conversion and Starlink feed matching. The current
`widget_test.dart` is only an empty placeholder, so UI changes need focused `testWidgets()` coverage
rather than relying on it.

## Platform and release tooling

Android builds require SDK platform `platforms;android-37.0`, Build Tools `36.0.0`,
NDK `28.2.13676358`, and Java 17 or later. The project uses AGP `9.1.1`, Gradle `9.3.1`,
and built-in Kotlin with compiler `2.3.20`. Compile SDK 37.0 is required by
`permission_handler_android` 14.x; the app targets API 36.

Android CI selects `ertong/flutter:3.47.6-api37-jdk17`; its image contents are external to this
repository. macOS CI uses asdf; Windows CI installs the pinned Flutter release in the job
workspace. The dependency lockfile keeps transitive versions reproducible.
The clipboard dependency retains its Git pin because published version 3.0.14 lacks the
Windows include-path fix.

Platform projects live under `star.debug/android`, `ios`, `macos`, `linux`, and `windows`.
Important platform-specific code includes:

- Android `MainActivity.java` and `HttpTester.java` for native internet probes;
- Android Gradle configuration for Play internal-track publishing;
- iOS Fastlane lanes for signing and TestFlight;
- bundled Windows runtime DLLs copied into the CI release archive.

The iOS bundle is locked by `ios/Gemfile.lock`. Install it with `bundle install`; update Ruby gems,
CocoaPods, or signing profiles only as a deliberate release-maintenance change and review their
lockfile and project diffs.

The GitLab pipeline defines Android tests/builds, an unsigned iOS branch build, Windows release
archives, Play publishing, and TestFlight publishing. The Windows job is conditional on
`DIAWI_TOKEN`. `ci-parse-tag.sh` derives Flutter build name and number options from release tags.

Release credentials, signing material, service-account JSON, and generated environment files are
CI or developer-machine inputs. Do not add new secrets or personal provisioning data to fixtures,
documentation, or source control.

## Environment gotchas

- Run Flutter, Dart, and fixture-based tests from `star.debug/`, not the repository root.
- After switching host operating systems, regenerate ignored package configuration with
  `flutter pub get`; cached paths from another host can fail before tests execute.
- `msg.sh` needs the existing root `.venv`; unlike `_misc/protoc.sh`, it does not bootstrap it.
- Check [Architecture](architecture.md) for connection freshness, captured hosts, timestamp units,
  and import compatibility contracts before changing those paths.
