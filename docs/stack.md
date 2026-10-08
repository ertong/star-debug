# Repository stack

## Composition and entry points

The repository builds one Flutter application from [`star.debug/`](../star.debug/).
[`pubspec.yaml`](../star.debug/pubspec.yaml) defines its Dart package and dependencies;
[`.tool-versions`](../star.debug/.tool-versions) pins Flutter 3.47.6. Dart must satisfy
`>=3.13.0 <4.0.0`. [`lib/main.dart`](../star.debug/lib/main.dart) is the application entry point.

Android, iOS, macOS, Linux, and Windows runners under the package host that same Dart application;
they are not separate products. There is no web target. Android uses Gradle/Java with built-in
Kotlin support, iOS/macOS use Xcode projects, and Linux/Windows use CMake runners.

Repository-root [`_misc/`](../_misc/) contains protobuf inputs and generation tooling.
[`_build/`](../_build/) and [`.gitlab-ci.yml`](../.gitlab-ci.yml) contain CI/release tooling.
The Python utilities support generation and publishing; there is no Python application or backend.

## Application foundations

Flutter Material/Cupertino widgets provide the UI. The global `R` holds
[`Preloaded`](../star.debug/lib/preloaded.dart), the service owner for preferences, database,
connection holders, navigation, and platform integration. There is no DI framework or local
HTTP server. [Architecture](architecture.md) explains initialization and runtime lifetimes.

- `shared_preferences`, wrapped by [`SharedPrefs`](../star.debug/lib/utils/shared_prefs.dart),
  persists app settings and address overrides.
- `grpc` and `protobuf` implement the Starlink local device clients. Committed generated
  interfaces live in [`lib/grpc/starlink/`](../star.debug/lib/grpc/starlink/).
- `Dio` handles router HTTP probes on all platforms and internet probes on iOS/desktop.
  Android internet probes use a Dart method channel to Java/OkHttp, including DNS-over-HTTPS;
  [`lib/channel/`](../star.debug/lib/channel/) is the Dart boundary. Image clipboard writes use
  the existing `clipboard` plugin on iOS/macOS/Windows and a small app channel on Android/Linux
  for cache-backed content URIs and the GTK image clipboard respectively.
- `Drift` provides generated tables/DAOs over native SQLite. `DatabaseHolder` moves execution
  to a background isolate; [`lib/db/`](../star.debug/lib/db/) contains source and generated output.
- `i18n` and `build_runner` generate localization from English/Ukrainian YAML catalogs.
  `TimeMachine` provides timezone/date support; `flutter_timezone` supplies mobile timezone IDs.
- [`LogUtils`](../star.debug/lib/utils/log_utils.dart) wraps `logger`. Firebase Core, Crashlytics,
  and Analytics initialize only on Android/iOS. Assert-enabled builds disable collection.
- `flutter_test` covers utility, protocol compatibility, persistence, connection, and widget
  behavior. [Development](development.md) documents commands and generated-file ownership.

## Build and support tooling

Flutter builds platform artifacts and resolves locked Dart dependencies. Android uses AGP 9.1.1,
Gradle 9.3.1, Kotlin compiler 2.3.20, and Java 17 or later; SDK prerequisites are in
[Development](development.md#platform-and-release-tooling).

[`_misc/protoc.sh`](../_misc/protoc.sh) runs Python `grpcio-tools` with `protoc-gen-dart` to
produce Dart interfaces. It bootstraps the root `.venv` using Python and `uv` with
[`requirements.txt`](../requirements.txt). [`msg.sh`](../star.debug/msg.sh) uses that existing
virtual environment to run the Python localization utility [`msg.py`](../star.debug/msg.py).

GitLab CI runs Flutter tests and platform builds. Android Gradle Play publishing and iOS
Fastlane/Ruby lanes publish releases; Windows CI packages runtime DLLs into an archive.
[`ci-parse-tag.sh`](../ci-parse-tag.sh) derives Flutter build name/number from release tags.
Signing and service credentials come from CI or developer machines.

Recheck this document against manifests, entry points, and build configuration when component
boundaries or technology choices change.
