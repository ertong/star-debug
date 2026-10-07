# Architecture

## Purpose and data sources

StarDebug presents a unified diagnostic view assembled from three independent sources:

- a Starlink dish on gRPC port `9200`, defaulting to `192.168.100.1`;
- a Starlink router on gRPC port `9000`, defaulting to `192.168.1.1`;
- public HTTP endpoints used to check IPv4, IPv6, public IP, and Starlink geolocation.

The same UI can display imported Starlink debug-data JSON and snapshots restored from the local
database. The common boundary is [`Snapshot`](../star.debug/lib/utils/snapshot.dart), not a shared
wire format or a global JSON map.

The main runtime flow is:

```text
UI stream listeners
        |
        v
ConnectionHolder -> DishConnection / RouterConnection / OnlineConnection
        |                         |
        +---- pooled responses ---+
                     |
                     v
                  Snapshot
             /         |         \
         widgets    JSON export   Drift storage
```

## Startup and service ownership

[`main()`](../star.debug/lib/main.dart) creates the process-wide
[`Preloaded`](../star.debug/lib/preloaded.dart) instance and assigns it to the global `R`.
Initialization begins asynchronously while `Loading` renders. `Preloaded.init()` waits for these
independent operations:

- Time Machine timezone data;
- Firebase, Crashlytics, and Analytics on Android and iOS;
- package metadata and `SharedPreferences`;
- the Drift database connection.

After they complete, `Preloaded` creates `ConnController` and the dish, router, and online
`ConnectionHolder` instances. `I18n.init()` runs after `Preloaded.init()`, then `Loading` replaces
itself with `StarDebugApp`.

`R` is a service locator and lifecycle owner. It exposes preferences, database access, connection
holders, logging controllers, localization, navigation keys, and platform integration. Code that
constructs objects depending on `R`, including `Prefs` and the connection implementations, must do
so after the relevant fields have initialized.

Initialization failures are logged, the loading callback waits five seconds, and then the process
exits. Uncaught Dart-zone errors are logged and are also sent to Crashlytics on Android and iOS.
Analytics and Crashlytics collection are disabled in assert-enabled builds.

## Listener-driven connections

[`ConnController`](../star.debug/lib/controller/conn_controller.dart) ticks all registered holders
once per second while any holder has a listener or connection. `LivePage` and its tabs subscribe to
the holder streams; the subscriptions both receive updates and express demand for the connections.

[`ConnectionHolder<T>`](../star.debug/lib/controller/conn/connection.dart) follows these rules:

- The first listener wakes `ConnController`; its next tick builds the connection.
- The last cancellation starts a five-second grace period before the connection is closed and
  discarded.
- On non-Windows platforms, remaining in the background for more than five seconds also closes and
  discards the connection.
- Windows is exempt from background shutdown.
- Calling `BaseConnection.close()` marks the connection for shutdown, but does not itself clear the
  holder's non-null `conn` reference. Replacement requires a holder tick that discards it.
- `ConnectionHolder.reconnect()` closes and discards the current connection, notifies listeners,
  and wakes the controller when there is demand. The next foreground tick captures the new host.

Use the holder's `reconnect()` for address changes; calling `close()` on a connection alone does not
cause the holder to construct a replacement on its next tick.

`PooledRequest<T>` retains the latest response, API version, send time, and receive time. Its
`validData()` method rejects data older than five seconds, but reading `data` directly does not.
Most status widgets intentionally retain the last response and use timestamps or connection state
to show freshness. Location values in `buildLiveSnapshot()` use `validData()`.

## Local Starlink gRPC

[`GrpcConnection`](../star.debug/lib/controller/conn/grpc_connection.dart) owns an insecure
`ClientChannel`, one bidirectional `DeviceClient.stream`, and a request stream. It listens for
connectivity changes and recreates its channel and stream after disconnects or errors. It treats a
status response received in the last 3.5 seconds as ready.

The loop guards against stalled resources:

- a channel connecting for more than five seconds is shut down;
- an idle channel with no recent status is shut down, with channel recreation throttled to roughly
  nine seconds;
- stream and channel errors are retained for display and cause the affected resource to reopen.

`DishConnection` sends status and history requests every two seconds. When the dish allows local
location requests, it also asks for GPS and Starlink-derived locations. The first successful dish
status on each stream immediately requests an obstruction map, including after reconnection.
Maps then refresh every 30 seconds through that stream and retain their own receive timestamp.
If a status reports a different nonempty dish ID, `DishConnection` clears the cached map and its
receive metadata before notifying listeners, and immediately requests a replacement. The last
known ID survives statuses with missing IDs; same-device reconnects retain their cached maps.
`RouterConnection` requests Wi-Fi status every two seconds and separately probes the router's HTTP
root for its response code and redirect location.

Router and dish addresses come from `SharedPrefs`, falling back to `kDefaultRouterIp` and
`kDefaultDishIp`. Loading preferences removes blank, invalid, and explicit default overrides and
canonicalizes valid IPv4 addresses, repairing older installations without clearing other data.
Saving applies the same normalization. Address settings reconnect only the affected holder,
because each gRPC connection captures its host during construction. The router HTTP probe uses
that same captured host.

## Internet diagnostics and Android integration

[`OnlineConnection`](../star.debug/lib/controller/conn/online_connection.dart) triggers its HTTP
probes every three seconds. It checks several independent IPv4 and IPv6 destinations, obtains the
public IP from multiple services, and compares that IP with Starlink's published geolocation feed.
Each endpoint allows only one request in flight. The UI retains its last completed result during a
refresh, while bounded request timeouts and the next completed result keep failure reporting
responsive. Probe errors are normalized to short reasons for display.

On Android, each probe goes through [`StarChannel`](../star.debug/lib/channel/star_channel.dart) and
the native `MainActivity`/`HttpTester` implementation. The native implementation uses OkHttp,
DNS-over-HTTPS with fallback resolution, and a short-lived client. Other supported platforms use
Dio directly. Therefore, changes to Android probe semantics may require coordinated Dart and Java
changes; the method-channel contract is `com.stardebug/channel` with `test` and `httpTest` methods.

The project has desktop runners but no web target. Several core paths use `dart:io` and
`Platform`, so web support would require architectural work rather than only generating a runner.

## Snapshot and debug-data compatibility

[`Snapshot`](../star.debug/lib/utils/snapshot.dart) carries device messages, their receive times,
API versions, optional feature maps, imported application metadata, original debug JSON, and
optional online results. Runtime timestamps use epoch milliseconds.

[`SpaceParser`](../star.debug/lib/space/space_parser.dart) accepts multiple observed Starlink
debug-data layouts, including nested `status`, the `rawStatus` layout introduced in 2024, and older
top-level device data. Source JSON timestamps are seconds and are converted to milliseconds when
building a `Snapshot`.

Dish and router protobuf messages are reconstructed in two ways:

- `_proto` contains a base64-encoded protobuf and is preferred when present;
- otherwise `DebugDataHelper.jsonToProto()` maps the JSON-shaped representation into generated
  protobuf fields.

[`DebugDataHelper`](../star.debug/lib/utils/debug_data.dart) performs the reverse conversion for
sharing. Repeated protobuf fields gain a `List` suffix and maps become lists of key/value pairs with
a `Map` suffix so the representation can round-trip through JSON. The debug-data tests validate
both the binary-assisted form and the raw JSON fallback against fixtures from several versions.

When adding compatibility for a new debug-data layout, normalize it in `SpaceParser` and add a
sanitized fixture plus round-trip assertions. Avoid teaching UI widgets about format versions.

## Obstruction maps

The [protocol evidence](obstruction_map_sources.md) distinguishes schema contracts from measured
firmware behavior and records calibration limits. The
[2026-10-07 review](obstruction_map_review.md) tracks implementation findings; possible changes
are separated into [refactoring proposals](proposals/obstruction_map_refactoring.md).

`Snapshot` carries an optional obstruction map, receive timestamp, and API version. The shared dish
view shows a compact minimap and opens a responsive details dialog. Negative or nonfinite signal
values are unobserved, zero is blocked, and 0..1 is normalized signal quality. Blocked-cell ratios
exclude unobserved cells and are separate from dish-reported obstruction stats. Sector ratios and
four-connected blocked patch sizes describe samples, not sky area, physical obstacles, or downtime.
Maps with invalid dimensions, no observed samples, or an explicitly zero `patchesValid` count show
a state message instead of a canvas. Missing readiness counts do not invalidate older maps.

Implementation responsibilities are separated into
[`ObstructionMapData`](../star.debug/lib/utils/obstructions.dart) for immutable samples,
classification, totals, and connected patches;
[`ObstructionMapGeometry` and `ObstructionMapLayout`](../star.debug/lib/utils/obstruction_map_geometry.dart)
for current attitude references, rotation, sector classification, equal cell pitch, and ray/rectangle
intersections;
[`ObstructionSectorOverlay`](../star.debug/lib/utils/obstruction_map_analysis.dart) for sample counts
using that geometry; and
[`ObstructionMapPalette` and PNG export](../star.debug/lib/utils/obstruction_map_rendering.dart) for
shared signal colors and unrotated raster output. The widget owns text measurement, badges,
arrow styling, and collision handling. Sector cuts, cardinal marks, numeric bearings, and badge
centers use the same ray intersection, preserving bearing angles on rectangular grids.

EARTH grids have north at the top. UT grids rotate for display so the projected north direction
points upward in both maps; compass marks, sector cuts, and arrows rotate with the grid.
The rotated grid is padded with the unobserved-cell color to an upright rounded rectangle;
sector cuts extend to its outer edge and badges sit just inside it. Padding adds no samples.
On UT grids with a complete, finite unit `ned2dishQuaternion`, N/S/E/W references are calculated with the inverse Hamilton
rotation: geographic horizontal vectors are projected onto the dish's XY plane, with +X to the
right and +Y toward the panel top. Canvas rows increase downward, so projected Y changes sign
before placement. Each nonzero projection determines the corresponding label's direction
from the center to the canvas edge. A direction perpendicular to the panel has no in-plane
projection and its label is omitted. Overlapping direction labels on a nearly vertical plane
are grouped (for example, `N/W`) using their measured text bounds. Quaternion normalization
tolerates float rounding (norm error at most 0.001); non-unit or incomplete quaternions are
rejected. An explicitly reported attitude-filter state must be converged; older status without
that field remains supported. Bearing and target bearing are never substituted for missing
attitude. Quaternion sign does not affect the result.

Requiring all component presence flags is the current implementation policy, not a proto3
validity rule: omitted zero components can encode a valid unit quaternion, which this policy
rejects. The inverse-rotation algebra is internally consistent, but applying the projected
panel basis to the raw UT grid midpoint remains a calibration assumption. The available
external sources do not establish a complete vendor pixel-to-angle transform.

These are current-attitude direction references, not geographic bearings assigned to accumulated
samples. Tilt can change their angular spacing and handedness. Current status cannot recover the
attitudes of earlier observations from a moving antenna; the UT caption explains this limitation.
Source grid values and the raw PNG export remain unchanged. Missing or invalid UT attitude and
unknown frames retain their raw display orientation and have no geographic references.
Near-vertical boresight bearing does not affect the references because they use the full quaternion.

The detailed canvas shows eight sector cuts at bearings 0, 45, ... 315 degrees, starting at north.
Each wedge shows its blocked percentage and blocked/observed cell counts; unknown cells and the
center cell are excluded. UT counts invert the projected North/East basis so the counted wedges
match the drawn cuts with equal pixel pitch on both axes. These are display-plane statistics
using the current attitude, not geographic sky-area measurements. A singular horizontal basis
(vertical panel) cannot define sectors. Small or overlapping badges are omitted rather than
painted over one another. The minimap has no sector cuts or statistics, and there is no separate
sector chart.

Direction markings and heading arrows share the existing map canvas. EARTH arrows follow
geographic bearings; UT arrows use the same quaternion and panel-to-canvas conversion as the
direction references. UT arrows require valid attitude; unknown frames have no arrows. There is
no separate compass view. Actual and desired headings have separate policies in
`ObstructionMapGeometry.actualHeadingProjection()` and `targetHeadingProjection()`. When the
actual heading's horizontal direction is perpendicular to a horizontal-pointing panel's plane,
its projection vanishes: the actual indicator uses the projected Down tangent as the limit from
above the horizon, reversed below the horizon. This defines a full-length actual arrow at exactly
horizontal elevation without choosing a fixed screen direction. A target with an undefined
horizontal projection (squared magnitude at most 1e-12) has no arrow; its numeric desired bearing
and elevation remain visible. An exactly vertical target still appears as a center dot. Defined
targets appear dashed in gold in the details; the actual arrow is solid white in both the summary
and details.
Arrows use reported boresight fields, preferring
`alignmentStats` when present. Both a valid elevation and azimuth are required for an arrow; an
exactly vertical direction needs only elevation. Missing or invalid angles produce no indicator,
rather than assuming horizontal elevation or a bearing of zero. Arrow length is proportional to
the horizontal projection of the panel normal (`cos(elevation)`): vertical is a center dot, and
horizontal is full length. Near-vertical normals (absolute elevation above 75 degrees) retain an
uncertainty note. Negative elevations show a downward-facing warning in the summary and details.
The UI retains maps between polls and marks live updates delayed after
65 seconds. Dialogs update from their source widget and close when that source disappears.

StarDebug exports maps in a top-level `dishObstructionMap` envelope with `_proto`, `rawMap`,
`timestamp` (seconds), and `apiVersion`. `SpaceParser` accepts the binary-assisted and JSON-only
forms independently of device status. Nonfinite signal samples become -1 in the JSON fallback.
That parser independence does not extend to standalone viewing: `Snapshot.hasData()` and the
imported/shared dish UI still require device status to admit or render the map.
Schema version 6 adds nullable protobuf map, receive timestamp, and API-version columns to dish
logs. Both automatic logs and manually saved live snapshots populate these columns; older rows
remain readable without maps. Imported snapshots also retain their maps in debug-data JSON.

The [Starlink obstruction guide](https://starlink.com/mh/support/article/71707228-cea9-52d5-6134-f3de8cc7437f)
explains accumulated satellite observations, adaptive routing around obstructions, and the
geostationary exclusion zone. Unobserved bands therefore do not establish an obstruction, and
blocked cells do not directly predict outages. Signal semantics and raw grid rendering follow the
[Starlink gRPC tools renderer](https://github.com/sparky8512/starlink-grpc-tools/blob/main/dish_obstruction_map.py).
Reference-frame conventions follow the author's
[SatInView documentation](https://github.com/aliahan/SatInView) and
[measurement study](https://arxiv.org/html/2601.13790v1).

## Persistence

[`DatabaseHolder`](../star.debug/lib/db/database_holder.dart) resolves the application support or
documents directory on the main isolate, then starts a background isolate containing the Drift
`NativeDatabase`. All callers share one `Database` connection backed by `sqlite.db`.

Schema version 6 has three logical tables:

- `dishes` stores one row per dish and points to its latest log;
- `dish_logs` stores imported JSON and/or protobuf bytes for dish status, history, router status,
  obstruction maps with capture metadata, and online results;
- `recent_inputs` stores searchable Wi-Fi names and passwords entered through the setup dialog.

`DishLogController` coalesces automatic live updates. It writes at most every five seconds, updates
the current log during a session, and starts a new automatic log after six hours, on an epoch-day
boundary, or after a forced log. Imported debug data is de-duplicated by dish ID and timestamp.
Mutations are serialized by a `Mutex`, and UI deletion invalidates the controller's cached records.

Drift migration behavior is intentionally simple: upgrades from versions below 3 drop `dishes`
and `dish_logs`, then `createAll()` ensures current objects exist. Upgrades from versions 3–5 add
the nullable obstruction-map columns without rebuilding existing logs. A schema change must be evaluated
against that behavior and accompanied by a schema-version change and regenerated files.

## Architectural boundaries

Preserve these boundaries when extending the application:

- Connection code owns network resource lifecycle and exposes updates through holder streams.
- `Snapshot` is the interchange type; pages should not become alternate parsers or stores.
- `SpaceParser` owns compatibility with external debug-data layouts.
- `DebugDataHelper` owns protobuf/JSON conversion used for export and round trips.
- Drift table and query sources own persistence; generated Dart files are build output.
- Platform-specific behavior stays behind `StarChannel` or the relevant platform runner.
- `Preloaded.init()` must complete before widgets access process-wide services through `R`.
