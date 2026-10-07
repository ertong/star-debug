import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/obstruction_map_analysis.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/obstruction_map_geometry.dart';
import 'package:star_debug/utils/obstruction_map_rendering.dart';
import 'package:star_debug/utils/obstructions.dart';
import 'package:star_debug/widgets/app_surface.dart';

class ObstructionMapWidget extends StatefulWidget {
  final DishGetObstructionMapResponse? map;
  final DishObstructionStats? stats;
  final DishGetStatusResponse? status;
  final int? receivedTime;
  final int timestamp;
  final MapSourceMode sourceMode;
  final int? statusReceivedTime;
  final bool statusTimestampIsEstimated;

  const ObstructionMapWidget({
    super.key,
    required this.map,
    required this.timestamp,
    this.stats,
    this.status,
    this.receivedTime,
    this.sourceMode = MapSourceMode.stored,
    this.statusReceivedTime,
    this.statusTimestampIsEstimated = false,
  });

  @override
  State<ObstructionMapWidget> createState() => _ObstructionMapWidgetState();
}

class _ObstructionMapWidgetState extends State<ObstructionMapWidget> {
  ObstructionMapData? data;
  ui.Image? bitmap;
  final sectorCache = ObstructionSectorCache();
  late final ValueNotifier<_MapView> details;
  DialogRoute<void>? detailsRoute;

  @override
  void initState() {
    super.initState();
    _readMap();
    details = ValueNotifier(_view());
  }

  @override
  void didUpdateWidget(ObstructionMapWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(widget.map, oldWidget.map)) _readMap();
    // The dialog is in a separate overlay branch; update after this build.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) details.value = _view();
    });
  }

  void _readMap() {
    final oldBitmap = bitmap;
    sectorCache.clear();
    data = widget.map == null
        ? null
        : ObstructionMapData.fromResponse(widget.map!);
    bitmap = data == null ? null : generateObstructionBitmap(data!);
    _retireBitmap(oldBitmap);
  }

  void _retireBitmap(ui.Image? image) {
    if (image == null) return;
    // Details receive their new view after this frame. Wait for that overlay
    // rebuild (or route removal) before releasing its old painter's image.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) => image.dispose());
      WidgetsBinding.instance.scheduleFrame();
    });
    WidgetsBinding.instance.ensureVisualUpdate();
  }

  _MapView _view() => _MapView(
    data,
    bitmap,
    sectorCache,
    widget.map != null,
    widget.stats ??
        (widget.status?.hasObstructionStats() == true
            ? widget.status!.obstructionStats
            : null),
    DishOrientation.fromStatus(widget.status),
    ObstructionMapContext(
      sourceMode: widget.sourceMode,
      referenceTime: widget.timestamp,
      mapReceivedTime: widget.receivedTime,
      statusReceivedTime: widget.statusReceivedTime,
      statusTimestampIsEstimated: widget.statusTimestampIsEstimated,
    ),
  );

  @override
  void dispose() {
    final route = detailsRoute;
    final navigator = route?.navigator;
    // The source may disappear during a disconnect. Do not leave frozen live
    // status in its dialog; remove the overlay after the tree finishes updating.
    if (route != null && navigator != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (navigator.mounted && route.isActive) navigator.removeRoute(route);
      });
    }
    details.dispose();
    _retireBitmap(bitmap);
    bitmap = null;
    super.dispose();
  }

  void _openDetails() {
    details.value = _view();
    if (detailsRoute?.isActive == true) return;
    final route = DialogRoute<void>(
      context: context,
      builder: (context) => ValueListenableBuilder<_MapView>(
        valueListenable: details,
        builder: (context, view, _) => _ObstructionDetails(view: view),
      ),
    );
    detailsRoute = route;
    Navigator.of(context, rootNavigator: true).push(route).whenComplete(() {
      if (identical(detailsRoute, route)) detailsRoute = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final view = _view();
    final theme = Theme.of(context);
    return Semantics(
      button: true,
      label: M.obstructions.open_details,
      child: AppSurface(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(12),
        onTap: _openDetails,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.landscape_outlined,
                  size: 19,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    M.obstructions.title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.open_in_full,
                  size: 16,
                  color: theme.colorScheme.primary,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '${M.obstructions.source}: ${view.sourceLabel}',
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 9),
            if (!view.ready)
              _UnavailableMap(view: view, compact: true)
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 108,
                    height: 108,
                    child: _MapCanvas(view: view, compact: true),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          view.signalState,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: view.stateColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          _percent(view.map!.blockedObservedFraction),
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          M.obstructions.blocked_cells,
                          style: theme.textTheme.bodySmall,
                        ),
                        if (view.dishFraction != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            '${M.obstructions.dish_fraction}: ${_percent(view.dishFraction)}',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                        if (view.delayed) ...[
                          const SizedBox(height: 4),
                          Text(
                            M.obstructions.delayed_short,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.error,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            if (view.ready && !view.map!.northUp) ...[
              const SizedBox(height: 4),
              Text(
                view.map!.frame == ObstructionMapReferenceFrame.FRAME_UT
                    ? view.northAligned
                          ? M.obstructions.dish_frame_oriented_short
                          : M.obstructions.dish_frame_short
                    : M.obstructions.unknown_frame,
                style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
              ),
            ],
            if (view.statusWarningShort != null) ...[
              const SizedBox(height: 4),
              Text(view.statusWarningShort!, style: theme.textTheme.bodySmall),
            ],
            if (view.orientation.lookingDownward) ...[
              const SizedBox(height: 8),
              const _DownwardWarning(compact: true),
            ],
          ],
        ),
      ),
    );
  }
}

class _MapView {
  final ObstructionMapData? map;
  final ui.Image? bitmap;
  final ObstructionSectorCache sectorCache;
  final bool hasResponse;
  final DishObstructionStats? _stats;
  final DishOrientation _orientation;
  final ObstructionMapContext timing;

  _MapView(
    this.map,
    this.bitmap,
    this.sectorCache,
    this.hasResponse,
    this._stats,
    this._orientation,
    this.timing,
  );

  bool get live => timing.sourceMode == MapSourceMode.live;
  DishObstructionStats? get stats => timing.useStatus ? _stats : null;
  DishOrientation get orientation =>
      timing.useStatus ? _orientation : const DishOrientation();

  String get sourceLabel => switch (timing.sourceMode) {
    MapSourceMode.live => M.obstructions.source_live,
    MapSourceMode.imported => M.obstructions.source_imported,
    MapSourceMode.stored => M.obstructions.source_stored,
  };
  String get mapTimingLabel =>
      live ? M.obstructions.last_received : M.obstructions.capture_map_age;
  String get statusTimingLabel =>
      live ? M.obstructions.status_received : M.obstructions.capture_status_age;
  String timingValue(int? age) => age == null
      ? M.obstructions.timing_unknown
      : live
      ? M.obstructions.received_ago(Format.sec(age))
      : Format.sec(age);
  String? get statusWarning => switch (timing.statusFreshness) {
    MapDataFreshness.fresh => null,
    MapDataFreshness.delayed =>
      live
          ? M.obstructions.status_delayed
          : M.obstructions.status_delayed_capture,
    MapDataFreshness.unknown =>
      live
          ? M.obstructions.status_unknown
          : M.obstructions.status_unknown_capture,
  };
  String? get statusWarningShort => switch (timing.statusFreshness) {
    MapDataFreshness.fresh => null,
    MapDataFreshness.delayed => M.obstructions.status_delayed_short,
    MapDataFreshness.unknown => M.obstructions.status_unknown_short,
  };

  late final geometry = map == null
      ? null
      : ObstructionMapGeometry(map!.frame, orientation);
  late final sectors = ready ? sectorCache.get(map!, geometry!) : null;
  bool get northAligned => geometry?.northRotation != null;

  bool get ready =>
      map != null &&
      map!.observed > 0 &&
      !(stats?.hasPatchesValid() == true && stats!.patchesValid == 0);
  bool get delayed => live && timing.mapFreshness == MapDataFreshness.delayed;
  double? get dishFraction =>
      stats?.hasFractionObstructed() == true &&
          _fraction(stats!.fractionObstructed)
      ? stats!.fractionObstructed
      : null;

  String get unavailable => !hasResponse
      ? live
            ? M.obstructions.waiting
            : M.obstructions.unavailable
      : map == null
      ? live
            ? M.obstructions.invalid_map
            : M.obstructions.invalid_map_capture
      : live
      ? M.obstructions.gathering
      : M.obstructions.gathering_capture;
  String get signalState =>
      stats?.hasCurrentlyObstructed() == true && stats!.currentlyObstructed
      ? M.obstructions.signal_blocked
      : map!.blocked > 0
      ? M.obstructions.recorded_obstructions
      : map!.reduced > 0
      ? M.obstructions.reduced_signal
      : M.obstructions.no_blocked_cells;
  Color get stateColor =>
      stats?.hasCurrentlyObstructed() == true && stats!.currentlyObstructed
      ? ObstructionMapPalette.obstructedColor
      : map!.blocked > 0 || map!.reduced > 0
      ? ObstructionMapPalette.reducedSignalColor
      : ObstructionMapPalette.clearColor;
}

String _percent(double? value) =>
    value == null ? '—' : '${(value * 100).toStringAsFixed(2)}%';
bool _fraction(double value) => value.isFinite && value >= 0 && value <= 1;
bool _seconds(double value) => value.isFinite && value >= 0;
String _bearing(double? value) =>
    value == null ? '—' : '${value.toStringAsFixed(1)}°';

class _DownwardWarning extends StatelessWidget {
  final bool compact;
  const _DownwardWarning({this.compact = false});

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        Icons.warning_amber_rounded,
        size: compact ? 18 : 22,
        color: Theme.of(context).colorScheme.error,
      ),
      const SizedBox(width: 6),
      Expanded(
        child: Text(
          M.obstructions.looking_downward,
          style: Theme.of(context).textTheme.bodySmall
              ?.copyWith(color: Theme.of(context).colorScheme.error),
        ),
      ),
    ],
  );
}

class _UnavailableMap extends StatelessWidget {
  final _MapView view;
  final bool compact;

  const _UnavailableMap({required this.view, this.compact = false});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(vertical: compact ? 4 : 18),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.hourglass_empty,
          size: compact ? 20 : 28,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            view.unavailable,
            style: compact ? Theme.of(context).textTheme.bodySmall : null,
          ),
        ),
      ],
    ),
  );
}

class _ObstructionDetails extends StatelessWidget {
  final _MapView view;

  const _ObstructionDetails({required this.view});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      insetPadding: const EdgeInsets.all(12),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: size.height - 48, maxWidth: 900),
        child: SizedBox(
          width: 900,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 8, 4),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            M.obstructions.title,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${M.obstructions.source}: ${view.sourceLabel}',
                            style: theme.textTheme.bodySmall,
                          ),
                          if (view.hasResponse)
                            Text(
                              '${view.mapTimingLabel}: ${view.timingValue(view.timing.mapAge)}',
                              style: theme.textTheme.bodySmall,
                            ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: M.general.close,
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final map = _mapPanel(context);
                        final metrics = _information(context);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (view.delayed)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  M.obstructions.delayed,
                                  style: TextStyle(
                                    color: theme.colorScheme.error,
                                  ),
                                ),
                              ),
                            if (view.statusWarning != null)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(view.statusWarning!),
                              ),
                            if (constraints.maxWidth >= 620)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 310, child: map),
                                  const SizedBox(width: 20),
                                  Expanded(child: metrics),
                                ],
                              )
                            else ...[
                              map,
                              const SizedBox(height: 12),
                              metrics,
                            ],
                            const SizedBox(height: 8),
                            _ReadingGuide(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mapPanel(BuildContext context) => Column(
    children: [
      if (view.ready) ...[
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 310, maxHeight: 310),
            child: AspectRatio(aspectRatio: 1, child: _MapCanvas(view: view)),
          ),
        ),
        const SizedBox(height: 6),
        Wrap(
          spacing: 12,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: [
            _legend(ObstructionMapPalette.clearColor, M.obstructions.clear),
            _legend(
              ObstructionMapPalette.reducedSignalColor,
              M.obstructions.reduced_signal,
            ),
            _legend(
              ObstructionMapPalette.obstructedColor,
              M.obstructions.blocked,
            ),
            _legend(ObstructionMapPalette.unknownColor, M.obstructions.no_data),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          view.map!.frame == ObstructionMapReferenceFrame.FRAME_EARTH
              ? M.obstructions.earth_frame
              : view.map!.frame == ObstructionMapReferenceFrame.FRAME_UT
              ? view.northAligned
                    ? M.obstructions.dish_frame_oriented
                    : M.obstructions.dish_frame
              : M.obstructions.unknown_frame,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        if (view.map!.northUp ||
            (view.map!.frame == ObstructionMapReferenceFrame.FRAME_UT &&
                view.orientation.attitude != null)) ...[
          const SizedBox(height: 4),
          Text(
            M.obstructions.arrow_guide,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
        if (view.sectors != null) ...[
          const SizedBox(height: 4),
          Text(
            M.obstructions.sectors_hint,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ] else
        _UnavailableMap(view: view),
      if (view.orientation.lookingDownward) ...[
        const SizedBox(height: 8),
        const _DownwardWarning(),
      ],
    ],
  );

  Widget _legend(Color color, String label) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.circle, size: 9, color: color),
      const SizedBox(width: 4),
      Text(label, style: const TextStyle(fontSize: 11)),
    ],
  );

  Widget _information(BuildContext context) {
    final map = view.map;
    final stats = view.stats;
    final orientation = view.orientation;
    final cells = <_Metric>[
      _Metric(view.statusTimingLabel, view.timingValue(view.timing.statusAge)),
    ];
    if (view.dishFraction != null)
      cells.add(
        _Metric(M.obstructions.dish_fraction, _percent(view.dishFraction)),
      );
    if (stats?.hasCurrentlyObstructed() == true) {
      cells.add(
        _Metric(
          view.live
              ? M.obstructions.current_signal
              : M.obstructions.captured_signal,
          stats!.currentlyObstructed
              ? M.obstructions.blocked
              : M.obstructions.not_blocked,
        ),
      );
    }
    if (view.ready) {
      cells.addAll([
        _Metric(
          M.obstructions.blocked_cells,
          _percent(map!.blockedObservedFraction),
          '${map.blocked} / ${map.observed}',
        ),
        _Metric(
          M.obstructions.largest_patch,
          '${map.largestBlockedPatch}',
          M.obstructions.cells,
        ),
        _Metric(M.obstructions.clear, '${map.clear}', M.obstructions.cells),
        _Metric(
          M.obstructions.reduced_signal,
          '${map.reduced}',
          M.obstructions.cells,
        ),
      ]);
    }
    if (stats?.hasValidS() == true && _seconds(stats!.validS)) {
      cells.add(
        _Metric(M.obstructions.collection_time, Format.secD(stats.validS)),
      );
    }
    if (stats?.avgProlongedObstructionValid == true) {
      if (stats!.hasAvgProlongedObstructionDurationS() &&
          _seconds(stats.avgProlongedObstructionDurationS)) {
        cells.add(
          _Metric(
            M.obstructions.average_duration,
            Format.secD(stats.avgProlongedObstructionDurationS),
          ),
        );
      }
      if (stats.hasAvgProlongedObstructionIntervalS() &&
          _seconds(stats.avgProlongedObstructionIntervalS) &&
          stats.avgProlongedObstructionIntervalS > 0) {
        cells.add(
          _Metric(
            M.obstructions.average_interval,
            Format.secD(stats.avgProlongedObstructionIntervalS),
          ),
        );
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MetricGrid(metrics: cells),
        if (view.ready) ...[
          const SizedBox(height: 7),
          Text(
            M.obstructions.cells_hint,
            style: Theme.of(context).textTheme.bodySmall
                ?.copyWith(fontSize: 11),
          ),
        ],
        const SizedBox(height: 14),
        _section(context, M.obstructions.orientation),
        _MetricGrid(
          metrics: [
            _Metric(M.obstructions.dish_bearing, _bearing(orientation.azimuth)),
            _Metric(M.obstructions.elevation, _bearing(orientation.elevation)),
            if (orientation.desiredAzimuth != null)
              _Metric(
                M.obstructions.target_bearing,
                _bearing(orientation.desiredAzimuth),
              ),
            if (orientation.desiredElevation != null)
              _Metric(
                M.obstructions.target_elevation,
                _bearing(orientation.desiredElevation),
              ),
            if (orientation.azimuthOffset != null &&
                !orientation.headingUncertain)
              _Metric(
                M.obstructions.azimuth_difference,
                _bearing(orientation.azimuthOffset),
              ),
            if (orientation.elevationOffset != null)
              _Metric(
                M.obstructions.elevation_difference,
                _bearing(orientation.elevationOffset),
              ),
          ],
        ),
        if (orientation.headingUncertain)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              M.obstructions.heading_uncertain,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}

Widget _section(BuildContext context, String title) => Padding(
  padding: const EdgeInsets.only(bottom: 7),
  child: Text(
    title,
    style: Theme.of(context).textTheme.titleSmall
        ?.copyWith(fontWeight: FontWeight.bold),
  ),
);

class _Metric {
  final String label;
  final String value;
  final String? detail;
  const _Metric(this.label, this.value, [this.detail]);
}

class _MetricGrid extends StatelessWidget {
  final List<_Metric> metrics;
  const _MetricGrid({required this.metrics});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final theme = Theme.of(context);
      final width = constraints.maxWidth;
      final columns = width >= 460
          ? 3
          : width >= 220
          ? 2
          : 1;
      return Wrap(
        spacing: 6,
        runSpacing: 6,
        children: [
          for (final metric in metrics)
            Container(
              width: (width - (columns - 1) * 6) / columns,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withAlpha(14),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    metric.label,
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    metric.value,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (metric.detail != null)
                    Text(
                      metric.detail!,
                      style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
                    ),
                ],
              ),
            ),
        ],
      );
    },
  );
}

class _ReadingGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ExpansionTile(
    tilePadding: EdgeInsets.zero,
    childrenPadding: const EdgeInsets.only(bottom: 8),
    dense: true,
    title: Text(
      M.obstructions.reading_map,
      style: const TextStyle(fontSize: 12),
    ),
    children: [
      for (final text in [
        M.obstructions.explanation,
        M.obstructions.exclusion_hint,
        M.obstructions.patterns_hint,
        M.obstructions.patch_hint,
      ])
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.info_outline,
                size: 14,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 7),
              Expanded(
                child: Text(text, style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        ),
    ],
  );
}

class _MapCanvas extends StatelessWidget {
  final _MapView view;
  final bool compact;
  const _MapCanvas({required this.view, this.compact = false});

  @override
  Widget build(BuildContext context) => Semantics(
    label: M.obstructions.map_semantics(view.map!.observed, view.map!.blocked),
    child: RepaintBoundary(
      child: CustomPaint(
        key: Key(compact ? 'dish-obstruction-minimap' : 'dish-obstruction-map'),
        painter: _ObstructionPainter(
          view.map!,
          view.bitmap!,
          view.geometry!,
          compact ? null : view.sectors,
          Theme.of(context).colorScheme.onSurface,
          Theme.of(context).colorScheme.surface,
          compact,
          Theme.of(context).textTheme.bodySmall?.fontFamily,
        ),
      ),
    ),
  );
}

class _ObstructionPainter extends CustomPainter {
  final ObstructionMapData map;
  final ui.Image bitmap;
  final ObstructionMapGeometry geometry;
  final ObstructionSectorOverlay? sectors;
  final Color foreground;
  final Color surface;
  final bool compact;
  final String? fontFamily;

  _ObstructionPainter(
    this.map,
    this.bitmap,
    this.geometry,
    this.sectors,
    this.foreground,
    this.surface,
    this.compact,
    this.fontFamily,
  );

  DishOrientation get orientation => geometry.orientation;
  double get rotation => geometry.rotation;
  Offset _rotate(Offset direction) => geometry.rotate(direction);

  @override
  void paint(Canvas canvas, Size size) {
    final margin = compact ? 12.0 : 24.0;
    final layout = ObstructionMapLayout.fit(
      rows: map.rows,
      cols: map.cols,
      size: size,
      rotation: rotation,
      margin: margin,
    );
    final rect = layout.rawRect;
    final displayRect = layout.displayRect;
    final paint = Paint()
      ..isAntiAlias = false
      ..filterQuality = FilterQuality.none;
    canvas.save();
    canvas.clipRRect(
      RRect.fromRectAndRadius(displayRect, Radius.circular(compact ? 9 : 14)),
    );
    paint.color = ObstructionMapPalette.unknownColor;
    canvas.drawRect(displayRect, paint);
    canvas.save();
    canvas.translate(rect.center.dx, rect.center.dy);
    canvas.rotate(rotation);
    canvas.translate(-rect.center.dx, -rect.center.dy);
    canvas.clipRect(rect);
    canvas.drawImageRect(
      bitmap,
      Rect.fromLTWH(0, 0, bitmap.width.toDouble(), bitmap.height.toDouble()),
      rect,
      paint,
    );
    canvas.restore();
    if (sectors != null) {
      final line = Paint()
        ..color = foreground.withAlpha(80)
        ..strokeWidth = 0.8;
      for (final boundary in sectors!.boundaries) {
        final direction = _rotate(boundary);
        final end = ObstructionMapLayout.rayToRect(displayRect, direction);
        if (end != null) canvas.drawLine(rect.center, end, line);
      }
    }
    canvas.restore();
    if (sectors != null) _sectorLabels(canvas, displayRect);
    _compass(canvas, displayRect, rect, showDegrees: !compact && map.northUp);
  }

  void _sectorLabels(Canvas canvas, Rect rect) {
    final occupied = <Rect>[];
    final inset = rect.deflate(6);
    for (var i = 0; i < 8; i++) {
      final sector = sectors!.sectors[i];
      final fraction = sector.blockedFraction;
      final text = fraction == null
          ? '—'
          : '${(fraction * 100).toStringAsFixed(1)}%';
      final painter = TextPainter(
        text: TextSpan(
          text: '$text\n${sector.blocked}/${sector.observed}',
          style: TextStyle(
            color: foreground,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600,
            fontSize: 9,
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout();
      final width = painter.width + 6;
      final height = painter.height + 6;
      final bisector =
          sectors!.boundaries[i] + sectors!.boundaries[(i + 1) % 8];
      final direction = _rotate(bisector / bisector.distance);
      final position = ObstructionMapLayout.rayToRect(
        Rect.fromCenter(
          center: inset.center,
          width: inset.width - width,
          height: inset.height - height,
        ),
        direction,
      );
      if (position == null) {
        painter.dispose();
        continue;
      }
      final bounds = Rect.fromCenter(
        center: position,
        width: width,
        height: height,
      );
      // Place badges just inside the padded edge, keeping them apart.
      if (!bounds.overlaps(Rect.fromCircle(center: rect.center, radius: 4)) &&
          !occupied.any((other) => bounds.overlaps(other))) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(bounds, const Radius.circular(4)),
          Paint()..color = surface.withAlpha(235),
        );
        painter.paint(canvas, bounds.topLeft + const Offset(3, 3));
        occupied.add(bounds);
      }
      painter.dispose();
    }
  }

  void _compass(
    Canvas canvas,
    Rect rect,
    Rect rawRect, {
    bool showDegrees = false,
  }) {
    final center = rect.center;
    final margin = compact ? 12.0 : 24.0;
    final labelRect = rect.inflate(margin / 2);
    final marks = <({String label, Offset position, Rect bounds})>[];
    for (final (label, bearing) in [
      ('N', 0.0),
      ('E', 90.0),
      ('S', 180.0),
      ('W', 270.0),
    ]) {
      final rawDirection = geometry.horizontalDirection(bearing);
      if (rawDirection == null) continue;
      final direction = _rotate(rawDirection);
      final position = ObstructionMapLayout.rayToRect(labelRect, direction);
      if (position == null) continue;
      marks.add((
        label: label,
        position: position,
        bounds: _text(canvas, label, position, measureOnly: true),
      ));
    }
    // Near a vertical panel, different horizontal directions can project to
    // the same edge. Group overlapping labels instead of painting over them.
    while (marks.isNotEmpty) {
      final group = [marks.removeAt(0)];
      var expanded = true;
      while (expanded) {
        expanded = false;
        for (var i = marks.length - 1; i >= 0; i--) {
          if (group.any((mark) => mark.bounds.overlaps(marks[i].bounds))) {
            group.add(marks.removeAt(i));
            expanded = true;
          }
        }
      }
      final position =
          group.fold<Offset>(Offset.zero, (sum, mark) => sum + mark.position) /
          group.length.toDouble();
      _text(
        canvas,
        group.map((mark) => mark.label).join('/'),
        position,
        canvasSize: Size(center.dx * 2, center.dy * 2),
      );
    }
    if (showDegrees) {
      for (var angle = 45; angle < 360; angle += 90) {
        final direction = _rotate(
          geometry.horizontalDirection(angle.toDouble())!,
        );
        final edge = ObstructionMapLayout.rayToRect(rect, direction);
        if (edge == null) continue;
        _text(
          canvas,
          '$angle°',
          // Preserve the square-map inset while following the sector-cut ray.
          center + (edge - center) * (0.44 * math.sqrt2),
          small: true,
        );
      }
    }
    final target = geometry.targetHeadingProjection(
      orientation.desiredAzimuth,
      orientation.desiredElevation,
    );
    if (!compact && target != null) {
      _heading(
        canvas,
        center,
        rawRect,
        _rotate(target),
        const Color(0xfff4d165),
        dashed: true,
      );
    }
    final actual = geometry.actualHeadingProjection(
      orientation.azimuth,
      orientation.elevation,
    );
    if (actual != null) {
      _heading(
        canvas,
        center,
        rawRect,
        _rotate(actual),
        Colors.white,
        dashed: false,
      );
    }
  }

  Rect _text(
    Canvas canvas,
    String text,
    Offset position, {
    bool small = false,
    bool measureOnly = false,
    Size? canvasSize,
  }) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: foreground,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: compact
              ? 9
              : small
              ? 10
              : 12,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    var origin = position - Offset(painter.width / 2, painter.height / 2);
    if (canvasSize != null) {
      origin = Offset(
        origin.dx.clamp(0.0, math.max(0.0, canvasSize.width - painter.width)),
        origin.dy.clamp(0.0, math.max(0.0, canvasSize.height - painter.height)),
      );
    }
    final bounds = origin & painter.size;
    if (!measureOnly) painter.paint(canvas, origin);
    painter.dispose();
    return bounds;
  }

  void _heading(
    Canvas canvas,
    Offset center,
    Rect rect,
    Offset projection,
    Color color, {
    required bool dashed,
  }) {
    final fraction = projection.distance;
    final direction = fraction == 0 ? Offset.zero : projection / fraction;
    final length =
        math.min(rect.width, rect.height) * (compact ? 0.29 : 0.36) * fraction;
    final tip = center + direction * length;
    final paint = Paint()
      ..color = color
      ..strokeWidth = compact ? 1.6 : 2.2
      ..isAntiAlias = true;
    // Horizontal projection of the panel normal: vertical is a center dot.
    final radius = compact ? 2.0 : 3.0;
    if (length <= radius) {
      canvas.drawCircle(center, radius + 1, Paint()..color = Colors.black54);
      canvas.drawCircle(center, radius, paint);
      return;
    }
    if (dashed) {
      for (var i = 0; i < 6; i++) {
        canvas.drawLine(
          center + direction * (length * i / 6),
          center + direction * (length * (i + 0.55) / 6),
          paint,
        );
      }
    } else {
      canvas.drawLine(
        center,
        tip,
        Paint()
          ..color = Colors.black54
          ..strokeWidth = paint.strokeWidth + 2,
      );
      canvas.drawLine(center, tip, paint);
      canvas.drawCircle(center, radius, paint);
    }
    final side = Offset(-direction.dy, direction.dx);
    final headLength = math.min(7.0, length * 0.6);
    final headWidth = headLength / 2;
    final arrow = Path()
      ..moveTo(tip.dx, tip.dy)
      ..lineTo(
        (tip - direction * headLength + side * headWidth).dx,
        (tip - direction * headLength + side * headWidth).dy,
      )
      ..lineTo(
        (tip - direction * headLength - side * headWidth).dx,
        (tip - direction * headLength - side * headWidth).dy,
      )
      ..close();
    canvas.drawPath(arrow, paint);
  }

  @override
  bool shouldRepaint(_ObstructionPainter oldDelegate) =>
      oldDelegate.map != map ||
      oldDelegate.bitmap != bitmap ||
      oldDelegate.sectors != sectors ||
      oldDelegate.orientation.azimuth != orientation.azimuth ||
      oldDelegate.orientation.elevation != orientation.elevation ||
      oldDelegate.orientation.desiredAzimuth != orientation.desiredAzimuth ||
      oldDelegate.orientation.desiredElevation !=
          orientation.desiredElevation ||
      oldDelegate.orientation.headingUncertain !=
          orientation.headingUncertain ||
      oldDelegate.orientation.attitude?.north != orientation.attitude?.north ||
      oldDelegate.orientation.attitude?.east != orientation.attitude?.east ||
      oldDelegate.orientation.attitude?.down != orientation.attitude?.down ||
      oldDelegate.foreground != foreground ||
      oldDelegate.surface != surface ||
      oldDelegate.fontFamily != fontFamily ||
      oldDelegate.compact != compact;
}
