# Obstruction map: possible refactors

Proposals recorded 2026-10-07 against `a40fd5f`. The identity-change fix described in R1 has
since been implemented; the R2 extraction and R3 arrow policies below are also implemented.
Other structural refactors remain proposed. See the [review](../obstruction_map_review.md) for confirmed findings and
[protocol evidence](../obstruction_map_sources.md) for assumptions that need calibration.

Prefer focused fixes for F1–F7 before a broad restructuring. Existing tests should protect
normal live, imported, and persisted paths; each extraction needs tests of its own contract,
not an unrelated style rewrite.

## R1 — Keep capture metadata and source identity together

**Implemented follow-up:** `DishConnection` now remembers the last known nonempty dish ID,
clears cached map data and receive metadata when that ID changes, and requests a replacement
immediately. It preserves the map on same-device reconnects. This focused fix resolves F2
without introducing a capture object or changing the database schema. The broader grouping
proposal below remains optional.

Payload, reception time, and API version remain separate fields in `Snapshot`, the pooled
request, and database serialization. Before the follow-up, no identity-change check protected
the retained map across stream generations, making the wrong-dish pairing in F2 possible even
when timestamps remained accurate.

Consider a small immutable map-capture value holding payload, receive time, API version, and
known source identity. Bind it only when identity is established; invalidate on an identity
change and retain it for same-device reconnects. Missing IDs and a map received before status
need explicit policies. Transport request correlation may help, but the map message itself
contains no device ID, so it cannot independently prove ownership.

Keep database changes optional: a first fix can enforce identity in the connection/snapshot
boundary without migrating existing rows. Retrofitting persisted ownership must not invent an
ID for legacy captures. Verify same-device reconnect retention, changed IDs, delayed responses,
unsupported map requests, and forced/automatic storage.

## R2 — Separate measurements from presentation geometry

**Implemented follow-up, 2026-10-07:** samples, geometry, directional analysis, and rendering
now have separate modules:

- [`obstructions.dart`](../../star.debug/lib/utils/obstructions.dart) retains immutable dimensions,
  sample values, reference frame, classification, totals, and connected patches.
- [`obstruction_map_geometry.dart`](../../star.debug/lib/utils/obstruction_map_geometry.dart)
  owns reported orientation, projected North/East basis, north rotation, sector boundaries and
  cell classification, equal-pitch layout, and ray/rectangle intersections.
- [`obstruction_map_analysis.dart`](../../star.debug/lib/utils/obstruction_map_analysis.dart)
  produces immutable directional sample counts using the geometry, outside painting.
- [`obstruction_map_rendering.dart`](../../star.debug/lib/utils/obstruction_map_rendering.dart)
  shares the signal palette between the widget and unrotated PNG export.

The [widget](../../star.debug/lib/widgets/obstruction_map.dart) keeps text measurement, collision
handling, colors for indicators, badges, arrow styles, uncertainty, and state wording. It creates
geometry per view and uses one intersection helper for cardinal marks, numeric bearings, sector
cuts, and badge placement. Numeric bearings now align with their cuts on rectangular EARTH grids,
resolving F3 while preserving the former square-map inset.

Focused tests cover wide/tall/square intersections, invalid rays, rotated equal-pitch layout,
unnormalized UT basis inversion, and center exclusion. A recording-canvas widget test checks all
four numeric bearings against the actual sector cuts on wide, tall, and square maps. Existing
projection, palette, PNG, import/export, and UI tests use the extracted APIs. Raw PNG output stays
unrotated with the same cell order and signal colors; protobuf exports retain numeric samples.
R2 preserved the quaternion presence policy and singular target-heading fallback. F1 remains
open; the R3 follow-up below addresses F4.

Do not turn this extraction into a geographic reprojection. Preserve the explicit distinction
between the current display-plane model and unverified source-grid calibration. A physical
calibration model would be a separate feature with independent evidence.

## R3 — Make actual and target arrow policies explicit

**Implemented follow-up, 2026-10-07:**
[`ObstructionMapGeometry`](../../star.debug/lib/utils/obstruction_map_geometry.dart) now exposes
`actualHeadingProjection()` and `targetHeadingProjection()`. Shared private code validates angles,
reference frame, and UT attitude, then computes a map-reference direction with `cos(elevation)`
length. The actual method retains its projected-Down limit at an undefined horizontal projection.
The target method omits such a direction, using the existing squared-magnitude threshold of
1e-12. Both methods retain the vertical center-dot convention when length is zero.

The [painter](../../star.debug/lib/widgets/obstruction_map.dart) uses the appropriate method for
each indicator. Desired bearing and elevation stay visible in the details when the target arrow
is omitted. This resolves F4 without choosing an arbitrary parallel/antiparallel target limit.
The indicators remain stylized compass directions with elevation-dependent lengths; projecting
the full three-dimensional desired direction would require a separate model and legend change.

Regression tests cover parallel and opposite bearings, positive/negative target elevation,
projected directions on either side of horizontal panel elevation, unavailable geometry,
vertical targets, and unaffected bearings on a singular panel. A dialog test checks target-arrow
visibility during live status updates and retention of the actual indicator and desired angles.

## R4 — Share sector data with an accessible presentation

The painter is presently the only place where individual sector values become visible. Build
an immutable sector presentation from the same counts and ranges for both painted badges and
localized semantics or an expandable text list. This addresses F6 without duplicate calculations
or conflicting rounding. It also supplies a readable fallback when enlarged text makes badges
collide, addressing F7.

Propagate the text scaler into painter layout and repaint comparison. Keep small-sample warnings,
zero-denominator behavior, and UT current-attitude wording. Direction ranges should be explicit:
cuts start at north and the first wedge is 0–45°, rather than a sector centered on north.
Validate semantics and scaling separately from pixel geometry.

## R5 — Represent source mode and freshness explicitly

`DishWidget` currently maps `showActions` to the map's `live` flag. `_MapView` receives a status,
map, map reception time, and parent timestamp, but no status reception time or identity match.

Consider an explicit source mode such as live/imported/stored plus independent status/map
freshness. Use it for state wording, age presentation, unavailable values, and warnings; this
would also make F9 easier to fix. Keep live map retention across 30-second polls. Do not apply
the generic five-second `validData()` rule to maps whose successful normal poll interval is
30 seconds.

Showing a map's age cannot validate ownership or current attitude. If timestamps are added to
the widget, define when stale attitude hides overlays versus shows a qualification. Test a
fresh map with stale status and the reverse. Do not imply that synchronized receipt recovers
historical attitudes for cumulative mobile samples.

## R6 — Centralize snapshot serialization for logging

Forced and automatic paths duplicate map bytes and metadata assignments in
[`DishLogController`](../../star.debug/lib/controller/dish_log_controller.dart). A small
snapshot-to-companion helper could keep field additions consistent without changing scheduling,
mutex ownership, coalescing, import de-duplication, or forced-log semantics.

Test both callers and null-map metadata. Preserve `Snapshot.ofRow()`'s imported-JSON precedence
and older rows without maps. Avoid a generic persistence abstraction unless another concrete
use needs it.

## R7 — Isolate map-envelope parsing and define standalone support

`SpaceParser` reads optional map bytes/JSON and metadata in one exception boundary. Consider
decoding payload separately from timestamp/API metadata so a malformed optional value does
not discard a valid payload. Keep the current choice to prefer `_proto` explicit; silently
falling back after corrupt binary data is a separate compatibility decision, not a cleanup.

Resolve F8 before changing `hasData()`: a standalone viewer needs navigation, map timestamp,
missing status/attitude behavior, and a storage identity policy. Alternatively retain the
current parser-only independence and document it. Do not invent a device identity merely to
satisfy the existing dish-log schema.

## R8 — Profile before caching or rasterizing

Parsing already avoids rebuilding map measurements when protobuf object identity is unchanged.
However, each new `_MapView` can rescan samples for sectors, and a new overlay identity triggers
painting even when only age changes. The painter draws each accepted cell, up to 262,144.

Measure realistic 123×123 maps and upper-bound imports on supported devices. If needed, cache
sectors by parsed map and projected basis, and cache a raw raster beneath lightweight overlays.
Include invalidation for frame, map, attitude, theme, size, and text scaler. Dispose retained
images/pictures on replacement and widget disposal. Do not assume a measured performance defect
or move decoding to an isolate without profiling transfer costs.

## Suggested sequence and decisions

1. Fix valid-wire quaternion handling and cache identity, with sparse-wire and reconnect tests.
2. Fix numeric label geometry and singular targets with independent expected coordinates.
3. Improve readable text colors, sector accessibility, and text scaling.
4. Decide standalone imports, raw diagnostic visibility, and capture-specific wording.
5. Collect calibration evidence; extract geometry or add caching only where it reduces concrete
   duplication or measured cost.

Open decisions are the raw UT projection model, device-ID absence policy, standalone-map storage,
which low-level diagnostics should remain visible, and target behavior at singular orientations.
No proposal here requires a dependency update, generated-interface edit, or broad reformat.
