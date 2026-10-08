import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:screenshot/screenshot.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:time_machine2/time_machine2.dart';

import 'common.dart';
import 'dish.dart';
import 'router.dart';

class ShareImageData {
  final Uint8List bytes;
  final String mimeType;
  final String extension;

  const ShareImageData({
    required this.bytes,
    required this.mimeType,
    required this.extension,
  });
}

Uint8List _encodeJpeg((Uint8List, int, int) pixels) {
  final (bytes, width, height) = pixels;
  return img.encodeJpg(
    img.Image.fromBytes(
      width: width,
      height: height,
      bytes: bytes.buffer,
      bytesOffset: bytes.offsetInBytes,
      order: img.ChannelOrder.rgba,
    ),
    quality: 90,
  );
}

@visibleForTesting
Future<ShareImageData> encodeShareImage(
  ui.Image image, {
  Future<Uint8List?> Function(Uint8List, int, int)? jpegEncoder,
}) async {
  final pixels = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
  if (pixels != null) {
    final bytes = pixels.buffer.asUint8List(
      pixels.offsetInBytes,
      pixels.lengthInBytes,
    );
    Uint8List? jpeg;
    try {
      jpeg = jpegEncoder == null
          ? await compute(_encodeJpeg, (bytes, image.width, image.height))
          : await jpegEncoder(bytes, image.width, image.height);
    } on UnsupportedError {
      // Use PNG when JPEG encoding is unavailable.
    }
    if (jpeg != null) {
      return ShareImageData(
        bytes: jpeg,
        mimeType: 'image/jpeg',
        extension: 'jpg',
      );
    }
  }
  final png = await image.toByteData(format: ui.ImageByteFormat.png);
  if (png == null) throw StateError('Image encoding failed');
  return ShareImageData(
    bytes: png.buffer.asUint8List(png.offsetInBytes, png.lengthInBytes),
    mimeType: 'image/png',
    extension: 'png',
  );
}

Future<ShareImageData> captureShareImage(
  BuildContext context,
  Snapshot snap,
  MapSourceMode sourceMode,
  ViewOptions options,
) async {
  final image = await ScreenshotController().longWidgetToUiImage(
    InheritedTheme.captureAll(
      context,
      MediaQuery(
        data: const MediaQueryData(),
        child: Material(
          child: ShareImage(
            snap: snap,
            sourceMode: sourceMode,
            viewOptions: options,
          ),
        ),
      ),
    ),
    pixelRatio: 2,
  );
  try {
    return await encodeShareImage(image);
  } finally {
    image.dispose();
  }
}

class ShareImage extends StatelessWidget {
  final Snapshot snap;
  final MapSourceMode sourceMode;
  final ViewOptions viewOptions;

  const ShareImage({
    super.key,
    required this.snap,
    required this.sourceMode,
    required this.viewOptions,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    var theme = Theme.of(context);
    buildEventLogs(
      context,
      theme,
      snap.dishGetHistory,
      rows,
      20,
      viewOptions: viewOptions,
    );

    final showObstructionMap =
        snap.dishGetStatus != null || snap.dishGetObstructionMap != null;
    final showGraphsColumn = snap.dishGetHistory != null || showObstructionMap;
    var columnCount = [
      snap.dishGetStatus != null,
      snap.routerGetStatus != null,
      showGraphsColumn,
    ].where((visible) => visible).length;

    // Long-widget capture is unbounded; avoid intrinsic layout of report contents.
    return SizedBox(
      width: 380.0 * (columnCount > 0 ? columnCount : 1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (snap.dishGetStatus != null)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 380,
                  child: DishWidget(
                    snap: snap,
                    sourceMode: sourceMode,
                    forSnapshotImage: true,
                    showObstructionMap: false,
                    viewOptions: viewOptions,
                  ),
                ),
              if (snap.routerGetStatus != null)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 380,
                  child: RouterWidget(snap: snap, viewOptions: viewOptions),
                ),
              if (showGraphsColumn)
                MediaQuery(
                  data: MediaQueryData(
                    gestureSettings: const DeviceGestureSettings(
                      touchSlop: 10,
                    ), // for CartesianChartArea
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 380,
                    child: Column(
                      children: [
                        ..._buildCharts(),
                        ...rows,
                        if (showObstructionMap)
                          DishWidget(
                            snap: snap,
                            sourceMode: sourceMode,
                            forSnapshotImage: true,
                            statusVisible: false,
                            viewOptions: viewOptions,
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Container(
            color: Colors.grey.shade400,
            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.black),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 10,
                children: [
                  Text("Generated by ${M.general.app_name} v${R.versionName}"),
                  Text(
                    "${Instant.fromEpochMilliseconds(snap.timestamp).inLocalZone().toString("yyyy-MM-dd HH:mm:ss 'GMT'o<g>")}",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildCharts() {
    List<Widget> items = [];
    var history = snap.dishGetHistory;
    if (history == null) return items;

    var time = snap.historyTs ?? snap.timestamp;

    items.add(
      buildGraph(
        M.grpc.DishGetStatus.pop_ping_latency_ms,
        "ms",
        history.current.toInt(),
        time,
        history.popPingLatencyMs,
      ),
    );
    items.add(
      buildGraph(
        M.grpc.DishGetStatus.pop_ping_drop_rate,
        "",
        history.current.toInt(),
        time,
        history.popPingDropRate,
      ),
    );
    items.add(
      buildGraph("Uplink", "Mb/s", history.current.toInt(), time, [
        for (var v in history.uplinkThroughputBps) v / 1024 / 1024,
      ]),
    );
    items.add(
      buildGraph("Downlink", "Mb/s", history.current.toInt(), time, [
        for (var v in history.downlinkThroughputBps) v / 1024 / 1024,
      ]),
    );
    items.add(
      buildGraph("PowerIn", "W", history.current.toInt(), time, [
        for (var v in history.powerIn) v,
      ]),
    );

    return items;
  }
}
