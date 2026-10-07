# StarDebug documentation

StarDebug is a Flutter application for inspecting Starlink dish, router, and internet status.
It can read live data from the local Starlink network, import debug-data JSON produced by
Starlink applications, and retain snapshots in a local SQLite database.

## Reading paths

- [Stack](stack.md): repository components, entry points, frameworks, and build tooling.
- [Architecture](architecture.md): startup, connection lifetimes, snapshots, parsing, and persistence.
- [Development](development.md): setup, validation, generators, fixtures, and release tooling.
- [Obstruction maps](obstruction_maps.md): current map behavior, caches, measurements, and limitations.
- [Map protocol evidence](obstruction_map_sources.md): schema contracts, external sources, and
  geographic calibration limits. Read this before changing map geometry.
- [Agent guidance](../AGENTS.md): change scope, ownership, conventions, and operational commands.

## Source map

- [`star.debug/lib/main.dart`](../star.debug/lib/main.dart) initializes services and displays the
  loading UI.
- [`star.debug/lib/preloaded.dart`](../star.debug/lib/preloaded.dart) owns preferences, database,
  controllers, and navigation keys.
- [`star.debug/lib/controller/`](../star.debug/lib/controller/) manages local gRPC and public HTTP
  polling.
- [`star.debug/lib/space/`](../star.debug/lib/space/) normalizes Starlink debug-data layouts.
- [`star.debug/lib/utils/snapshot.dart`](../star.debug/lib/utils/snapshot.dart) carries live,
  imported, or persisted device state.
- [`star.debug/lib/db/`](../star.debug/lib/db/) defines the Drift schema, DAOs, and database
  isolate.
- [`star.debug/lib/pages/`](../star.debug/lib/pages/) renders live data, imported files, and stored
  snapshots.
- [`_misc/`](../_misc/) contains the protobuf inputs and generation script.
- [`star.debug/test_resources/`](../star.debug/test_resources/) holds reusable, anonymized
  debug-data JSON.

The Flutter package is nested under `star.debug/`. Run Flutter and Dart commands from that
directory unless a command in the development guide explicitly starts at the repository root.
