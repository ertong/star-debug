# Obstruction map implementation review

Review date: 2026-10-07. Reviewed HEAD: `a40fd5f`; baseline: `8effb2c`.
Three independent reviews used GPT-6 Astra with high reasoning for geometry, integration,
and UI/UX. Findings were reconciled against source and targeted reproduction probes.
The original review changed documentation only. The follow-up described under F2 implements
identity-change invalidation. The R2 follow-up extracts geometry and resolves F3; other suggested
fixes remain unimplemented.

Read [protocol evidence and interpretation](obstruction_map_sources.md) for external references
and confidence limits. Architectural proposals have a separate home in
[possible refactors](proposals/obstruction_map_refactoring.md).

## Commit scope

All four feature commits are dated 2026-10-07. The preceding protocol refresh at `c380342`
and field additions at `03737cd` were inspected where they affect the map contract.

| Commit | Relevant change |
| --- | --- |
| `291bd35` | Map polling, shared widget, snapshot/import/export, schema v6, persistence, initial tests |
| `64c545c` | First-status/reconnect polling, quaternion references, readiness and UI/test expansion |
| `e819511` | Singular heading projection and map presentation revisions |
| `a40fd5f` | Projected north-up display, integrated sector cuts/counts, padded rotated grid |

## Assessment

The feature has coherent ownership and broad synthetic tests. Normal binary/JSON round trips,
nullable storage migration, shared live/snapshot rendering, and dialog updates work in the
tested paths. The main concerns are valid-wire compatibility, map ownership across reconnects,
some inconsistent drawing geometry, and accessibility. Passing existing tests does not resolve
these concerns because several relevant inputs are absent or encode the same assumptions as
the implementation.

P2 below means a concrete correctness or usability defect worth fixing in a focused follow-up.
P3 identifies a lower-impact inconsistency or product decision. No P0/P1 defect was established.
Geographic calibration uncertainty is tracked separately from confirmed bugs.

## Confirmed findings

### F1 — P2: Valid quaternions with omitted zero fields lose UT overlays

Evidence: [`DishAttitude.fromQuaternion`](../star.debug/lib/utils/obstruction_map_geometry.dart),
originally in `lib/utils/obstructions.dart`, lines 267–272 at reviewed HEAD;
[`Quaternion` schema](../_misc/starlink.proto).
The schema has ordinary proto3 floats, but the reader requires all four `hasQ*()` flags.
Numeric zero may be omitted by a standard producer, even though Dart exposes presence methods;
see the [protobuf presence specification](https://protobuf.dev/programming-guides/field_presence/).

Reproduction: wire bytes `1d 00 00 80 3f` encode `q_y=1`, with other components defaulting to
zero. The resulting quaternion `(0,0,1,0)` has unit norm and a present outer status message.
The implementation rejects it; the same values with explicitly present zeros are accepted.
Consequently valid telemetry can hide UT north alignment, compass references, sectors, and arrows.

Suggested change: validate the present quaternion message by component values, finite checks,
and unit norm. Do not require presence of zero scalar components. Keep rejection of an empty
zero-norm message. The existing test named `invalid attitude cannot be replaced by bearing or
target bearing` explicitly treats `Quaternion(qScalar: 1)` as invalid and should be corrected.
Add sparse wire and JSON compatibility tests. Introduced by `64c545c`.

### F2 — P2: A changed dish identity can inherit and persist the old dish's map

**Follow-up, 2026-10-07:** fixed by `8769bc9`. On a different nonempty status ID,
`DishConnection` clears map data, receive time, and API version before notifying listeners, then
requests a map immediately. The last known ID survives missing-ID statuses. Regression tests
cover changes with and without stream replacement, same-device retention, cleared notification
state, and no duplicate request on the next tick. The evidence below records the reviewed bug.

Evidence: [`DishConnection.onReceived`](../star.debug/lib/controller/conn/dish_connection.dart),
[`buildLiveSnapshot`](../star.debug/lib/pages/live.dart), and
[`DishLogController.forceStore`](../star.debug/lib/controller/dish_log_controller.dart).
The map pool survives stream replacement. A new status requests a fresh map but does not check
whether the retained map belongs to the newly reported device ID.

Reproduction: receive A's status/map, replace the request stream on the same connection, then
receive B's status before B's map. `buildLiveSnapshot()` pairs B's ID with A's map. A temporary
probe also saves that snapshot and reads A's map from a database row for B. A foreground network
switch between dishes sharing the default host can cause this ordering; an explicit settings
reconnect constructs a new connection and avoids this particular path.

Suggested change: associate the cache with device identity and invalidate it on a confirmed
identity change. Preserve last-map retention for same-device reconnects. Test a delayed or
unsupported B map as well as the normal refresh. This extends an existing cross-stream cache
hazard to the new map field; it is not a regression in the generic transport implementation.
The existing reconnect test checks retention using empty status messages, so it misses ownership.

### F3 — P2: Numeric bearings disagree with cuts on rectangular EARTH grids

**Follow-up, 2026-10-07:** fixed by the [R2 extraction](proposals/obstruction_map_refactoring.md#r2--separate-measurements-from-presentation-geometry).
Numeric marks use the same ray/rectangle intersection as sector cuts, then move inward along
that ray. A recording-canvas regression checks all four degree marks on wide, tall, and square
EARTH maps. The evidence below records the reviewed bug.

Evidence: [`_ObstructionPainter._compass`](../star.debug/lib/widgets/obstruction_map.dart),
lines 968–976 at reviewed HEAD. Numeric marks scale X by rectangle width and Y by height,
whereas the sector lines use equal pixel pitch and preserve the direction angle.

Reproduction: on the committed 2×3 shape, the painted `45°` mark lies at about 56.31° from
north while its sector boundary is at 45°. A 1×4 shape would place it at about 75.96°.
A temporary recording-canvas probe checks the actual painter's paragraph positions and cuts.
This affects rectangular maps, including imports; common square maps are unaffected.

Suggested change: use the same ray/rectangle intersection as cardinal labels, then move inward
for numeric marks. Add a painter assertion for nonsquare dimensions; rectangular count and PNG
tests alone cannot catch a mislabeled canvas.

### F4 — P2: Antiparallel target flips at the horizontal-panel singularity

Evidence: [`ObstructionMapGeometry.headingProjection`](../star.debug/lib/utils/obstruction_map_geometry.dart),
originally `ObstructionMapData.headingProjection` in `lib/utils/obstructions.dart`,
lines 225–234 at reviewed HEAD. Its projected-Down fallback uses only the target elevation's
sign, so opposite bearings get the same fallback direction when their horizontal projections
vanish. The actual-heading limiting rule is applied to targets without distinguishing sides.

Reproduction: UT panel bearing 90°, panel elevation +0.001°, target bearing 270° and elevation
40° gives approximately `(0,+0.76604444)` before display rotation. At exactly zero panel
elevation it becomes `(0,-0.76604444)`, identical to the 90° target. Thus the antiparallel
target reverses 180° at the branch. The actual panel heading has the intended one-sided limit
from positive panel elevation.

Suggested change: distinguish parallel and antiparallel target limits or explicitly suppress
ambiguous targets. Add target-specific singular tests with both signs. Existing singular tests
cover actual heading; the target widget test uses a nonsingular panel. Introduced by `e819511`.

### F5 — P2: Summary status text has insufficient light-theme contrast

Evidence: [`_MapView.stateColor`](../star.debug/lib/widgets/obstruction_map.dart) uses fixed
signal colors as the foreground of the small summary label. The actual light
[`StarDebugTheme`](../star.debug/lib/theme.dart) card surface is `#f9f9ff` in the tested SDK.

| State foreground | Measured contrast against that surface |
| --- | --- |
| Red `#e34b54` | 3.707:1 |
| Amber `#e7aa46` | 1.956:1 |
| Blue `#279cde` | 2.903:1 |

All are below the 4.5:1 small-text
[readability benchmark](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html).
The measurements use Flutter's actual theme and color luminance, rather than assuming white.

Suggested change: use readable theme-aware status text colors; keep signal colors for map
pixels and swatches. Check both app themes. The current layout test uses generic `ThemeData`
and checks exceptions, so it does not validate this property.

### F6 — P2: Sector results have no nonvisual equivalent

Evidence: [`_MapCanvas`](../star.debug/lib/widgets/obstruction_map.dart) exposes only total
observed/blocked counts. Sector percentages/counts exist solely in painted text; the painter's
`semanticsBuilder` is null and the metrics contain no sector breakdown. Flutter documents the
[semantics extension point](https://api.flutter.dev/flutter/rendering/CustomPainter/semanticsBuilder.html).

Reproduction: a synthetic 5×5 EARTH map gives the first sector 1 blocked of 3 observed samples.
The detail semantics tree contains the aggregate 25/1 description, but neither `33.3%` nor
`1/3`. A screen-reader user can open details but cannot access its directional results.

Suggested change: provide localized sector descriptions or an accessible expandable list of
bearing ranges, counts, and percentages. Preserve the UT current-attitude qualification and
distinguish no samples from zero blocked samples. Add semantics assertions.

### F7 — P2: Painted labels ignore text scaling

Evidence: [`_ObstructionPainter._sectorLabels` and `_text`](../star.debug/lib/widgets/obstruction_map.dart)
construct `TextPainter` with fixed 9–12 pixel fonts and no scaler. `_MapCanvas` passes no
`MediaQuery` text scaler. Ordinary dialog text scales, while canvas sector results and compass
labels stay small. Flutter's [scaling API](https://api.flutter.dev/flutter/painting/TextPainter/textScaler.html)
explains how custom text receives the platform preference.

Suggested change: pass the scaler through layout and repaint inputs, recompute collision
bounds, and retain readable sector results outside the canvas when labels cannot fit. Test
larger scaling independently of theme, language, and frame. The existing 1.3× layout test
cannot establish canvas readability. This is distinct from F6: visible text must be usable
even for users who do not use a screen reader.

## Lower-priority inconsistencies and decisions

- **F8 — P3, map-only capability gap:** `SpaceParser` accepts a standalone map envelope, but
  `Snapshot.hasData()`, `DebugDataPage.newData()`, `SnapshotPage`, and `DishWidget` require device
  status for admission/rendering. A temporary probe confirms valid map-only JSON parses but
  produces `hasData()==false` and no map widget. Either implement a status-independent viewer
  with a timestamp/identity policy or document the narrower UI contract. Parser independence
  alone does not promise standalone viewing; the architecture now states that distinction.
- **F9 — P3, frozen snapshot wording:** `_MapView.unavailable` uses live-progress phrases for
  all-unobserved or unready imported maps, and unusable maps say the dish has not provided one
  "yet." An immutable snapshot cannot continue collecting. Use capture-time wording for
  `live=false`; review the English and Ukrainian catalogs together.
- **F10 — P3, lost diagnostics:** `291bd35` removed the old obstruction rows. The replacement
  details restore most fields, but `timeObstructed`, numeric `patchesValid`, and
  `avgProlongedObstructionValid` are no longer visible. The latter two still gate display.
  Decide whether these omissions are intentional; a raw-statistics expansion would preserve
  diagnostic access without filling the summary with protocol fields.

## Unresolved protocol assumptions

The inverse-Hamilton algebra, quaternion sign invariance, canvas Y inversion, north rotation,
and projected-basis sector inversion agree internally. That does not establish the raw UT
pixel-to-panel transform, its origin, or geographic calibration across tilt and motion.
The [sources document](obstruction_map_sources.md#reference-frames-and-attitude-observed-behavior)
explains the external evidence and needed captures. Do not report a confirmed transpose bug
based only on the telemetry field name, or treat synthetic rotations as independent calibration.

Explicitly zero `patchesValid` currently hides a map, while absent counts preserve compatibility.
The schema does not define this readiness policy or a guaranteed collection duration. Likewise,
the map and status are polled independently; displayed attitude/statistics are the latest status,
not necessarily the status at map reception. Their timestamps cannot recover earlier attitudes
of accumulated samples. These are contract limits requiring firmware evidence, not proven
defects in the matrix calculations.

## Code quality and UX observations

The immutable normalized signal copy, bounded dimensions/work, four-connected patch counting,
separate receive metadata, unknown-frame suppression, and graphics-resource disposal are sound.
The dialog updates through its notifier and removes its route when the source disappears.
The responsive body scrolls, and the reading guide separates samples, physical obstacles,
unknown bands, and outages. Localization covers both current catalogs.

The continuous raster gradient can make near-zero samples look blocked even though only exact
zero counts as blocked. Target arrows lack the actual arrow's dark outline; coincident arrows
can obscure one another. Both deserve visual checks with real telemetry before changing the
palette or arrow policy. No device screenshots or manual platform UX checks were performed.

Per-view sector recalculation and painting every cell are plausible performance costs, especially
at the accepted 262,144-cell limit. No performance regression was measured. Cache only after
profiling representative maps; proposed ownership and geometry extractions are described in
the separate refactoring file.

## Original review validation and coverage

Validation used Flutter 3.47.6 / Dart 3.13.5 in an isolated copy of the app, with locked
dependencies resolved offline. The main checkout's cached package configuration pointed to
Windows paths and its first test
attempt failed before execution on the time-machine asset. Incidental generated plugin changes
were restored; no runtime, generated source, dependency lock, or committed tests were changed.

Commands below run from the Flutter package. The installed Flutter tool was invoked via its
cached tool snapshot to avoid its shell launcher's SDK-stamp writes; the logical commands were:

```sh
flutter pub get --offline --enforce-lockfile
flutter test --no-pub test/obstruction_map_test.dart \
  test/dish_obstruction_connection_test.dart \
  test/obstruction_map_persistence_test.dart test/debug_data_test.dart
flutter test --no-pub
flutter analyze --no-pub
```

- Focused committed tests: **49 passed**.
- Complete committed suite: **108 passed**.
- **Seven temporary characterization probes passed**, covering F1–F6 and F8 with integration,
  painter, protobuf, contrast, and semantics checks. They assert existing shortcomings rather
  than desired behavior; passing them confirms reproduction, not a fix. F7 follows directly
  from scaler-free `TextPainter` construction. Probe files are outside the repository.
- Analyzer: **42 existing findings** (22 warnings, 20 informational), no errors, exit code 1.
  These include unused declarations,
  deprecated APIs, async-context lints, and dead-code warnings. Temporary probes were excluded
  from the final run. No findings target the new map utility/widget or their committed tests;
  warnings in surrounding files remain outside this documentation-only task.

At reviewed HEAD, remaining coverage included real map/status calibration pairs, changed identity with failed
map refresh, automatic logging with maps, the import UI's standalone-map policy, sparse
proto3 default fields, numeric label geometry, screen-reader sector results, actual app themes,
larger text scaling, and realistic 123×123 rendering/performance. Migration tests construct
synthetic older schemas; they do not substitute for archived production upgrade databases.

## Identity-change follow-up validation

The F2 fix adds two connection regression cases and gives the existing reconnect test a real
device ID. In the isolated app copy, connection/persistence tests passed (9 tests), followed by
the full suite (110 tests). Analyzer findings remained unchanged at 42, with no errors or
findings in the changed source/test. The scoped test formatting check passed; the connection
file still fails formatting as its HEAD baseline does, and its existing style/CRLF was retained.
Diff whitespace validation passed with `core.whitespace=cr-at-eol` for that file's line endings.

## R2 extraction follow-up validation

The extraction adds ten geometry/analysis tests and one painter regression covering all four
numeric bearings on wide, tall, and square EARTH grids. The isolated app copy passed the focused
map suite (49 tests) and complete suite (121 tests). `flutter analyze --no-pub` still reports the
same 42 baseline findings, with no errors or new findings. Formatting checks passed for all eight
changed/new Dart files without rewriting unrelated code; diff whitespace and local documentation
link checks also passed. An independent Astra/high review found no substantive regression.
