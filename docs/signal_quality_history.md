# Signal quality history

The dish reports `signal_quality` (0..1) only in `DishGetStatusResponse`; its 900-sample history
buffers do not carry it. StarDebug therefore samples it, with a few other status-only values,
from each status response it receives, and graphs, stores, and exports that series alongside the
dish history. General connection and storage lifetimes are in [Architecture](architecture.md).

## Recorded values

Each sample is a receive time in epoch milliseconds plus:

| Value | Source | Missing when |
| --- | --- | --- |
| signal quality | `signal_quality` | absent or nonfinite |
| GPS satellites | `gps_stats.gps_sats` | `gps_stats` absent |
| boresight azimuth and elevation | top-level `boresight_*_deg`, else `alignment_stats.boresight_*` | both absent, nonfinite, or exactly 0/0 |

Older firmware reports a 0/0 boresight when the attitude is unknown, so that pair is treated as
missing. A status without a value still produces a sample: "the dish answered without a value"
and "the dish did not answer" are different facts.

Not recorded: values the dish history already has at 1 Hz (latency, drop rate, throughput,
power, outages), slow obstruction statistics, desired boresight (each snapshot's status carries
it), and identifiers or location of any kind. Band classifications are computed when drawing.

Bands are app-chosen, because the dish does not document thresholds: good at 80 % and above,
bad below 25 %, applied to the rounded whole percentage (`kSignalQualityGood`,
`kSignalQualityFair` in [`status_series.dart`](../star.debug/lib/utils/status_series.dart)). The
status row and the graphs share them.

## Sampling

[`DishConnection.onReceived()`](../star.debug/lib/controller/conn/dish_connection.dart) passes
every status response to [`StatusSeriesRecorder`](../star.debug/lib/controller/status_series_recorder.dart)
(`R.statusSeries`, owned by `Preloaded`) with the same receive time it stores, before notifying
listeners. The recorder outlives connections, so reconnects and new streams keep the series.
Status polling is nominally 2 s and 2–3 s in practice; samples are irregular and each keeps its
own time.

The recorder keeps a ring of 1800 samples (about an hour, roughly 66 KB) per dish ID, for the
four most recently updated dishes. Switching to another dish and back resumes the first dish's
series. A status with an empty ID belongs to the dish of the previous status; samples taken before
any ID is known are adopted by the first ID seen. A sample whose time does not move forward is
dropped; a wall clock that moves back more than an hour clears that dish's ring.

Sampling only happens while a live view keeps the dish holder in demand, so it stops a few
seconds after the app goes to the background. Holes are normal and are not outages.

### Gaps and reboots

Gaps are derived, not stored: two consecutive samples more than 7 s apart
(`kStatusSeriesGapMs`) are not connected, and graphs break the line there.

Reboots are stored as sample indices ("the dish rebooted before this sample"). Within one dish,
a changed `bootcount` marks a reboot when both statuses carry it; otherwise uptime lower than the
previous uptime plus elapsed wall time, minus 10 s, does. This also catches reboots whose new uptime
already exceeds the old one. Reboot state is per dish. Wall-clock jumps can cause a false reboot
line when `bootcount` is absent; it is cosmetic.

## Model and encodings

[`StatusSeries`](../star.debug/lib/utils/status_series.dart) is immutable: strictly increasing
times, one entry per time in each value column, and sorted reboot indices. It provides windows,
gap and coverage calculations, and `signalQualityStats()` (sample-weighted last, median, 10th
percentile, minimum, maximum, band shares, coverage, gaps, and reboots).

[`StatusSeriesCodec`](../star.debug/lib/utils/status_series_codec.dart) owns both external forms.
Both store values at fixed precision: signal quality and angles ×100 (whole percent, 0.01°), times in
100 ms steps quantized against the first sample so rounding never accumulates. `quantize()`
applies that precision, so encoding a decoded series is lossless.

- **Database:** a MessagePack map with `version` (1), `t0` (epoch ms), `dt` (100 ms steps from the
  previous sample, first 0), the integer arrays `signalQuality`, `azimuth`, `elevation`, `gpsSats`
  (`nil` = missing), and `reboots`. About 9 bytes per sample, so about 4 KB per 15 minutes. The
  decoder is strict: a wrong version, column length, step, or truncated input yields `null`.
  Unknown keys are skipped; a missing value column decodes as all missing. The small MessagePack
  writer and reader live in the same file; there is no package dependency.
- **JSON:** `capture.statusSeries` with `version`, `t0` in seconds, offsets `t` in seconds, the arrays
  `signalQuality`, `azimuthDeg`, `elevationDeg`, `gpsSats` (`null` = missing), and `reboots`.
  Import is lenient: anything malformed yields `null` and never fails the import, and a series
  longer than 5000 samples keeps its newest samples.

## Snapshots, storage, and export

- `buildLiveSnapshot()` copies the last 15 minutes (`kStatusSeriesWindowMs`) for the dish whose
  status the snapshot shows. That span matches the dish history in the same snapshot.
- Forced and automatic logs write the series to the nullable `dish_logs.status_series` BLOB
  (schema version 8); an empty series is SQL `NULL`. `Snapshot.ofRow()` reads it for native rows,
  while imported rows keep their JSON precedence and take the series from `capture.statusSeries`.
- JSON exports write `capture.statusSeries`; external debug data has none, and the graph is then
  absent. JSON exports carry no dish history, so an imported file shows the signal quality graph
  without the latency and drop-rate graphs.
- The series contains no ID, MAC, IP, or location, so privacy options copy it unchanged.
  `ShareExport.redactedSnapshot()` copies it explicitly; a new `Snapshot` field that is not copied
  there disappears from every export.
- Markdown diagnostics add a "Signal quality (app-sampled)" section with statistics over the
  first to last sample, stating the thresholds and that unobserved time is not an outage. Raw
  samples stay in the JSON. Inventory text has nothing.
- The report image draws the graph first among the charts when at least one minute of connected
  samples exists.

## Graphs

[`status_series_graph.dart`](../star.debug/lib/pages/view/status_series_graph.dart) draws the
signal quality graph: a time axis with an explicit window, a fixed 0–100 % axis, thin
semi-transparent red and green lines at 25 and 80 % without filled bands, line breaks at gaps,
blank unsampled time, thin vertical reboot lines, and a title with the last value and its band
dot. Isolated samples show as small markers.

- **General tab:** above the latency graph once at least one minute of connected samples exists.
- **Dish tab:** first graph. It disappears with the other charts when status is older than 5 s.
- **Snapshot page:** first chart. The window ends at the capture time when that plausibly follows
  the last sample, otherwise at the last sample.

Live views end the window at "now", so a stalled connection shows as a growing empty area, and
the title loses its band dot once the last sample is older than 5 s. `LiveSeriesGraph` rebuilds
only when the shown dish has a new sample, or every 5 s while stale.

The dish history graphs (`buildGraph` in [`dish.dart`](../star.debug/lib/pages/view/dish.dart))
use the same time axis: history sample `i` of `n` is at `historyTs − (n − 1 − i)` seconds, so the
newest sample is at the history receive time. Plot areas can still differ in width when Y labels
differ, so graphs align by time range only.

## Detail view

Tapping the signal quality graph title (on the live tabs and the snapshot page, not the report
image) opens [`SignalQualityDetails`](../star.debug/lib/pages/dialogs/signal_quality_details.dart).
Live details listen to the dish holder and follow new samples. Stored snapshots show their frozen
series and history.

- Window chips 5 min, 15 min, and 1 h. Live data offers all three; a stored series offers only
  windows its span can fill, so a normal 15-minute snapshot has no 1 h chip.
- Signal quality with the history drop rate on a second 0–1 axis and history outages shaded,
  then separate autoscaled azimuth (unwrapped across ±180°) and elevation graphs, then GPS
  satellites. A graph without values in the window is omitted.
- Samples are reduced to the minimum and maximum per pixel column before charting, keeping gaps.
  [`status_series_detail.dart`](../star.debug/lib/utils/status_series_detail.dart) holds this and
  the history time mapping as pure functions.

The epoch of `DishOutage.start_timestamp_ns` is not established by the schema or fixtures.
`outageStartMs()` reads it both as GPS time and as Unix time and uses whichever lies nearer the
history receive time; the two readings are about ten years apart. Confirm this against a real
outage before relying on the shading.

## Limitations

- No long-term history: only the last hour per dish is kept in memory, and each snapshot stores
  15 minutes. A longer store would need background sampling, which the app does not do, and
  would mostly show holes otherwise.
- How the dish computes `signal_quality`, and how often it updates, is undocumented.
- The boresight field preference (top-level, then `alignment_stats`) is based on two fixtures.

## Tests

- [`status_series_test.dart`](../star.debug/test/status_series_test.dart): model, gaps,
  windows, statistics, and sample extraction.
- [`status_series_codec_test.dart`](../star.debug/test/status_series_codec_test.dart): MessagePack
  and JSON round trips, precision, quantization drift, and malformed input.
- [`status_series_recorder_test.dart`](../star.debug/test/status_series_recorder_test.dart): ring
  wrap, per-dish series and eviction, clock handling, reboot detection, and `DishConnection`
  feeding.
- [`status_series_persistence_test.dart`](../star.debug/test/status_series_persistence_test.dart)
  and [`status_series_debug_data_test.dart`](../star.debug/test/status_series_debug_data_test.dart):
  schema migration, stored rows, imported-JSON precedence, and import/export compatibility.
- [`status_series_graph_test.dart`](../star.debug/test/status_series_graph_test.dart) and
  [`signal_quality_details_test.dart`](../star.debug/test/signal_quality_details_test.dart):
  graphs, report image, and the detail view.
