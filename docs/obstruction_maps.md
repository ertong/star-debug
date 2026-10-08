# Obstruction maps

This guide describes the current implementation. The [protocol reference](obstruction_map_sources.md)
separates schema contracts, external observations, and calibration assumptions. General connection
and storage lifetimes are in [Architecture](architecture.md).

## Ownership and data flow

- [`DishConnection`](../star.debug/lib/controller/conn/dish_connection.dart) requests a map on the
  first successful status of each stream, then every 30 seconds. A different nonempty dish ID
  clears the cached map, reception time, and API version before notification and requests a new
  map immediately. Missing IDs retain the last known ID; same-device reconnects retain the map.
- [`Snapshot`](../star.debug/lib/utils/snapshot.dart) carries the map, reception time, and API
  version independently of status. Both forced and automatic saves serialize these fields.
- [`ObstructionMapData`](../star.debug/lib/utils/obstructions.dart) makes an immutable row-major
  sample copy and calculates classification, totals, and the largest four-connected blocked patch.
- [`ObstructionMapGeometry`](../star.debug/lib/utils/obstruction_map_geometry.dart) owns attitude
  references, rotation, sectors, heading projections, and equal-pitch layout. Compass marks,
  numeric bearings, cuts, and badges use the same ray/rectangle intersection on rectangular maps.
- [`ObstructionSectorOverlay`](../star.debug/lib/utils/obstruction_map_analysis.dart) calculates
  directional sample counts outside painting.
- [`ObstructionMapPalette`](../star.debug/lib/utils/obstruction_map_rendering.dart) shares signal
  colors between the widget bitmap and raw PNG export.
- [`ObstructionMapWidget`](../star.debug/lib/widgets/obstruction_map.dart) owns images, the sector
  cache, text layout, collision handling, and the updating details dialog. Removing the source
  closes its dialog. `forSnapshotImage` uses a detailed canvas and compact statistics/orientation
  grids, with legends and warnings instead of popup controls.

## Samples and readiness

Dimensions must be positive, at most 1024 on either axis, with at most 262,144 cells and exactly
`rows × cols` samples. Invalid dimensions, no observed samples, or an explicitly zero
`patchesValid` in usable status produce a state message instead of a canvas. Missing readiness
counts preserve compatibility with older status.

Negative and nonfinite values are unobserved; zero is blocked; values between zero and one are
reduced signal; values at or above one are clear. The continuous red–amber–blue palette represents
recorded signal quality, not measured SNR in dB. Gray means unobserved. Near-zero colored samples
can look blocked even though only exact zero enters the blocked count.

`blocked / observed` excludes unobserved cells, includes reduced-signal cells, and stays separate
from dish-reported `fractionObstructed`. Patch sizes and sector ratios count samples; they do not
measure sky area, physical obstacle size, or downtime. An unobserved band can be a satellite
exclusion region. Recorded blocked cells do not directly predict interruptions.

## Source mode and freshness

[`ObstructionMapContext`](../star.debug/lib/utils/obstruction_map_context.dart) separates
live/imported/stored mode from map and status ages. Live ages use the current snapshot timestamp;
frozen views use capture time, so opening an old capture does not age it further. Unknown,
nonpositive, future, or estimated status reception times have unknown ages.

Map reception is delayed strictly after 65 seconds. Status expires at five seconds. Live status
must be fresh to control readiness, signal state, reported metrics, attitude, UT references, or
arrows. Raw samples remain available when status expires; EARTH references do not need attitude.
Known stale captured status is suppressed; unknown captured timing is qualified while retaining
available status.

Timing rows and freshness warnings appear only when the map is ready to display: missing,
invalid, unobserved, or dish-reported unready maps show their unavailable state without timing.

`DishTab` refreshes once per second even during stream silence and cancels its timer on disposal.
Stable dish/map keys retain the map and dialog as status rows disappear and recover. Screenshot
sharing uses frozen source mode. Native rows have only save time for status;
`Snapshot.dishTsIsEstimated` records that approximation. Imported JSON retains timing provenance.
Reception age does not establish device ownership or date individual accumulated observations.

## Direction references and arrows

EARTH grids have north at the top. UT grids with usable attitude rotate so projected north points
up; compass marks, cuts, and arrows rotate with them. Unknown frames and invalid UT attitude keep
raw orientation without geographic references. Rotation padding uses the unobserved color and
adds no samples; raw PNG export remains unrotated.

`DishAttitude.fromQuaternion()` currently requires all four component presence flags, finite
values, and unit norm within 0.001. Explicit attitude-filter state must be converged; older status
without that field remains supported. Bearing is never substituted for missing attitude.
Inverse Hamilton rotation projects geographic vectors onto dish XY (+X right, +Y panel top), then
flips Y for canvas rows. Quaternion sign does not affect the result. Perpendicular directions
have no label; overlapping labels are grouped using measured text bounds.

These are current-attitude display-plane references. Tilt changes spacing and handedness; latest
status cannot recover historical attitudes of a moving terminal's accumulated samples. Applying
this basis at the raw UT grid midpoint remains an uncalibrated projection assumption.

Details show eight wedges beginning at north, bounded at 0, 45, … 315 degrees. Counts exclude
unknown cells and the center cell. UT counting inverts the unnormalized projected North/East
basis so counts match drawn cuts. A singular basis (vertical panel) has no sectors. Colliding or
small badges are omitted. The minimap has no sectors.

Arrows prefer `alignmentStats` angles. Elevation must be finite and within −90..90 degrees;
azimuth must be finite, except an
exactly vertical direction needs only elevation. Length follows `cos(elevation)`; vertical is a
center dot, horizontal full length. Actual is solid white; desired is dashed gold in details.
Absolute elevation above 75 degrees retains an uncertainty note; negative elevation shows a
downward-facing warning. These are stylized pointing indicators, not satellite positions.

`actualHeadingProjection()` uses projected Down as the limit when horizontal projection vanishes,
reversing below the horizon. `targetHeadingProjection()` omits undefined horizontal projections
(squared magnitude at most 1e-12), while numeric desired angles remain visible. Exactly vertical
targets retain the center-dot convention.

## Import, export, and storage

StarDebug exports `dishObstructionMap` with `_proto`, `rawMap`, reception `timestamp` in seconds,
and `apiVersion`. JSON fallback replaces nonfinite samples with -1. A string `_proto` takes
precedence; corrupt binary does not fall back to JSON. Missing or non-string `_proto` permits
`rawMap`. `SpaceParser._readObstructionMap()` keeps a decoded payload when optional metadata is
invalid and validates timestamp/API fields independently. Corrupt optional maps do not block
status import.

Reception timestamps must be positive finite seconds convertible to milliseconds within Dart's
DateTime range. API versions must be nonnegative integers fitting native signed 64-bit storage;
zero is valid. Metadata attaches only to decoded maps. The top-level `capture` envelope preserves
capture/status timing separately from export time; see
[Architecture](architecture.md#snapshot-and-debug-data-compatibility).

Parser independence does not imply standalone viewing: `Snapshot.hasData()` requires dish or
router status, and `DishWidget` needs dish status to render its map. Schema v6 introduced nullable
map columns; current schema v7 retains them. Older rows remain readable without maps. Imported
rows preserve maps in debug JSON, which takes precedence over native columns on restoration.

## Rendering caches and image lifetime

Each mounted widget normalizes and creates one unrotated one-pixel-per-cell bitmap when the
protobuf map object changes. Minimap and dialog share it. Status, age, heading, theme, and size
updates reuse it; painting applies nearest-neighbor scaling, rotation, clipping, padding, and
separate overlays. PNG sharing creates its own two-pixels-per-cell image on demand.

A one-entry `ObstructionSectorCache` retains the normalized map, frame, and effective unnormalized
UT North/East basis, including a missing overlay. EARTH ignores attitude. Map replacement clears
the entry; changed UT basis or freshness filtering recomputes it. Age-only and heading-only
updates retain overlay identity and can avoid painting when other inputs are unchanged.

`generateObstructionBitmap()` records cells once and returns a synchronous image handle through
[`Picture.toImageSync()`](https://api.flutter.dev/flutter/dart-ui/Picture/toImageSync.html);
rasterization is asynchronous. Its temporary picture is disposed immediately. The widget retires
old images after two post-frame callbacks, including after source disposal, so the dialog can
replace its painter or close first. Layout and text remain per-view work. Raw four-byte pixel
storage is about 59 KiB for 123×123 and 1 MiB for 512×512; engine allocations and overlapping
retired/replacement images add overhead.

### Recorded performance evidence

A temporary Linux Flutter 3.47.6 debug-test probe on 2026-10-07 used synthetic maps with 10%
unknown, 20% blocked, 20% intermediate, and 50% clear samples. Medians below use three warmups and
nine timed iterations. Painter recording used 108×108 minimap and 310×310 details canvases;
bitmap creation includes recording, handle creation, and disposal. These CPU estimates exclude
GPU rasterization, full rebuilds, network work, and device frame timing. The probe was not retained.

| Step (milliseconds) | 123×123 | 512×512 |
| --- | ---: | ---: |
| Protobuf decoding | 0.47 | 15.53 |
| Normalization and patch analysis | 0.36 | 4.94 |
| EARTH sector scan | 0.41 | 6.87 |
| UT sector scan | 0.43 | 6.96 |
| New bitmap creation | 8.45 | 155.45 |
| Minimap recording, before → cached | 3.95 → 0.15 | 65.21 → 0.24 |
| Details recording, before → cached | 4.47 → 0.57 | 65.57 → 0.52 |

New maps still incur bitmap creation; changing UT basis still scans sectors. These measurements
establish command-recording costs in that environment, not supported-device performance.

## Known limitations and regression coverage

- **Wire compatibility:** ordinary proto3 zeros may be omitted. The all-component presence policy
  rejects valid unit quaternions, for example bytes `1d 00 00 80 3f` encoding `(0,0,1,0)`. UT
  overlays disappear although the quaternion is valid; explicit zero fields are accepted.
- **Ownership:** identity changes clear the cache, but map responses have no device ID and are
  accepted unconditionally. A delayed old response cannot independently prove its ownership.
- **Accessibility:** canvas semantics expose aggregate counts only; individual sector results
  exist only as painted labels. Canvas `TextPainter` labels use fixed sizes without the platform
  text scaler, even though ordinary dialog text scales.
- **Diagnostic visibility:** `timeObstructed`, numeric `patchesValid`, and
  `avgProlongedObstructionValid` are not shown; the latter two still affect presentation.
- **Calibration:** synthetic tests and a captured quaternion do not establish a vendor
  pixel-to-angle transform. No complete simultaneous real map/status calibration fixture exists.

Focused tests cover [connection identity/polling](../star.debug/test/dish_obstruction_connection_test.dart),
[geometry](../star.debug/test/obstruction_map_geometry_test.dart),
[freshness](../star.debug/test/obstruction_map_freshness_test.dart),
[capture timing](../star.debug/test/obstruction_map_capture_timing_test.dart),
[map envelopes](../star.debug/test/obstruction_map_envelope_test.dart),
[snapshot images](../star.debug/test/obstruction_map_snapshot_test.dart),
[persistence](../star.debug/test/obstruction_map_persistence_test.dart), and
[bitmap](../star.debug/test/obstruction_map_bitmap_test.dart),
[sector cache](../star.debug/test/obstruction_sector_cache_test.dart), and
[widget cache](../star.debug/test/obstruction_map_cache_test.dart) behavior.
[Map widget tests](../star.debug/test/obstruction_map_test.dart) also cover rectangular
numeric bearings, layout, and localization. Passing these tests does not resolve the limitations
above or replace real-device validation.
