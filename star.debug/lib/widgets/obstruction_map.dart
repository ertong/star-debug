import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/utils/format.dart';
import 'package:star_debug/utils/obstructions.dart';
import 'package:star_debug/widgets/app_surface.dart';

class ObstructionMapWidget extends StatefulWidget {
  final DishGetObstructionMapResponse? map;
  final DishObstructionStats? stats;
  final DishGetStatusResponse? status;
  final int? receivedTime;
  final int timestamp;
  final bool live;

  const ObstructionMapWidget({
    super.key,
    required this.map,
    required this.timestamp,
    this.stats,
    this.status,
    this.receivedTime,
    this.live = false,
  });

  @override
  State<ObstructionMapWidget> createState() => _ObstructionMapWidgetState();
}

class _ObstructionMapWidgetState extends State<ObstructionMapWidget> {
  ObstructionMapData? data;
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
    data = widget.map == null
        ? null
        : ObstructionMapData.fromResponse(widget.map!);
  }

  _MapView _view() => _MapView(
    data,
    widget.map != null,
    widget.stats ??
        (widget.status?.hasObstructionStats() == true
            ? widget.status!.obstructionStats
            : null),
    DishOrientation.fromStatus(widget.status),
    widget.receivedTime,
    widget.timestamp,
    widget.live,
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
          ],
        ),
      ),
    );
  }
}

class _MapView {
  final ObstructionMapData? map;
  final bool hasResponse;
  final DishObstructionStats? stats;
  final DishOrientation orientation;
  final int? receivedTime;
  final int timestamp;
  final bool live;

  const _MapView(
    this.map,
    this.hasResponse,
    this.stats,
    this.orientation,
    this.receivedTime,
    this.timestamp,
    this.live,
  );

  bool get ready =>
      map != null &&
      map!.observed > 0 &&
      !(stats?.hasPatchesValid() == true && stats!.patchesValid == 0);
  int? get age => receivedTime == null || receivedTime! <= 0
      ? null
      : math.max(0, timestamp - receivedTime!) ~/ 1000;
  bool get delayed => live && age != null && age! > 65;
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
      ? M.obstructions.invalid_map
      : M.obstructions.gathering;
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
      ? ObstructionMapData.obstructedColor
      : map!.blocked > 0 || map!.reduced > 0
      ? ObstructionMapData.reducedSignalColor
      : ObstructionMapData.clearColor;
}

String _percent(double? value) =>
    value == null ? '—' : '${(value * 100).toStringAsFixed(2)}%';
bool _fraction(double value) => value.isFinite && value >= 0 && value <= 1;
bool _seconds(double value) => value.isFinite && value >= 0;
String _bearing(double? value) =>
    value == null ? '—' : '${value.toStringAsFixed(1)}°';

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
                          if (view.age != null)
                            Text(
                              '${M.obstructions.map_age}: ${Format.sec(view.age!)}',
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
            _legend(ObstructionMapData.clearColor, M.obstructions.clear),
            _legend(
              ObstructionMapData.reducedSignalColor,
              M.obstructions.reduced_signal,
            ),
            _legend(ObstructionMapData.obstructedColor, M.obstructions.blocked),
            _legend(ObstructionMapData.unknownColor, M.obstructions.no_data),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          view.map!.frame == ObstructionMapReferenceFrame.FRAME_EARTH
              ? M.obstructions.earth_frame
              : view.map!.frame == ObstructionMapReferenceFrame.FRAME_UT
              ? M.obstructions.dish_frame
              : M.obstructions.unknown_frame,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ] else
        _UnavailableMap(view: view),
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
    final cells = <_Metric>[];
    if (view.dishFraction != null)
      cells.add(
        _Metric(M.obstructions.dish_fraction, _percent(view.dishFraction)),
      );
    if (stats?.hasCurrentlyObstructed() == true) {
      cells.add(
        _Metric(
          M.obstructions.current_signal,
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
        if (view.ready) ...[
          const SizedBox(height: 14),
          _section(context, M.obstructions.sectors),
          _SectorChart(map: map!),
        ],
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

class _SectorChart extends StatelessWidget {
  final ObstructionMapData map;
  const _SectorChart({required this.map});

  @override
  Widget build(BuildContext context) {
    final earth = map.frame == ObstructionMapReferenceFrame.FRAME_EARTH;
    final labels = earth
        ? ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW']
        : [
            M.obstructions.top,
            M.obstructions.top_right,
            M.obstructions.right,
            M.obstructions.bottom_right,
            M.obstructions.bottom,
            M.obstructions.bottom_left,
            M.obstructions.left,
            M.obstructions.top_left,
          ];
    return Column(
      children: [
        for (final sector in map.sectors)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                SizedBox(
                  width: earth ? 26 : 78,
                  child: Text(
                    labels[sector.index],
                    style: const TextStyle(fontSize: 11),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: LinearProgressIndicator(
                      value: sector.blockedFraction ?? 0,
                      minHeight: 5,
                      backgroundColor: Theme.of(context).colorScheme.onSurface
                          .withAlpha(25),
                      color: ObstructionMapData.obstructedColor,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 58,
                  child: Text(
                    sector.blockedFraction == null
                        ? '—'
                        : '${(sector.blockedFraction! * 100).toStringAsFixed(1)}%',
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 11),
                  ),
                ),
                SizedBox(
                  width: 44,
                  child: Text(
                    '${sector.observed}',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall
                        ?.copyWith(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(height: 4),
        Text(
          M.obstructions.sectors_hint,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 11),
        ),
      ],
    );
  }
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
          view.orientation,
          Theme.of(context).colorScheme.onSurface,
          compact,
          Theme.of(context).textTheme.bodySmall?.fontFamily,
        ),
      ),
    ),
  );
}

class _ObstructionPainter extends CustomPainter {
  final ObstructionMapData map;
  final DishOrientation orientation;
  final Color foreground;
  final bool compact;
  final String? fontFamily;

  _ObstructionPainter(
    this.map,
    this.orientation,
    this.foreground,
    this.compact,
    this.fontFamily,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final margin = compact ? 12.0 : 24.0;
    final available = Size(
      math.max(1, size.width - margin * 2),
      math.max(1, size.height - margin * 2),
    );
    final scale = math.min(
      available.width / map.cols,
      available.height / map.rows,
    );
    final rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: map.cols * scale,
      height: map.rows * scale,
    );
    final paint = Paint()..isAntiAlias = false;
    canvas.save();
    canvas.clipRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(compact ? 9 : 14)),
    );
    for (var row = 0; row < map.rows; row++) {
      for (var col = 0; col < map.cols; col++) {
        paint.color = ObstructionMapData.color(
          map.signal[row * map.cols + col],
        );
        canvas.drawRect(
          Rect.fromLTWH(
            rect.left + col * scale,
            rect.top + row * scale,
            scale,
            scale,
          ),
          paint,
        );
      }
    }
    canvas.restore();
    final center = rect.center;
    final earth = map.frame == ObstructionMapReferenceFrame.FRAME_EARTH;
    final dish = map.frame == ObstructionMapReferenceFrame.FRAME_UT;
    if (earth) {
      _text(canvas, 'N', Offset(center.dx, rect.top - margin / 2));
      _text(canvas, 'E', Offset(rect.right + margin / 2, center.dy));
      _text(canvas, 'S', Offset(center.dx, rect.bottom + margin / 2));
      _text(canvas, 'W', Offset(rect.left - margin / 2, center.dy));
      if (!compact) {
        for (var angle = 45; angle < 360; angle += 90) {
          final radians = angle * math.pi / 180;
          _text(
            canvas,
            '$angle°',
            center +
                Offset(
                  math.sin(radians) * rect.width * 0.44,
                  -math.cos(radians) * rect.height * 0.44,
                ),
            small: true,
          );
        }
      }
      if (orientation.azimuth != null && !orientation.headingUncertain) {
        _heading(
          canvas,
          center,
          rect,
          orientation.azimuth!,
          Colors.white,
          dashed: false,
        );
      }
      if (!compact &&
          orientation.desiredAzimuth != null &&
          !orientation.headingUncertain) {
        _heading(
          canvas,
          center,
          rect,
          orientation.desiredAzimuth!,
          const Color(0xfff4d165),
          dashed: true,
        );
      }
    } else if (dish) {
      _heading(canvas, center, rect, 180, Colors.white, dashed: false);
      if (!compact) {
        _text(
          canvas,
          orientation.azimuth == null || orientation.headingUncertain
              ? M.obstructions.dish_heading
              : '${M.obstructions.dish_heading} ${_bearing(orientation.azimuth)}',
          Offset(center.dx, rect.bottom + 13),
          small: true,
        );
      }
    }
  }

  void _text(
    Canvas canvas,
    String text,
    Offset position, {
    bool small = false,
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
    painter.paint(
      canvas,
      position - Offset(painter.width / 2, painter.height / 2),
    );
    painter.dispose();
  }

  void _heading(
    Canvas canvas,
    Offset center,
    Rect rect,
    double bearing,
    Color color, {
    required bool dashed,
  }) {
    final radians = bearing * math.pi / 180;
    final direction = Offset(math.sin(radians), -math.cos(radians));
    final length = math.min(rect.width, rect.height) * (compact ? 0.29 : 0.36);
    final tip = center + direction * length;
    final paint = Paint()
      ..color = color
      ..strokeWidth = compact ? 1.6 : 2.2
      ..isAntiAlias = true;
    // The arrow indicates azimuth only; its radius is not an elevation marker.
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
      canvas.drawCircle(center, compact ? 2 : 3, paint);
    }
    final side = Offset(-direction.dy, direction.dx);
    final arrow = Path()
      ..moveTo(tip.dx, tip.dy)
      ..lineTo(
        (tip - direction * 7 + side * 3.5).dx,
        (tip - direction * 7 + side * 3.5).dy,
      )
      ..lineTo(
        (tip - direction * 7 - side * 3.5).dx,
        (tip - direction * 7 - side * 3.5).dy,
      )
      ..close();
    canvas.drawPath(arrow, paint);
  }

  @override
  bool shouldRepaint(_ObstructionPainter oldDelegate) =>
      oldDelegate.map != map ||
      oldDelegate.orientation.azimuth != orientation.azimuth ||
      oldDelegate.orientation.desiredAzimuth != orientation.desiredAzimuth ||
      oldDelegate.orientation.headingUncertain !=
          orientation.headingUncertain ||
      oldDelegate.foreground != foreground ||
      oldDelegate.fontFamily != fontFamily ||
      oldDelegate.compact != compact;
}
