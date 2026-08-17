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

The final point matters for reconnect features: do not assume that calling `close()` on a connection
causes the holder to construct a replacement on its next tick.

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
location requests, it also asks for GPS and Starlink-derived locations. `RouterConnection` requests
Wi-Fi status every two seconds and separately probes the router's HTTP root for its response code
and redirect location.

Router and dish addresses come from `SharedPrefs`, falling back to `kDefaultRouterIp` and
`kDefaultDishIp`. Address changes must take the holder lifecycle described above into account,
because each gRPC connection captures its host during construction.

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

## Persistence

[`DatabaseHolder`](../star.debug/lib/db/database_holder.dart) resolves the application support or
documents directory on the main isolate, then starts a background isolate containing the Drift
`NativeDatabase`. All callers share one `Database` connection backed by `sqlite.db`.

Schema version 5 has three logical tables:

- `dishes` stores one row per dish and points to its latest log;
- `dish_logs` stores imported JSON and/or protobuf bytes for dish status, history, router status,
  and online results;
- `recent_inputs` stores searchable Wi-Fi names and passwords entered through the setup dialog.

`DishLogController` coalesces automatic live updates. It writes at most every five seconds, updates
the current log during a session, and starts a new automatic log after six hours, on an epoch-day
boundary, or after a forced log. Imported debug data is de-duplicated by dish ID and timestamp.
Mutations are serialized by a `Mutex`, and UI deletion invalidates the controller's cached records.

Drift migration behavior is intentionally simple: upgrades from versions below 3 drop `dishes`
and `dish_logs`, then `createAll()` ensures current objects exist. A schema change must be evaluated
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
