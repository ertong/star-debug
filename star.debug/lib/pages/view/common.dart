import 'package:flutter/material.dart';
import 'package:star_debug/grpc/starlink/starlink.pb.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/utils/kv_widget.dart';
import 'package:star_debug/utils/view_options.dart';
import 'package:time_machine2/time_machine2.dart';

import '../../utils/format.dart';

List<Widget> buildDeviceInfoWidget(BuildContext context, ThemeData theme, DeviceInfo deviceInfo, {int? apiVersion, required ViewOptions opts}) {
    var b = KVWidgetBuilder(context, theme);

    b.header(M.header.device_info);
    if (deviceInfo.hasId())
      b.kv(M.grpc.DeviceInfo.id, deviceInfo.id, hide: opts.hideIds);
    if (deviceInfo.hasHardwareVersion())
      b.kv(M.grpc.DeviceInfo.hardware_version, deviceInfo.hardwareVersion);
    if (deviceInfo.hasHardwareIndex())
      b.kv(M.grpc.DeviceInfo.hardware_version, deviceInfo.hardwareIndex);
    if (deviceInfo.hasSoftwareVersion())
      b.kv(M.grpc.DeviceInfo.software_version, deviceInfo.softwareVersion + (apiVersion!=null ? "\nAPI $apiVersion" : ""));
    if (deviceInfo.hasManufacturedVersion() && deviceInfo.manufacturedVersion!="")
      b.kv(M.grpc.DeviceInfo.manufactured_version, deviceInfo.manufacturedVersion);

    if (deviceInfo.hasSoftwarePartitionsEqual())
      b.kv(M.grpc.DeviceInfo.software_partitions_equal, deviceInfo.softwarePartitionsEqual);

    if (deviceInfo.hasCountryCode())
      b.kv(M.grpc.DeviceInfo.country_code, deviceInfo.countryCode);
    if (deviceInfo.hasUtcOffsetS()) {
      var tz = (deviceInfo.utcOffsetS / 1800).round() / 2;
      var tzs = (tz-tz.floor()>0.01) ? tz.toStringAsFixed(1) : tz.toStringAsFixed(0);
      if (tz>0)
        tzs = "+$tzs";

      b.kv(M.grpc.DeviceInfo.x_timezone, "UTC$tzs");
    }
  // bool software_partitions_equal = 6;
    // bool is_dev = 7;
    if (deviceInfo.hasBootcount())
      b.kv(M.grpc.DeviceInfo.bootcount, deviceInfo.bootcount);
    // int32 anti_rollback_version = 9;
    // bool is_hitl = 10;

    if (deviceInfo.hasGenerationNumber() && deviceInfo.generationNumber>0)
      b.kv(M.grpc.DeviceInfo.x_build_date,
          Instant.fromEpochSeconds(deviceInfo.generationNumber.toInt()).inUtc().toString("yyyy-MM-dd")
      );

    if (deviceInfo.hasDishCohoused())
      b.kv(M.grpc.DeviceInfo.dish_cohoused, deviceInfo.dishCohoused);

    return b.widgets;
}

List<Widget> buildAlertsWidget(BuildContext context, ThemeData theme, Map<String, dynamic> alerts) {
  var b = KVWidgetBuilder(context, theme);
  int cnt = 0;
  for (var e in alerts.entries)
    if (e.value)
      cnt++;
  if (cnt==0) {
    b.header(M.header.alerts);
    b.kv("", M.general.no_alerts);
  } else {
    b.header(M.header.alerts, isAlert: true);
    for (var e in alerts.entries)
      if (e.value)
        b.kv("", "${e.key}".toUpperCase());
  }

  return b.widgets;
}

String formatEventReason(EventReason reason){
  var res = reason.name;
  res = res.replaceFirst("EVENT_REASON_", "");
  return res;
}

List<String> formatEventMetadata(UXEvent event, {bool hideIds = false}) {
  var metadata = <String>[];

  // if (!hideIds && event.hasDeviceId() && event.deviceId.isNotEmpty)
  //   metadata.add("${M.live.event_device_id}: ${event.deviceId}");

  switch (event.whichMetadata()) {
    case UXEvent_Metadata.clientReconnectingOftenMetadata:
      break;
    case UXEvent_Metadata.clientSwitchingBandMetadata:
      var value = event.clientSwitchingBandMetadata;
      var bands = <String>[
        if (value.hasFromBand() && value.fromBand.isNotEmpty) value.fromBand,
        if (value.hasToBand() && value.toBand.isNotEmpty) value.toBand,
      ];
      if (bands.isNotEmpty)
        metadata.add("${M.live.event_band}: ${bands.join(' → ')}");
      break;
    case UXEvent_Metadata.clientSwitchingUpstreamMacMetadata:
      break;
    case UXEvent_Metadata.meshConnectionChangingMetadata:
      var value = event.meshConnectionChangingMetadata;
      if (!hideIds && value.hasRepeaterId() && value.repeaterId.isNotEmpty)
        metadata.add("${M.live.event_repeater_id}: ${value.repeaterId}");
      if (value.hasChange())
        metadata.add("${M.live.event_change}: ${value.change}");
      break;
    case UXEvent_Metadata.meshBackhaulLowPhyMetadata:
      var ids = event.meshBackhaulLowPhyMetadata.repeaterIds;
      if (!hideIds && ids.isNotEmpty)
        metadata.add("${M.live.event_repeater_ids}: ${ids.join(', ')}");
      break;
    case UXEvent_Metadata.highOverlappingBssMetadata:
      for (var value in event.highOverlappingBssMetadata.highOverlappingBssStats) {
        var details = <String>[
          if (value.hasIface() && value.iface.isNotEmpty) value.iface,
          if (value.hasAverageOverlappingBssPercentage())
            "${value.averageOverlappingBssPercentage} %",
        ];
        if (details.isNotEmpty)
          metadata.add("${M.live.event_overlapping_bss}: ${details.join(' · ')}");
      }
      break;
    case UXEvent_Metadata.clientExcessiveNetworkConnectionsMetadata:
      break;
    case UXEvent_Metadata.notSet:
      break;
  }

  return metadata;
}

void buildEventLogs(BuildContext context, ThemeData theme, DishGetHistoryResponse? getHistory, List<Widget> rows,
    int num_rows, {bool? expanded, void Function(bool)? setExpanded, ViewOptions? viewOptions}
) {
  var eventLog = getHistory?.eventLog;

  if (eventLog==null || eventLog.events.isEmpty)
    return;

  var b = KVWidgetBuilder(context, theme);
  b.header(M.live.event_logs, more: [
    Expanded(child: Container()),
    if (expanded!=null)
      Icon(expanded?Icons.expand_less:Icons.expand_more, size: 20,),
  ],onTap: () {
    if (setExpanded!=null && expanded!=null)
      setExpanded(!expanded);
  },);

  if (eventLog.events.length>num_rows && expanded==false)
    b.widgets.add(GestureDetector(
        onTap: () {
          if (setExpanded!=null && expanded!=null)
            setExpanded(!expanded);
        },
        child: Text(M.live.n_records_before(eventLog.events.length-10), textAlign: TextAlign.center,)
    ));

  for (var o in eventLog.events.length<=num_rows || expanded==true ? eventLog.events : eventLog.events.skip(eventLog.events.length-num_rows) ) {
    var metadata = formatEventMetadata(o, hideIds: viewOptions?.hideIds ?? false);
    Widget? icon;
    // if (o.severity==EventSeverity.EVENT_SEVERITY_UNKNOWN);
    if (o.severity==EventSeverity.EVENT_SEVERITY_WARNING)
      icon = Icon(Icons.warning, size: 16, color: Colors.deepOrange,);
    if (o.severity==EventSeverity.EVENT_SEVERITY_CAUTION)
      icon = Icon(Icons.warning, size: 16, color: Colors.orange,);
    if (o.severity==EventSeverity.EVENT_SEVERITY_ADVISORY)
      icon = Icon(Icons.info, size: 16, color: Colors.blueAccent,);

    if (o.startTimestampNs==-1) {
      b.kvs("${formatEventReason(o.reason)}", metadata.join("\n"),
        kw: Row(
          spacing: 3,
          children: [
            ?icon,
            Text(formatEventReason(o.reason), style: TextStyle(fontWeight: FontWeight.bold,)),
          ],
        )
      );
      continue;
    }

    int ts_int = (o.startTimestampNs~/1000~/1000).toInt();

    var ts = Instant.fromEpochMilliseconds(ts_int).inLocalZone();
    var details = <String>[
      Format.secD(o.durationNs.toDouble()/1000/1000/1000),
      ...metadata,
    ];
    b.kvs("${ts.toString("HH:mm:ss")} ", details.join("\n"),
        kw: Row(
          spacing: 3,
          children: [
            Text(ts.toString("HH:mm:ss"), style: TextStyle(fontWeight: FontWeight.bold,)),
            ?icon,
            Text(formatEventReason(o.reason), style: TextStyle(fontWeight: FontWeight.bold,)),
          ],
        )
    );
  }
  rows.addAll(b.widgets);
}
