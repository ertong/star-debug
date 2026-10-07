# Obstruction map: possible refactors

Proposals recorded 2026-10-07 against `a40fd5f`. The identity-change fix described in R1 has
since been implemented in the working tree; structural refactors remain proposed. See the
[review](../obstruction_map_review.md) for confirmed findings and
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

`ObstructionMapData` currently owns sample classification, connected patches, sector counting,
reference projection, and stylized heading policy. `_MapView` recreates attitude-dependent
sectors, while `_ObstructionPainter` contains rotation and several label-placement rules.

Consider three small responsibilities:

- Immutable map measurements: dimensions, values, counts, patches, frame.
- Attitude/display geometry: projected basis, rotation, wedge boundaries, ray intersections.
- Presentation policy: labels, colors, arrow styles, uncertainty and state wording.

A shared direction-to-rectangle helper would directly prevent F3 by keeping cardinal marks,
numeric bearings, sector cuts, and badge placement consistent. Give it rectangular and
degenerate-input tests. Keep the raw PNG export unrotated, preserving cell order and the existing
signal-color mapping. Numeric samples remain preserved separately in the protobuf export.

Do not turn this extraction into a geographic reprojection. Preserve the explicit distinction
between the current display-plane model and unverified source-grid calibration. A physical
calibration model would be a separate feature with independent evidence.

## R3 — Make actual and target arrow policies explicit

`headingProjection()` accepts both actual and desired angles, but its singular fallback derives
from an actual-panel limiting convention. That mismatch produces F4.

Either separate actual-heading and target-heading policy or provide a general limit definition
that handles parallel/antiparallel directions, positive/negative elevations, and zero projection.
Document whether arrows show a projected compass direction with stylized length or an actual
three-dimensional vector projection. Keep the current horizontal-length legend consistent with
the chosen policy. Establish expected vectors independently before restructuring the code.

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
