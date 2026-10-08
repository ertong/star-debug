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

Timezone initialization errors are logged and tolerated. Other initialization failures are logged;
the loading callback waits five seconds, then the process exits. Uncaught Dart-zone errors are
logged and are also sent to Crashlytics on Android and iOS.
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

[`DebugDataHelper`](../star.debug/lib/utils/debug_data.dart) performs protobuf/JSON conversion for
exports. Repeated protobuf fields gain a `List` suffix and maps become lists of key/value pairs with
a `Map` suffix so the representation can round-trip through JSON. The debug-data tests validate
both the binary-assisted form and the raw JSON fallback against fixtures from several versions.

StarDebug exports also contain an optional top-level `capture` envelope with `timestamp`,
`dishStatusTimestamp`, and `dishStatusTimestampEstimated`. The two timestamps use seconds with
millisecond precision and preserve capture/status reception times separately from export time.
`SpaceParser.toSnapshot()` prefers this envelope when present; missing or invalid values become
unknown rather than borrowing the vendor export timestamp. Nonfinite and out-of-range times are
rejected before conversion. External data without this envelope retains the legacy timestamp rules.
See the [capture timing tests](../star.debug/test/obstruction_map_capture_timing_test.dart).

When adding compatibility for a new debug-data layout, normalize it in `SpaceParser` and add a
sanitized fixture plus round-trip assertions. Avoid teaching UI widgets about format versions.

## Sharing snapshots

Live and stored views open one [`ShareSnapshotDialog`](../star.debug/lib/pages/dialogs/share_snapshot.dart).
It freezes the selected snapshot and offers debug-data JSON, a report image, full diagnostic text,
or compact inventory text. Image is selected by default, with JSON as the fallback when image
sharing is disabled. [`ShareExport`](../star.debug/lib/utils/share_export.dart) prepares copies
without accessing live services. The image renderer uses the same redacted copy and fixed-width
columns, avoiding intrinsic measurement of widgets containing `LayoutBuilder`.
The dish and router retain their columns; obstruction details sit with the graphs and events
in the third content column. Export provenance is separate from the frozen map source mode, so
live captures are labelled live without changing capture-time freshness calculations.

All formats retain the ID, MAC, IP, location, and router-client hide options; location and clients
are hidden by default. Client hiding removes DHCP leases and known per-client event metadata
as well as client lists. Recognized credential fields, including TLS private keys, are always removed.
JSON exports decode recognized embedded
protobufs before removing `_proto`, so binary payloads cannot bypass redaction. Imported metadata
is retained where possible, and the original snapshot is never modified. Diagnostic text includes
status, configuration, history summaries, obstruction-map context, and online results. Both text
reports use Markdown: diagnostics have section headings and nested field lists, while inventory
uses a compact field list. Saved reports use `.md` and `text/markdown`, with escaped values to
preserve formatting. Preview, clipboard, and native text sharing use plain text rendered from
the same redacted fields, preserving literal hardware names and multiline values.
JSON files use `.json` and `application/json`. Export filenames include the capture time in
compact UTC form and the dish ID when available and not hidden.
“View in the app” opens an ephemeral snapshot without importing it into storage. Persistence
entry points reject blank dish IDs; ordinary file and clipboard imports retain their save behavior.

Inventory text separates UTID from the KIT number, physical terminal-label Dish ID, and Starlink
account number. A valid terminal UTID is exported without its `ut` prefix; explicitly named
imported registration fields are included when available. Missing identifiers are omitted,
and the dialog does not request manual entry. These fields follow the current
[Diia terminal verification service](https://diia.gov.ua/services/povidomlennia-pro-vykorystannia-terminaliv-starlink)
(checked 2026-10-08); the report does not establish whitelist status. Applicant identity and
organization information remain outside terminal telemetry.

All formats can be copied or saved through the platform file picker, and mobile and macOS users
can use the native share sheet. Image actions generate JPEG on demand at the existing 2× resolution,
with PNG fallback when JPEG encoding is unavailable. JPEG encoding runs in a separate isolate.
The optional preview is not required; a header action opens an enlarged preview.
The same cached image is reused until privacy choices change. File shares use a separate
temporary directory per export and await the plugin result without deleting files while recipients
may still read them.

[`ImageClipboard`](../star.debug/lib/channel/image_clipboard.dart) copies JPEG or PNG bytes through the
existing clipboard plugin on iOS, macOS, and Windows. Android and Linux implement the
`com.stardebug/image_clipboard` channel with `copyImage`, binary `bytes`, and `mimeType` (legacy
calls default to PNG). Android writes a unique file with the matching `.jpg` or `.png` extension
under its dedicated `clipboard/` cache directory and publishes a clipboard content
URI through a scoped, non-exported FileProvider; it does not write to the gallery or require storage
permission. Cached files remain available after closing the dialog so other apps can paste later.
Linux decodes the image with GdkPixbuf and places it on the GTK clipboard, requesting
clipboard-manager persistence. Generation and delivery share one busy guard; closing the dialog
before generation finishes cancels delivery.

## Obstruction maps

Maps are polled separately from status and carried by `Snapshot` through live views, export,
import, and storage. The shared widget renders a minimap, details dialog, or snapshot image.
See [Obstruction maps](obstruction_maps.md) for ownership, freshness, geometry, serialization,
rendering caches, and known limitations; [protocol evidence](obstruction_map_sources.md) records
what is established by schemas and external observations.

## Persistence

[`DatabaseHolder`](../star.debug/lib/db/database_holder.dart) resolves the application support or
documents directory on the main isolate, then starts a background isolate containing the Drift
`NativeDatabase`. All callers share one `Database` connection backed by `sqlite.db`.

Schema version 7 has three logical tables:

- `dishes` stores one row per dish, points to its latest log, and retains the last automatic
  snapshot creation time independently of subsequent log updates;
- `dish_logs` stores imported JSON and/or protobuf bytes for dish status, history, router status,
  obstruction maps with reception metadata, and an optional online JSON column;
- `recent_inputs` stores searchable Wi-Fi names and passwords entered through the setup dialog.

`Snapshot.ofRow()` prefers non-null imported debug JSON over all native columns. Import parsing
reconstructs status and maps, not history, locations, or online results. Live snapshots currently
do not populate `onlineJson`, so the online storage column does not retain live probe results.

Automatic logging is driven by holder notifications and requires enabled logging, a dish ID,
and a status timestamp. `DishLogController` coalesces automatic live updates. It writes at most
every five seconds and updates the current automatic log during a session. A new automatic log is requested when no log
exists, after a six-hour gap, on a UTC day boundary, after a forced log, or when uptime decreases
in a newer dish status response. Missing uptime and repeated or older status timestamps do not
trigger reboot detection. The initial live uptime is also compared with the latest saved status;
a reboot whose new uptime already exceeds the previous uptime cannot be inferred this way.

New automatic entries are limited to one per five minutes per dish, using a persisted creation
time so replacing the current entry or restarting the app does not reset the timer. Reboots
observed during this interval coalesce into one pending trigger: the current automatic log is
updated, and a new entry is created on the next eligible live update. Forced logs remain intact
while automatic creation is throttled. Day-boundary triggers are deferred in the same way.
Pending triggers are held in memory.

Manual saves retain their separate rule: replace a current automatic log saved within the last
minute, otherwise insert a forced log. Imported debug data is de-duplicated by dish ID and
timestamp and uses the forced-save path. Every save retains the newest 50 automatic logs per dish,
ordered by timestamp and then ID. Forced logs (manual and imported saves) are excluded from both
the count and automatic pruning, including older imports. Saving, pruning, and repairing the
latest-log pointer form one transaction.
Mutations are serialized by a `Mutex`, and UI deletion invalidates the controller's cached records.

Forced and automatic writes share `DishLogController._snapshotToCompanion()` for protobuf payloads,
map reception metadata, and online JSON. Each caller supplies its own row timestamp and write flags,
and preserves its imported-JSON representation: absent debug JSON is SQL `NULL` for forced saves
and JSON `"null"` for automatic writes. Explicit nullable Drift values clear old map fields during
updates. The helper does not change scheduling or the imported-JSON precedence in `Snapshot.ofRow()`.

Drift migration behavior is intentionally simple: upgrades from versions below 3 drop `dishes`
and `dish_logs`, then `createAll()` ensures current objects exist. Upgrades from versions 3–5 add
the nullable obstruction-map columns without rebuilding existing logs. Upgrades from versions 3–6
also add the automatic creation timestamp. Because previous creation times are unavailable, it is
initialized from each dish's latest automatic log timestamp. The migration enforces the 50-log cap
on automatic entries in existing histories, preserves forced logs, and repairs their latest-log
pointers. A schema change must be evaluated against that behavior and accompanied by a
schema-version change and regenerated files.

## Architectural boundaries

Preserve these boundaries when extending the application:

- Connection code owns network resource lifecycle and exposes updates through holder streams.
- `Snapshot` is the interchange type; pages should not become alternate parsers or stores.
- `SpaceParser` owns compatibility with external debug-data layouts.
- `DebugDataHelper` owns protobuf/JSON conversion used for export and round trips.
- Drift table and query sources own persistence; generated Dart files are build output.
- Platform-specific behavior stays behind `StarChannel` or the relevant platform runner.
- `Preloaded.init()` must complete before widgets access process-wide services through `R`.
