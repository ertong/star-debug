# StarDebug

StarDebug is a Flutter diagnostic viewer for Starlink. It reads live dish and router status from the
local network, checks internet connectivity, imports Starlink debug-data JSON, and stores snapshots
in a local Drift database.

The repository documentation lives one level above the Flutter package:

- [Documentation index](../docs/README.md)
- [Architecture](../docs/architecture.md)
- [Development guide](../docs/development.md)

## Quick start

Use Flutter pinned by `.tool-versions`, then run from this directory:

```sh
flutter pub get
flutter run
```

Validate a change with:

```sh
flutter test
flutter analyze
dart format --output=none --set-exit-if-changed lib test
```

Generator commands and platform release workflows are documented in the
[development guide](../docs/development.md).
