//
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'network.pbenum.dart' as $2;
import 'starlink.pbenum.dart';
import 'status.pb.dart' as $1;

export 'starlink.pbenum.dart';

enum Request_Request {
  signedRequest, 
  reboot, 
  speedTest, 
  getStatus, 
  authenticate, 
  getNextId, 
  getHistory, 
  getDeviceInfo, 
  getPing, 
  setTrustedKeys, 
  factoryReset, 
  getLog, 
  setSku, 
  update, 
  getNetworkInterfaces, 
  pingHost, 
  getLocation, 
  getHeapDump, 
  restartControl, 
  fuse, 
  getPersistentStats, 
  getConnections, 
  startSpeedtest, 
  getSpeedtestStatus, 
  reportClientSpeedtest, 
  initiateRemoteSsh, 
  selfTest, 
  setTestMode, 
  softwareUpdate, 
  enableDebugTelem, 
  iqCapture, 
  dishStow, 
  dishGetContext, 
  dishSetEmc, 
  dishGetObstructionMap, 
  dishGetEmc, 
  dishSetConfig, 
  dishGetConfig, 
  startDishSelfTest, 
  dishPowerSave, 
  dishInhibitGps, 
  wifiSetConfig, 
  wifiGetClients, 
  wifiSetup, 
  wifiGetPingMetrics, 
  wifiGetDiagnostics, 
  wifiGetConfig, 
  wifiSetMeshDeviceTrust, 
  wifiSetMeshConfig, 
  wifiGetClientHistory, 
  wifiSetAviationConformed, 
  wifiSetClientGivenName, 
  wifiSelfTest, 
  wifiCalibrationMode, 
  transceiverIfLoopbackTest, 
  transceiverGetStatus, 
  transceiverGetTelemetry, 
  notSet
}

/// SpaceX.API.Device.Request is a message:
class Request extends $pb.GeneratedMessage {
  factory Request({
    $fixnum.Int64? id,
    $core.String? targetId,
    $fixnum.Int64? epochId,
    SignedData? signedRequest,
    RebootRequest? reboot,
    SpeedTestRequest? speedTest,
    GetStatusRequest? getStatus,
    AuthenticateRequest? authenticate,
    GetNextIdRequest? getNextId,
    GetHistoryRequest? getHistory,
    GetDeviceInfoRequest? getDeviceInfo,
    GetPingRequest? getPing,
    SetTrustedKeysRequest? setTrustedKeys,
    FactoryResetRequest? factoryReset,
    GetLogRequest? getLog,
    SetSkuRequest? setSku,
    UpdateRequest? update,
    GetNetworkInterfacesRequest? getNetworkInterfaces,
    PingHostRequest? pingHost,
    GetLocationRequest? getLocation,
    GetHeapDumpRequest? getHeapDump,
    RestartControlRequest? restartControl,
    FuseRequest? fuse,
    GetPersistentStatsRequest? getPersistentStats,
    GetConnectionsRequest? getConnections,
    StartSpeedtestRequest? startSpeedtest,
    GetSpeedtestStatusRequest? getSpeedtestStatus,
    ReportClientSpeedtestRequest? reportClientSpeedtest,
  @$core.Deprecated('This field is deprecated.')
    InitiateRemoteSshRequest? initiateRemoteSsh,
    SelfTestRequest? selfTest,
    SetTestModeRequest? setTestMode,
    SoftwareUpdateRequest? softwareUpdate,
    EnableDebugTelemRequest? enableDebugTelem,
    IQCaptureRequest? iqCapture,
    DishStowRequest? dishStow,
    DishGetContextRequest? dishGetContext,
    DishSetEmcRequest? dishSetEmc,
    DishGetObstructionMapRequest? dishGetObstructionMap,
    DishGetEmcRequest? dishGetEmc,
    DishSetConfigRequest? dishSetConfig,
    DishGetConfigRequest? dishGetConfig,
    StartDishSelfTestRequest? startDishSelfTest,
    DishPowerSaveRequest? dishPowerSave,
    DishInhibitGpsRequest? dishInhibitGps,
    WifiSetConfigRequest? wifiSetConfig,
    WifiGetClientsRequest? wifiGetClients,
    WifiSetupRequest? wifiSetup,
    WifiGetPingMetricsRequest? wifiGetPingMetrics,
    WifiGetDiagnosticsRequest? wifiGetDiagnostics,
    WifiGetConfigRequest? wifiGetConfig,
    WifiSetMeshDeviceTrustRequest? wifiSetMeshDeviceTrust,
  @$core.Deprecated('This field is deprecated.')
    WifiSetMeshConfigRequest? wifiSetMeshConfig,
    WifiGetClientHistoryRequest? wifiGetClientHistory,
    WifiSetAviationConformedRequest? wifiSetAviationConformed,
    WifiSetClientGivenNameRequest? wifiSetClientGivenName,
    WifiSelfTestRequest? wifiSelfTest,
    WifiCalibrationModeRequest? wifiCalibrationMode,
    TransceiverIFLoopbackTestRequest? transceiverIfLoopbackTest,
    TransceiverGetStatusRequest? transceiverGetStatus,
    TransceiverGetTelemetryRequest? transceiverGetTelemetry,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (epochId != null) {
      $result.epochId = epochId;
    }
    if (signedRequest != null) {
      $result.signedRequest = signedRequest;
    }
    if (reboot != null) {
      $result.reboot = reboot;
    }
    if (speedTest != null) {
      $result.speedTest = speedTest;
    }
    if (getStatus != null) {
      $result.getStatus = getStatus;
    }
    if (authenticate != null) {
      $result.authenticate = authenticate;
    }
    if (getNextId != null) {
      $result.getNextId = getNextId;
    }
    if (getHistory != null) {
      $result.getHistory = getHistory;
    }
    if (getDeviceInfo != null) {
      $result.getDeviceInfo = getDeviceInfo;
    }
    if (getPing != null) {
      $result.getPing = getPing;
    }
    if (setTrustedKeys != null) {
      $result.setTrustedKeys = setTrustedKeys;
    }
    if (factoryReset != null) {
      $result.factoryReset = factoryReset;
    }
    if (getLog != null) {
      $result.getLog = getLog;
    }
    if (setSku != null) {
      $result.setSku = setSku;
    }
    if (update != null) {
      $result.update = update;
    }
    if (getNetworkInterfaces != null) {
      $result.getNetworkInterfaces = getNetworkInterfaces;
    }
    if (pingHost != null) {
      $result.pingHost = pingHost;
    }
    if (getLocation != null) {
      $result.getLocation = getLocation;
    }
    if (getHeapDump != null) {
      $result.getHeapDump = getHeapDump;
    }
    if (restartControl != null) {
      $result.restartControl = restartControl;
    }
    if (fuse != null) {
      $result.fuse = fuse;
    }
    if (getPersistentStats != null) {
      $result.getPersistentStats = getPersistentStats;
    }
    if (getConnections != null) {
      $result.getConnections = getConnections;
    }
    if (startSpeedtest != null) {
      $result.startSpeedtest = startSpeedtest;
    }
    if (getSpeedtestStatus != null) {
      $result.getSpeedtestStatus = getSpeedtestStatus;
    }
    if (reportClientSpeedtest != null) {
      $result.reportClientSpeedtest = reportClientSpeedtest;
    }
    if (initiateRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.initiateRemoteSsh = initiateRemoteSsh;
    }
    if (selfTest != null) {
      $result.selfTest = selfTest;
    }
    if (setTestMode != null) {
      $result.setTestMode = setTestMode;
    }
    if (softwareUpdate != null) {
      $result.softwareUpdate = softwareUpdate;
    }
    if (enableDebugTelem != null) {
      $result.enableDebugTelem = enableDebugTelem;
    }
    if (iqCapture != null) {
      $result.iqCapture = iqCapture;
    }
    if (dishStow != null) {
      $result.dishStow = dishStow;
    }
    if (dishGetContext != null) {
      $result.dishGetContext = dishGetContext;
    }
    if (dishSetEmc != null) {
      $result.dishSetEmc = dishSetEmc;
    }
    if (dishGetObstructionMap != null) {
      $result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishGetEmc != null) {
      $result.dishGetEmc = dishGetEmc;
    }
    if (dishSetConfig != null) {
      $result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      $result.dishGetConfig = dishGetConfig;
    }
    if (startDishSelfTest != null) {
      $result.startDishSelfTest = startDishSelfTest;
    }
    if (dishPowerSave != null) {
      $result.dishPowerSave = dishPowerSave;
    }
    if (dishInhibitGps != null) {
      $result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      $result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      $result.wifiGetClients = wifiGetClients;
    }
    if (wifiSetup != null) {
      $result.wifiSetup = wifiSetup;
    }
    if (wifiGetPingMetrics != null) {
      $result.wifiGetPingMetrics = wifiGetPingMetrics;
    }
    if (wifiGetDiagnostics != null) {
      $result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      $result.wifiGetConfig = wifiGetConfig;
    }
    if (wifiSetMeshDeviceTrust != null) {
      $result.wifiSetMeshDeviceTrust = wifiSetMeshDeviceTrust;
    }
    if (wifiSetMeshConfig != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.wifiSetMeshConfig = wifiSetMeshConfig;
    }
    if (wifiGetClientHistory != null) {
      $result.wifiGetClientHistory = wifiGetClientHistory;
    }
    if (wifiSetAviationConformed != null) {
      $result.wifiSetAviationConformed = wifiSetAviationConformed;
    }
    if (wifiSetClientGivenName != null) {
      $result.wifiSetClientGivenName = wifiSetClientGivenName;
    }
    if (wifiSelfTest != null) {
      $result.wifiSelfTest = wifiSelfTest;
    }
    if (wifiCalibrationMode != null) {
      $result.wifiCalibrationMode = wifiCalibrationMode;
    }
    if (transceiverIfLoopbackTest != null) {
      $result.transceiverIfLoopbackTest = transceiverIfLoopbackTest;
    }
    if (transceiverGetStatus != null) {
      $result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      $result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return $result;
  }
  Request._() : super();
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Request_Request> _Request_RequestByTag = {
    15 : Request_Request.signedRequest,
    1001 : Request_Request.reboot,
    1003 : Request_Request.speedTest,
    1004 : Request_Request.getStatus,
    1005 : Request_Request.authenticate,
    1006 : Request_Request.getNextId,
    1007 : Request_Request.getHistory,
    1008 : Request_Request.getDeviceInfo,
    1009 : Request_Request.getPing,
    1010 : Request_Request.setTrustedKeys,
    1011 : Request_Request.factoryReset,
    1012 : Request_Request.getLog,
    1013 : Request_Request.setSku,
    1014 : Request_Request.update,
    1015 : Request_Request.getNetworkInterfaces,
    1016 : Request_Request.pingHost,
    1017 : Request_Request.getLocation,
    1019 : Request_Request.getHeapDump,
    1020 : Request_Request.restartControl,
    1021 : Request_Request.fuse,
    1022 : Request_Request.getPersistentStats,
    1023 : Request_Request.getConnections,
    1027 : Request_Request.startSpeedtest,
    1028 : Request_Request.getSpeedtestStatus,
    1029 : Request_Request.reportClientSpeedtest,
    1030 : Request_Request.initiateRemoteSsh,
    1031 : Request_Request.selfTest,
    1032 : Request_Request.setTestMode,
    1033 : Request_Request.softwareUpdate,
    1034 : Request_Request.enableDebugTelem,
    1035 : Request_Request.iqCapture,
    2002 : Request_Request.dishStow,
    2003 : Request_Request.dishGetContext,
    2007 : Request_Request.dishSetEmc,
    2008 : Request_Request.dishGetObstructionMap,
    2009 : Request_Request.dishGetEmc,
    2010 : Request_Request.dishSetConfig,
    2011 : Request_Request.dishGetConfig,
    2012 : Request_Request.startDishSelfTest,
    2013 : Request_Request.dishPowerSave,
    2014 : Request_Request.dishInhibitGps,
    3001 : Request_Request.wifiSetConfig,
    3002 : Request_Request.wifiGetClients,
    3003 : Request_Request.wifiSetup,
    3007 : Request_Request.wifiGetPingMetrics,
    3008 : Request_Request.wifiGetDiagnostics,
    3009 : Request_Request.wifiGetConfig,
    3012 : Request_Request.wifiSetMeshDeviceTrust,
    3013 : Request_Request.wifiSetMeshConfig,
    3015 : Request_Request.wifiGetClientHistory,
    3016 : Request_Request.wifiSetAviationConformed,
    3017 : Request_Request.wifiSetClientGivenName,
    3018 : Request_Request.wifiSelfTest,
    3019 : Request_Request.wifiCalibrationMode,
    4001 : Request_Request.transceiverIfLoopbackTest,
    4003 : Request_Request.transceiverGetStatus,
    4004 : Request_Request.transceiverGetTelemetry,
    0 : Request_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Request', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [15, 1001, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1022, 1023, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 2002, 2003, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 3001, 3002, 3003, 3007, 3008, 3009, 3012, 3013, 3015, 3016, 3017, 3018, 3019, 4001, 4003, 4004])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(13, _omitFieldNames ? '' : 'targetId')
    ..a<$fixnum.Int64>(14, _omitFieldNames ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SignedData>(15, _omitFieldNames ? '' : 'signedRequest', subBuilder: SignedData.create)
    ..aOM<RebootRequest>(1001, _omitFieldNames ? '' : 'reboot', subBuilder: RebootRequest.create)
    ..aOM<SpeedTestRequest>(1003, _omitFieldNames ? '' : 'speedTest', subBuilder: SpeedTestRequest.create)
    ..aOM<GetStatusRequest>(1004, _omitFieldNames ? '' : 'getStatus', subBuilder: GetStatusRequest.create)
    ..aOM<AuthenticateRequest>(1005, _omitFieldNames ? '' : 'authenticate', subBuilder: AuthenticateRequest.create)
    ..aOM<GetNextIdRequest>(1006, _omitFieldNames ? '' : 'getNextId', subBuilder: GetNextIdRequest.create)
    ..aOM<GetHistoryRequest>(1007, _omitFieldNames ? '' : 'getHistory', subBuilder: GetHistoryRequest.create)
    ..aOM<GetDeviceInfoRequest>(1008, _omitFieldNames ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoRequest.create)
    ..aOM<GetPingRequest>(1009, _omitFieldNames ? '' : 'getPing', subBuilder: GetPingRequest.create)
    ..aOM<SetTrustedKeysRequest>(1010, _omitFieldNames ? '' : 'setTrustedKeys', subBuilder: SetTrustedKeysRequest.create)
    ..aOM<FactoryResetRequest>(1011, _omitFieldNames ? '' : 'factoryReset', subBuilder: FactoryResetRequest.create)
    ..aOM<GetLogRequest>(1012, _omitFieldNames ? '' : 'getLog', subBuilder: GetLogRequest.create)
    ..aOM<SetSkuRequest>(1013, _omitFieldNames ? '' : 'setSku', subBuilder: SetSkuRequest.create)
    ..aOM<UpdateRequest>(1014, _omitFieldNames ? '' : 'update', subBuilder: UpdateRequest.create)
    ..aOM<GetNetworkInterfacesRequest>(1015, _omitFieldNames ? '' : 'getNetworkInterfaces', subBuilder: GetNetworkInterfacesRequest.create)
    ..aOM<PingHostRequest>(1016, _omitFieldNames ? '' : 'pingHost', subBuilder: PingHostRequest.create)
    ..aOM<GetLocationRequest>(1017, _omitFieldNames ? '' : 'getLocation', subBuilder: GetLocationRequest.create)
    ..aOM<GetHeapDumpRequest>(1019, _omitFieldNames ? '' : 'getHeapDump', subBuilder: GetHeapDumpRequest.create)
    ..aOM<RestartControlRequest>(1020, _omitFieldNames ? '' : 'restartControl', subBuilder: RestartControlRequest.create)
    ..aOM<FuseRequest>(1021, _omitFieldNames ? '' : 'fuse', subBuilder: FuseRequest.create)
    ..aOM<GetPersistentStatsRequest>(1022, _omitFieldNames ? '' : 'getPersistentStats', subBuilder: GetPersistentStatsRequest.create)
    ..aOM<GetConnectionsRequest>(1023, _omitFieldNames ? '' : 'getConnections', subBuilder: GetConnectionsRequest.create)
    ..aOM<StartSpeedtestRequest>(1027, _omitFieldNames ? '' : 'startSpeedtest', subBuilder: StartSpeedtestRequest.create)
    ..aOM<GetSpeedtestStatusRequest>(1028, _omitFieldNames ? '' : 'getSpeedtestStatus', subBuilder: GetSpeedtestStatusRequest.create)
    ..aOM<ReportClientSpeedtestRequest>(1029, _omitFieldNames ? '' : 'reportClientSpeedtest', subBuilder: ReportClientSpeedtestRequest.create)
    ..aOM<InitiateRemoteSshRequest>(1030, _omitFieldNames ? '' : 'initiateRemoteSsh', subBuilder: InitiateRemoteSshRequest.create)
    ..aOM<SelfTestRequest>(1031, _omitFieldNames ? '' : 'selfTest', subBuilder: SelfTestRequest.create)
    ..aOM<SetTestModeRequest>(1032, _omitFieldNames ? '' : 'setTestMode', subBuilder: SetTestModeRequest.create)
    ..aOM<SoftwareUpdateRequest>(1033, _omitFieldNames ? '' : 'softwareUpdate', subBuilder: SoftwareUpdateRequest.create)
    ..aOM<EnableDebugTelemRequest>(1034, _omitFieldNames ? '' : 'enableDebugTelem', subBuilder: EnableDebugTelemRequest.create)
    ..aOM<IQCaptureRequest>(1035, _omitFieldNames ? '' : 'iqCapture', subBuilder: IQCaptureRequest.create)
    ..aOM<DishStowRequest>(2002, _omitFieldNames ? '' : 'dishStow', subBuilder: DishStowRequest.create)
    ..aOM<DishGetContextRequest>(2003, _omitFieldNames ? '' : 'dishGetContext', subBuilder: DishGetContextRequest.create)
    ..aOM<DishSetEmcRequest>(2007, _omitFieldNames ? '' : 'dishSetEmc', subBuilder: DishSetEmcRequest.create)
    ..aOM<DishGetObstructionMapRequest>(2008, _omitFieldNames ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapRequest.create)
    ..aOM<DishGetEmcRequest>(2009, _omitFieldNames ? '' : 'dishGetEmc', subBuilder: DishGetEmcRequest.create)
    ..aOM<DishSetConfigRequest>(2010, _omitFieldNames ? '' : 'dishSetConfig', subBuilder: DishSetConfigRequest.create)
    ..aOM<DishGetConfigRequest>(2011, _omitFieldNames ? '' : 'dishGetConfig', subBuilder: DishGetConfigRequest.create)
    ..aOM<StartDishSelfTestRequest>(2012, _omitFieldNames ? '' : 'startDishSelfTest', subBuilder: StartDishSelfTestRequest.create)
    ..aOM<DishPowerSaveRequest>(2013, _omitFieldNames ? '' : 'dishPowerSave', subBuilder: DishPowerSaveRequest.create)
    ..aOM<DishInhibitGpsRequest>(2014, _omitFieldNames ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsRequest.create)
    ..aOM<WifiSetConfigRequest>(3001, _omitFieldNames ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigRequest.create)
    ..aOM<WifiGetClientsRequest>(3002, _omitFieldNames ? '' : 'wifiGetClients', subBuilder: WifiGetClientsRequest.create)
    ..aOM<WifiSetupRequest>(3003, _omitFieldNames ? '' : 'wifiSetup', subBuilder: WifiSetupRequest.create)
    ..aOM<WifiGetPingMetricsRequest>(3007, _omitFieldNames ? '' : 'wifiGetPingMetrics', subBuilder: WifiGetPingMetricsRequest.create)
    ..aOM<WifiGetDiagnosticsRequest>(3008, _omitFieldNames ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsRequest.create)
    ..aOM<WifiGetConfigRequest>(3009, _omitFieldNames ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigRequest.create)
    ..aOM<WifiSetMeshDeviceTrustRequest>(3012, _omitFieldNames ? '' : 'wifiSetMeshDeviceTrust', subBuilder: WifiSetMeshDeviceTrustRequest.create)
    ..aOM<WifiSetMeshConfigRequest>(3013, _omitFieldNames ? '' : 'wifiSetMeshConfig', subBuilder: WifiSetMeshConfigRequest.create)
    ..aOM<WifiGetClientHistoryRequest>(3015, _omitFieldNames ? '' : 'wifiGetClientHistory', subBuilder: WifiGetClientHistoryRequest.create)
    ..aOM<WifiSetAviationConformedRequest>(3016, _omitFieldNames ? '' : 'wifiSetAviationConformed', subBuilder: WifiSetAviationConformedRequest.create)
    ..aOM<WifiSetClientGivenNameRequest>(3017, _omitFieldNames ? '' : 'wifiSetClientGivenName', subBuilder: WifiSetClientGivenNameRequest.create)
    ..aOM<WifiSelfTestRequest>(3018, _omitFieldNames ? '' : 'wifiSelfTest', subBuilder: WifiSelfTestRequest.create)
    ..aOM<WifiCalibrationModeRequest>(3019, _omitFieldNames ? '' : 'wifiCalibrationMode', subBuilder: WifiCalibrationModeRequest.create)
    ..aOM<TransceiverIFLoopbackTestRequest>(4001, _omitFieldNames ? '' : 'transceiverIfLoopbackTest', subBuilder: TransceiverIFLoopbackTestRequest.create)
    ..aOM<TransceiverGetStatusRequest>(4003, _omitFieldNames ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusRequest.create)
    ..aOM<TransceiverGetTelemetryRequest>(4004, _omitFieldNames ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Request whichRequest() => _Request_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(13)
  $core.String get targetId => $_getSZ(1);
  @$pb.TagNumber(13)
  set targetId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(13)
  $core.bool hasTargetId() => $_has(1);
  @$pb.TagNumber(13)
  void clearTargetId() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get epochId => $_getI64(2);
  @$pb.TagNumber(14)
  set epochId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(14)
  $core.bool hasEpochId() => $_has(2);
  @$pb.TagNumber(14)
  void clearEpochId() => clearField(14);

  @$pb.TagNumber(15)
  SignedData get signedRequest => $_getN(3);
  @$pb.TagNumber(15)
  set signedRequest(SignedData v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSignedRequest() => $_has(3);
  @$pb.TagNumber(15)
  void clearSignedRequest() => clearField(15);
  @$pb.TagNumber(15)
  SignedData ensureSignedRequest() => $_ensure(3);

  @$pb.TagNumber(1001)
  RebootRequest get reboot => $_getN(4);
  @$pb.TagNumber(1001)
  set reboot(RebootRequest v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasReboot() => $_has(4);
  @$pb.TagNumber(1001)
  void clearReboot() => clearField(1001);
  @$pb.TagNumber(1001)
  RebootRequest ensureReboot() => $_ensure(4);

  @$pb.TagNumber(1003)
  SpeedTestRequest get speedTest => $_getN(5);
  @$pb.TagNumber(1003)
  set speedTest(SpeedTestRequest v) { setField(1003, v); }
  @$pb.TagNumber(1003)
  $core.bool hasSpeedTest() => $_has(5);
  @$pb.TagNumber(1003)
  void clearSpeedTest() => clearField(1003);
  @$pb.TagNumber(1003)
  SpeedTestRequest ensureSpeedTest() => $_ensure(5);

  @$pb.TagNumber(1004)
  GetStatusRequest get getStatus => $_getN(6);
  @$pb.TagNumber(1004)
  set getStatus(GetStatusRequest v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetStatus() => $_has(6);
  @$pb.TagNumber(1004)
  void clearGetStatus() => clearField(1004);
  @$pb.TagNumber(1004)
  GetStatusRequest ensureGetStatus() => $_ensure(6);

  @$pb.TagNumber(1005)
  AuthenticateRequest get authenticate => $_getN(7);
  @$pb.TagNumber(1005)
  set authenticate(AuthenticateRequest v) { setField(1005, v); }
  @$pb.TagNumber(1005)
  $core.bool hasAuthenticate() => $_has(7);
  @$pb.TagNumber(1005)
  void clearAuthenticate() => clearField(1005);
  @$pb.TagNumber(1005)
  AuthenticateRequest ensureAuthenticate() => $_ensure(7);

  @$pb.TagNumber(1006)
  GetNextIdRequest get getNextId => $_getN(8);
  @$pb.TagNumber(1006)
  set getNextId(GetNextIdRequest v) { setField(1006, v); }
  @$pb.TagNumber(1006)
  $core.bool hasGetNextId() => $_has(8);
  @$pb.TagNumber(1006)
  void clearGetNextId() => clearField(1006);
  @$pb.TagNumber(1006)
  GetNextIdRequest ensureGetNextId() => $_ensure(8);

  @$pb.TagNumber(1007)
  GetHistoryRequest get getHistory => $_getN(9);
  @$pb.TagNumber(1007)
  set getHistory(GetHistoryRequest v) { setField(1007, v); }
  @$pb.TagNumber(1007)
  $core.bool hasGetHistory() => $_has(9);
  @$pb.TagNumber(1007)
  void clearGetHistory() => clearField(1007);
  @$pb.TagNumber(1007)
  GetHistoryRequest ensureGetHistory() => $_ensure(9);

  @$pb.TagNumber(1008)
  GetDeviceInfoRequest get getDeviceInfo => $_getN(10);
  @$pb.TagNumber(1008)
  set getDeviceInfo(GetDeviceInfoRequest v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasGetDeviceInfo() => $_has(10);
  @$pb.TagNumber(1008)
  void clearGetDeviceInfo() => clearField(1008);
  @$pb.TagNumber(1008)
  GetDeviceInfoRequest ensureGetDeviceInfo() => $_ensure(10);

  @$pb.TagNumber(1009)
  GetPingRequest get getPing => $_getN(11);
  @$pb.TagNumber(1009)
  set getPing(GetPingRequest v) { setField(1009, v); }
  @$pb.TagNumber(1009)
  $core.bool hasGetPing() => $_has(11);
  @$pb.TagNumber(1009)
  void clearGetPing() => clearField(1009);
  @$pb.TagNumber(1009)
  GetPingRequest ensureGetPing() => $_ensure(11);

  @$pb.TagNumber(1010)
  SetTrustedKeysRequest get setTrustedKeys => $_getN(12);
  @$pb.TagNumber(1010)
  set setTrustedKeys(SetTrustedKeysRequest v) { setField(1010, v); }
  @$pb.TagNumber(1010)
  $core.bool hasSetTrustedKeys() => $_has(12);
  @$pb.TagNumber(1010)
  void clearSetTrustedKeys() => clearField(1010);
  @$pb.TagNumber(1010)
  SetTrustedKeysRequest ensureSetTrustedKeys() => $_ensure(12);

  @$pb.TagNumber(1011)
  FactoryResetRequest get factoryReset => $_getN(13);
  @$pb.TagNumber(1011)
  set factoryReset(FactoryResetRequest v) { setField(1011, v); }
  @$pb.TagNumber(1011)
  $core.bool hasFactoryReset() => $_has(13);
  @$pb.TagNumber(1011)
  void clearFactoryReset() => clearField(1011);
  @$pb.TagNumber(1011)
  FactoryResetRequest ensureFactoryReset() => $_ensure(13);

  @$pb.TagNumber(1012)
  GetLogRequest get getLog => $_getN(14);
  @$pb.TagNumber(1012)
  set getLog(GetLogRequest v) { setField(1012, v); }
  @$pb.TagNumber(1012)
  $core.bool hasGetLog() => $_has(14);
  @$pb.TagNumber(1012)
  void clearGetLog() => clearField(1012);
  @$pb.TagNumber(1012)
  GetLogRequest ensureGetLog() => $_ensure(14);

  @$pb.TagNumber(1013)
  SetSkuRequest get setSku => $_getN(15);
  @$pb.TagNumber(1013)
  set setSku(SetSkuRequest v) { setField(1013, v); }
  @$pb.TagNumber(1013)
  $core.bool hasSetSku() => $_has(15);
  @$pb.TagNumber(1013)
  void clearSetSku() => clearField(1013);
  @$pb.TagNumber(1013)
  SetSkuRequest ensureSetSku() => $_ensure(15);

  @$pb.TagNumber(1014)
  UpdateRequest get update => $_getN(16);
  @$pb.TagNumber(1014)
  set update(UpdateRequest v) { setField(1014, v); }
  @$pb.TagNumber(1014)
  $core.bool hasUpdate() => $_has(16);
  @$pb.TagNumber(1014)
  void clearUpdate() => clearField(1014);
  @$pb.TagNumber(1014)
  UpdateRequest ensureUpdate() => $_ensure(16);

  @$pb.TagNumber(1015)
  GetNetworkInterfacesRequest get getNetworkInterfaces => $_getN(17);
  @$pb.TagNumber(1015)
  set getNetworkInterfaces(GetNetworkInterfacesRequest v) { setField(1015, v); }
  @$pb.TagNumber(1015)
  $core.bool hasGetNetworkInterfaces() => $_has(17);
  @$pb.TagNumber(1015)
  void clearGetNetworkInterfaces() => clearField(1015);
  @$pb.TagNumber(1015)
  GetNetworkInterfacesRequest ensureGetNetworkInterfaces() => $_ensure(17);

  @$pb.TagNumber(1016)
  PingHostRequest get pingHost => $_getN(18);
  @$pb.TagNumber(1016)
  set pingHost(PingHostRequest v) { setField(1016, v); }
  @$pb.TagNumber(1016)
  $core.bool hasPingHost() => $_has(18);
  @$pb.TagNumber(1016)
  void clearPingHost() => clearField(1016);
  @$pb.TagNumber(1016)
  PingHostRequest ensurePingHost() => $_ensure(18);

  @$pb.TagNumber(1017)
  GetLocationRequest get getLocation => $_getN(19);
  @$pb.TagNumber(1017)
  set getLocation(GetLocationRequest v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGetLocation() => $_has(19);
  @$pb.TagNumber(1017)
  void clearGetLocation() => clearField(1017);
  @$pb.TagNumber(1017)
  GetLocationRequest ensureGetLocation() => $_ensure(19);

  @$pb.TagNumber(1019)
  GetHeapDumpRequest get getHeapDump => $_getN(20);
  @$pb.TagNumber(1019)
  set getHeapDump(GetHeapDumpRequest v) { setField(1019, v); }
  @$pb.TagNumber(1019)
  $core.bool hasGetHeapDump() => $_has(20);
  @$pb.TagNumber(1019)
  void clearGetHeapDump() => clearField(1019);
  @$pb.TagNumber(1019)
  GetHeapDumpRequest ensureGetHeapDump() => $_ensure(20);

  @$pb.TagNumber(1020)
  RestartControlRequest get restartControl => $_getN(21);
  @$pb.TagNumber(1020)
  set restartControl(RestartControlRequest v) { setField(1020, v); }
  @$pb.TagNumber(1020)
  $core.bool hasRestartControl() => $_has(21);
  @$pb.TagNumber(1020)
  void clearRestartControl() => clearField(1020);
  @$pb.TagNumber(1020)
  RestartControlRequest ensureRestartControl() => $_ensure(21);

  @$pb.TagNumber(1021)
  FuseRequest get fuse => $_getN(22);
  @$pb.TagNumber(1021)
  set fuse(FuseRequest v) { setField(1021, v); }
  @$pb.TagNumber(1021)
  $core.bool hasFuse() => $_has(22);
  @$pb.TagNumber(1021)
  void clearFuse() => clearField(1021);
  @$pb.TagNumber(1021)
  FuseRequest ensureFuse() => $_ensure(22);

  @$pb.TagNumber(1022)
  GetPersistentStatsRequest get getPersistentStats => $_getN(23);
  @$pb.TagNumber(1022)
  set getPersistentStats(GetPersistentStatsRequest v) { setField(1022, v); }
  @$pb.TagNumber(1022)
  $core.bool hasGetPersistentStats() => $_has(23);
  @$pb.TagNumber(1022)
  void clearGetPersistentStats() => clearField(1022);
  @$pb.TagNumber(1022)
  GetPersistentStatsRequest ensureGetPersistentStats() => $_ensure(23);

  @$pb.TagNumber(1023)
  GetConnectionsRequest get getConnections => $_getN(24);
  @$pb.TagNumber(1023)
  set getConnections(GetConnectionsRequest v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasGetConnections() => $_has(24);
  @$pb.TagNumber(1023)
  void clearGetConnections() => clearField(1023);
  @$pb.TagNumber(1023)
  GetConnectionsRequest ensureGetConnections() => $_ensure(24);

  @$pb.TagNumber(1027)
  StartSpeedtestRequest get startSpeedtest => $_getN(25);
  @$pb.TagNumber(1027)
  set startSpeedtest(StartSpeedtestRequest v) { setField(1027, v); }
  @$pb.TagNumber(1027)
  $core.bool hasStartSpeedtest() => $_has(25);
  @$pb.TagNumber(1027)
  void clearStartSpeedtest() => clearField(1027);
  @$pb.TagNumber(1027)
  StartSpeedtestRequest ensureStartSpeedtest() => $_ensure(25);

  @$pb.TagNumber(1028)
  GetSpeedtestStatusRequest get getSpeedtestStatus => $_getN(26);
  @$pb.TagNumber(1028)
  set getSpeedtestStatus(GetSpeedtestStatusRequest v) { setField(1028, v); }
  @$pb.TagNumber(1028)
  $core.bool hasGetSpeedtestStatus() => $_has(26);
  @$pb.TagNumber(1028)
  void clearGetSpeedtestStatus() => clearField(1028);
  @$pb.TagNumber(1028)
  GetSpeedtestStatusRequest ensureGetSpeedtestStatus() => $_ensure(26);

  @$pb.TagNumber(1029)
  ReportClientSpeedtestRequest get reportClientSpeedtest => $_getN(27);
  @$pb.TagNumber(1029)
  set reportClientSpeedtest(ReportClientSpeedtestRequest v) { setField(1029, v); }
  @$pb.TagNumber(1029)
  $core.bool hasReportClientSpeedtest() => $_has(27);
  @$pb.TagNumber(1029)
  void clearReportClientSpeedtest() => clearField(1029);
  @$pb.TagNumber(1029)
  ReportClientSpeedtestRequest ensureReportClientSpeedtest() => $_ensure(27);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  InitiateRemoteSshRequest get initiateRemoteSsh => $_getN(28);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  set initiateRemoteSsh(InitiateRemoteSshRequest v) { setField(1030, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  $core.bool hasInitiateRemoteSsh() => $_has(28);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  void clearInitiateRemoteSsh() => clearField(1030);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  InitiateRemoteSshRequest ensureInitiateRemoteSsh() => $_ensure(28);

  @$pb.TagNumber(1031)
  SelfTestRequest get selfTest => $_getN(29);
  @$pb.TagNumber(1031)
  set selfTest(SelfTestRequest v) { setField(1031, v); }
  @$pb.TagNumber(1031)
  $core.bool hasSelfTest() => $_has(29);
  @$pb.TagNumber(1031)
  void clearSelfTest() => clearField(1031);
  @$pb.TagNumber(1031)
  SelfTestRequest ensureSelfTest() => $_ensure(29);

  @$pb.TagNumber(1032)
  SetTestModeRequest get setTestMode => $_getN(30);
  @$pb.TagNumber(1032)
  set setTestMode(SetTestModeRequest v) { setField(1032, v); }
  @$pb.TagNumber(1032)
  $core.bool hasSetTestMode() => $_has(30);
  @$pb.TagNumber(1032)
  void clearSetTestMode() => clearField(1032);
  @$pb.TagNumber(1032)
  SetTestModeRequest ensureSetTestMode() => $_ensure(30);

  @$pb.TagNumber(1033)
  SoftwareUpdateRequest get softwareUpdate => $_getN(31);
  @$pb.TagNumber(1033)
  set softwareUpdate(SoftwareUpdateRequest v) { setField(1033, v); }
  @$pb.TagNumber(1033)
  $core.bool hasSoftwareUpdate() => $_has(31);
  @$pb.TagNumber(1033)
  void clearSoftwareUpdate() => clearField(1033);
  @$pb.TagNumber(1033)
  SoftwareUpdateRequest ensureSoftwareUpdate() => $_ensure(31);

  @$pb.TagNumber(1034)
  EnableDebugTelemRequest get enableDebugTelem => $_getN(32);
  @$pb.TagNumber(1034)
  set enableDebugTelem(EnableDebugTelemRequest v) { setField(1034, v); }
  @$pb.TagNumber(1034)
  $core.bool hasEnableDebugTelem() => $_has(32);
  @$pb.TagNumber(1034)
  void clearEnableDebugTelem() => clearField(1034);
  @$pb.TagNumber(1034)
  EnableDebugTelemRequest ensureEnableDebugTelem() => $_ensure(32);

  @$pb.TagNumber(1035)
  IQCaptureRequest get iqCapture => $_getN(33);
  @$pb.TagNumber(1035)
  set iqCapture(IQCaptureRequest v) { setField(1035, v); }
  @$pb.TagNumber(1035)
  $core.bool hasIqCapture() => $_has(33);
  @$pb.TagNumber(1035)
  void clearIqCapture() => clearField(1035);
  @$pb.TagNumber(1035)
  IQCaptureRequest ensureIqCapture() => $_ensure(33);

  @$pb.TagNumber(2002)
  DishStowRequest get dishStow => $_getN(34);
  @$pb.TagNumber(2002)
  set dishStow(DishStowRequest v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasDishStow() => $_has(34);
  @$pb.TagNumber(2002)
  void clearDishStow() => clearField(2002);
  @$pb.TagNumber(2002)
  DishStowRequest ensureDishStow() => $_ensure(34);

  @$pb.TagNumber(2003)
  DishGetContextRequest get dishGetContext => $_getN(35);
  @$pb.TagNumber(2003)
  set dishGetContext(DishGetContextRequest v) { setField(2003, v); }
  @$pb.TagNumber(2003)
  $core.bool hasDishGetContext() => $_has(35);
  @$pb.TagNumber(2003)
  void clearDishGetContext() => clearField(2003);
  @$pb.TagNumber(2003)
  DishGetContextRequest ensureDishGetContext() => $_ensure(35);

  @$pb.TagNumber(2007)
  DishSetEmcRequest get dishSetEmc => $_getN(36);
  @$pb.TagNumber(2007)
  set dishSetEmc(DishSetEmcRequest v) { setField(2007, v); }
  @$pb.TagNumber(2007)
  $core.bool hasDishSetEmc() => $_has(36);
  @$pb.TagNumber(2007)
  void clearDishSetEmc() => clearField(2007);
  @$pb.TagNumber(2007)
  DishSetEmcRequest ensureDishSetEmc() => $_ensure(36);

  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest get dishGetObstructionMap => $_getN(37);
  @$pb.TagNumber(2008)
  set dishGetObstructionMap(DishGetObstructionMapRequest v) { setField(2008, v); }
  @$pb.TagNumber(2008)
  $core.bool hasDishGetObstructionMap() => $_has(37);
  @$pb.TagNumber(2008)
  void clearDishGetObstructionMap() => clearField(2008);
  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest ensureDishGetObstructionMap() => $_ensure(37);

  @$pb.TagNumber(2009)
  DishGetEmcRequest get dishGetEmc => $_getN(38);
  @$pb.TagNumber(2009)
  set dishGetEmc(DishGetEmcRequest v) { setField(2009, v); }
  @$pb.TagNumber(2009)
  $core.bool hasDishGetEmc() => $_has(38);
  @$pb.TagNumber(2009)
  void clearDishGetEmc() => clearField(2009);
  @$pb.TagNumber(2009)
  DishGetEmcRequest ensureDishGetEmc() => $_ensure(38);

  @$pb.TagNumber(2010)
  DishSetConfigRequest get dishSetConfig => $_getN(39);
  @$pb.TagNumber(2010)
  set dishSetConfig(DishSetConfigRequest v) { setField(2010, v); }
  @$pb.TagNumber(2010)
  $core.bool hasDishSetConfig() => $_has(39);
  @$pb.TagNumber(2010)
  void clearDishSetConfig() => clearField(2010);
  @$pb.TagNumber(2010)
  DishSetConfigRequest ensureDishSetConfig() => $_ensure(39);

  @$pb.TagNumber(2011)
  DishGetConfigRequest get dishGetConfig => $_getN(40);
  @$pb.TagNumber(2011)
  set dishGetConfig(DishGetConfigRequest v) { setField(2011, v); }
  @$pb.TagNumber(2011)
  $core.bool hasDishGetConfig() => $_has(40);
  @$pb.TagNumber(2011)
  void clearDishGetConfig() => clearField(2011);
  @$pb.TagNumber(2011)
  DishGetConfigRequest ensureDishGetConfig() => $_ensure(40);

  @$pb.TagNumber(2012)
  StartDishSelfTestRequest get startDishSelfTest => $_getN(41);
  @$pb.TagNumber(2012)
  set startDishSelfTest(StartDishSelfTestRequest v) { setField(2012, v); }
  @$pb.TagNumber(2012)
  $core.bool hasStartDishSelfTest() => $_has(41);
  @$pb.TagNumber(2012)
  void clearStartDishSelfTest() => clearField(2012);
  @$pb.TagNumber(2012)
  StartDishSelfTestRequest ensureStartDishSelfTest() => $_ensure(41);

  @$pb.TagNumber(2013)
  DishPowerSaveRequest get dishPowerSave => $_getN(42);
  @$pb.TagNumber(2013)
  set dishPowerSave(DishPowerSaveRequest v) { setField(2013, v); }
  @$pb.TagNumber(2013)
  $core.bool hasDishPowerSave() => $_has(42);
  @$pb.TagNumber(2013)
  void clearDishPowerSave() => clearField(2013);
  @$pb.TagNumber(2013)
  DishPowerSaveRequest ensureDishPowerSave() => $_ensure(42);

  @$pb.TagNumber(2014)
  DishInhibitGpsRequest get dishInhibitGps => $_getN(43);
  @$pb.TagNumber(2014)
  set dishInhibitGps(DishInhibitGpsRequest v) { setField(2014, v); }
  @$pb.TagNumber(2014)
  $core.bool hasDishInhibitGps() => $_has(43);
  @$pb.TagNumber(2014)
  void clearDishInhibitGps() => clearField(2014);
  @$pb.TagNumber(2014)
  DishInhibitGpsRequest ensureDishInhibitGps() => $_ensure(43);

  @$pb.TagNumber(3001)
  WifiSetConfigRequest get wifiSetConfig => $_getN(44);
  @$pb.TagNumber(3001)
  set wifiSetConfig(WifiSetConfigRequest v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiSetConfig() => $_has(44);
  @$pb.TagNumber(3001)
  void clearWifiSetConfig() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiSetConfigRequest ensureWifiSetConfig() => $_ensure(44);

  @$pb.TagNumber(3002)
  WifiGetClientsRequest get wifiGetClients => $_getN(45);
  @$pb.TagNumber(3002)
  set wifiGetClients(WifiGetClientsRequest v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiGetClients() => $_has(45);
  @$pb.TagNumber(3002)
  void clearWifiGetClients() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiGetClientsRequest ensureWifiGetClients() => $_ensure(45);

  @$pb.TagNumber(3003)
  WifiSetupRequest get wifiSetup => $_getN(46);
  @$pb.TagNumber(3003)
  set wifiSetup(WifiSetupRequest v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasWifiSetup() => $_has(46);
  @$pb.TagNumber(3003)
  void clearWifiSetup() => clearField(3003);
  @$pb.TagNumber(3003)
  WifiSetupRequest ensureWifiSetup() => $_ensure(46);

  @$pb.TagNumber(3007)
  WifiGetPingMetricsRequest get wifiGetPingMetrics => $_getN(47);
  @$pb.TagNumber(3007)
  set wifiGetPingMetrics(WifiGetPingMetricsRequest v) { setField(3007, v); }
  @$pb.TagNumber(3007)
  $core.bool hasWifiGetPingMetrics() => $_has(47);
  @$pb.TagNumber(3007)
  void clearWifiGetPingMetrics() => clearField(3007);
  @$pb.TagNumber(3007)
  WifiGetPingMetricsRequest ensureWifiGetPingMetrics() => $_ensure(47);

  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest get wifiGetDiagnostics => $_getN(48);
  @$pb.TagNumber(3008)
  set wifiGetDiagnostics(WifiGetDiagnosticsRequest v) { setField(3008, v); }
  @$pb.TagNumber(3008)
  $core.bool hasWifiGetDiagnostics() => $_has(48);
  @$pb.TagNumber(3008)
  void clearWifiGetDiagnostics() => clearField(3008);
  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest ensureWifiGetDiagnostics() => $_ensure(48);

  @$pb.TagNumber(3009)
  WifiGetConfigRequest get wifiGetConfig => $_getN(49);
  @$pb.TagNumber(3009)
  set wifiGetConfig(WifiGetConfigRequest v) { setField(3009, v); }
  @$pb.TagNumber(3009)
  $core.bool hasWifiGetConfig() => $_has(49);
  @$pb.TagNumber(3009)
  void clearWifiGetConfig() => clearField(3009);
  @$pb.TagNumber(3009)
  WifiGetConfigRequest ensureWifiGetConfig() => $_ensure(49);

  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustRequest get wifiSetMeshDeviceTrust => $_getN(50);
  @$pb.TagNumber(3012)
  set wifiSetMeshDeviceTrust(WifiSetMeshDeviceTrustRequest v) { setField(3012, v); }
  @$pb.TagNumber(3012)
  $core.bool hasWifiSetMeshDeviceTrust() => $_has(50);
  @$pb.TagNumber(3012)
  void clearWifiSetMeshDeviceTrust() => clearField(3012);
  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustRequest ensureWifiSetMeshDeviceTrust() => $_ensure(50);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigRequest get wifiSetMeshConfig => $_getN(51);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  set wifiSetMeshConfig(WifiSetMeshConfigRequest v) { setField(3013, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  $core.bool hasWifiSetMeshConfig() => $_has(51);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  void clearWifiSetMeshConfig() => clearField(3013);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigRequest ensureWifiSetMeshConfig() => $_ensure(51);

  @$pb.TagNumber(3015)
  WifiGetClientHistoryRequest get wifiGetClientHistory => $_getN(52);
  @$pb.TagNumber(3015)
  set wifiGetClientHistory(WifiGetClientHistoryRequest v) { setField(3015, v); }
  @$pb.TagNumber(3015)
  $core.bool hasWifiGetClientHistory() => $_has(52);
  @$pb.TagNumber(3015)
  void clearWifiGetClientHistory() => clearField(3015);
  @$pb.TagNumber(3015)
  WifiGetClientHistoryRequest ensureWifiGetClientHistory() => $_ensure(52);

  @$pb.TagNumber(3016)
  WifiSetAviationConformedRequest get wifiSetAviationConformed => $_getN(53);
  @$pb.TagNumber(3016)
  set wifiSetAviationConformed(WifiSetAviationConformedRequest v) { setField(3016, v); }
  @$pb.TagNumber(3016)
  $core.bool hasWifiSetAviationConformed() => $_has(53);
  @$pb.TagNumber(3016)
  void clearWifiSetAviationConformed() => clearField(3016);
  @$pb.TagNumber(3016)
  WifiSetAviationConformedRequest ensureWifiSetAviationConformed() => $_ensure(53);

  @$pb.TagNumber(3017)
  WifiSetClientGivenNameRequest get wifiSetClientGivenName => $_getN(54);
  @$pb.TagNumber(3017)
  set wifiSetClientGivenName(WifiSetClientGivenNameRequest v) { setField(3017, v); }
  @$pb.TagNumber(3017)
  $core.bool hasWifiSetClientGivenName() => $_has(54);
  @$pb.TagNumber(3017)
  void clearWifiSetClientGivenName() => clearField(3017);
  @$pb.TagNumber(3017)
  WifiSetClientGivenNameRequest ensureWifiSetClientGivenName() => $_ensure(54);

  @$pb.TagNumber(3018)
  WifiSelfTestRequest get wifiSelfTest => $_getN(55);
  @$pb.TagNumber(3018)
  set wifiSelfTest(WifiSelfTestRequest v) { setField(3018, v); }
  @$pb.TagNumber(3018)
  $core.bool hasWifiSelfTest() => $_has(55);
  @$pb.TagNumber(3018)
  void clearWifiSelfTest() => clearField(3018);
  @$pb.TagNumber(3018)
  WifiSelfTestRequest ensureWifiSelfTest() => $_ensure(55);

  @$pb.TagNumber(3019)
  WifiCalibrationModeRequest get wifiCalibrationMode => $_getN(56);
  @$pb.TagNumber(3019)
  set wifiCalibrationMode(WifiCalibrationModeRequest v) { setField(3019, v); }
  @$pb.TagNumber(3019)
  $core.bool hasWifiCalibrationMode() => $_has(56);
  @$pb.TagNumber(3019)
  void clearWifiCalibrationMode() => clearField(3019);
  @$pb.TagNumber(3019)
  WifiCalibrationModeRequest ensureWifiCalibrationMode() => $_ensure(56);

  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestRequest get transceiverIfLoopbackTest => $_getN(57);
  @$pb.TagNumber(4001)
  set transceiverIfLoopbackTest(TransceiverIFLoopbackTestRequest v) { setField(4001, v); }
  @$pb.TagNumber(4001)
  $core.bool hasTransceiverIfLoopbackTest() => $_has(57);
  @$pb.TagNumber(4001)
  void clearTransceiverIfLoopbackTest() => clearField(4001);
  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestRequest ensureTransceiverIfLoopbackTest() => $_ensure(57);

  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest get transceiverGetStatus => $_getN(58);
  @$pb.TagNumber(4003)
  set transceiverGetStatus(TransceiverGetStatusRequest v) { setField(4003, v); }
  @$pb.TagNumber(4003)
  $core.bool hasTransceiverGetStatus() => $_has(58);
  @$pb.TagNumber(4003)
  void clearTransceiverGetStatus() => clearField(4003);
  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest ensureTransceiverGetStatus() => $_ensure(58);

  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest get transceiverGetTelemetry => $_getN(59);
  @$pb.TagNumber(4004)
  set transceiverGetTelemetry(TransceiverGetTelemetryRequest v) { setField(4004, v); }
  @$pb.TagNumber(4004)
  $core.bool hasTransceiverGetTelemetry() => $_has(59);
  @$pb.TagNumber(4004)
  void clearTransceiverGetTelemetry() => clearField(4004);
  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest ensureTransceiverGetTelemetry() => $_ensure(59);
}

/// SpaceX.API.Device.SignedData is a message:
class SignedData extends $pb.GeneratedMessage {
  factory SignedData({
    $core.List<$core.int>? data,
    $core.List<$core.int>? signature,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    return $result;
  }
  SignedData._() : super();
  factory SignedData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignedData', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedData clone() => SignedData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedData copyWith(void Function(SignedData) updates) => super.copyWith((message) => updates(message as SignedData)) as SignedData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignedData create() => SignedData._();
  SignedData createEmptyInstance() => create();
  static $pb.PbList<SignedData> createRepeated() => $pb.PbList<SignedData>();
  @$core.pragma('dart2js:noInline')
  static SignedData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedData>(create);
  static SignedData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

/// SpaceX.API.Device.RebootRequest is a message:
class RebootRequest extends $pb.GeneratedMessage {
  factory RebootRequest() => create();
  RebootRequest._() : super();
  factory RebootRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RebootRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootRequest clone() => RebootRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootRequest copyWith(void Function(RebootRequest) updates) => super.copyWith((message) => updates(message as RebootRequest)) as RebootRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RebootRequest create() => RebootRequest._();
  RebootRequest createEmptyInstance() => create();
  static $pb.PbList<RebootRequest> createRepeated() => $pb.PbList<RebootRequest>();
  @$core.pragma('dart2js:noInline')
  static RebootRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootRequest>(create);
  static RebootRequest? _defaultInstance;
}

/// SpaceX.API.Device.SpeedTestRequest is a message:
class SpeedTestRequest extends $pb.GeneratedMessage {
  factory SpeedTestRequest({
    SpeedTestStats? clientSpeedtest,
    $core.double? clientRssi,
    ClientPlatform? clientPlatform,
    $core.int? id,
  }) {
    final $result = create();
    if (clientSpeedtest != null) {
      $result.clientSpeedtest = clientSpeedtest;
    }
    if (clientRssi != null) {
      $result.clientRssi = clientRssi;
    }
    if (clientPlatform != null) {
      $result.clientPlatform = clientPlatform;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SpeedTestRequest._() : super();
  factory SpeedTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SpeedTestStats>(1, _omitFieldNames ? '' : 'clientSpeedtest', subBuilder: SpeedTestStats.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'clientRssi', $pb.PbFieldType.OF)
    ..aOM<ClientPlatform>(3, _omitFieldNames ? '' : 'clientPlatform', subBuilder: ClientPlatform.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestRequest clone() => SpeedTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestRequest copyWith(void Function(SpeedTestRequest) updates) => super.copyWith((message) => updates(message as SpeedTestRequest)) as SpeedTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedTestRequest create() => SpeedTestRequest._();
  SpeedTestRequest createEmptyInstance() => create();
  static $pb.PbList<SpeedTestRequest> createRepeated() => $pb.PbList<SpeedTestRequest>();
  @$core.pragma('dart2js:noInline')
  static SpeedTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedTestRequest>(create);
  static SpeedTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SpeedTestStats get clientSpeedtest => $_getN(0);
  @$pb.TagNumber(1)
  set clientSpeedtest(SpeedTestStats v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientSpeedtest() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientSpeedtest() => clearField(1);
  @$pb.TagNumber(1)
  SpeedTestStats ensureClientSpeedtest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get clientRssi => $_getN(1);
  @$pb.TagNumber(2)
  set clientRssi($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientRssi() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientRssi() => clearField(2);

  @$pb.TagNumber(3)
  ClientPlatform get clientPlatform => $_getN(2);
  @$pb.TagNumber(3)
  set clientPlatform(ClientPlatform v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientPlatform() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientPlatform() => clearField(3);
  @$pb.TagNumber(3)
  ClientPlatform ensureClientPlatform() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get id => $_getIZ(3);
  @$pb.TagNumber(4)
  set id($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);
}

/// SpaceX.API.Device.SpeedTestStats is a message:
class SpeedTestStats extends $pb.GeneratedMessage {
  factory SpeedTestStats({
    $core.double? uploadMbps,
    $core.double? downloadMbps,
  @$core.Deprecated('This field is deprecated.')
    $core.double? latencyMs,
    $fixnum.Int64? startTime,
    $fixnum.Int64? uploadStartTime,
    $fixnum.Int64? downloadStartTime,
    SpeedTestStats_Target? target,
    $core.int? tcpStreams,
  }) {
    final $result = create();
    if (uploadMbps != null) {
      $result.uploadMbps = uploadMbps;
    }
    if (downloadMbps != null) {
      $result.downloadMbps = downloadMbps;
    }
    if (latencyMs != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.latencyMs = latencyMs;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (uploadStartTime != null) {
      $result.uploadStartTime = uploadStartTime;
    }
    if (downloadStartTime != null) {
      $result.downloadStartTime = downloadStartTime;
    }
    if (target != null) {
      $result.target = target;
    }
    if (tcpStreams != null) {
      $result.tcpStreams = tcpStreams;
    }
    return $result;
  }
  SpeedTestStats._() : super();
  factory SpeedTestStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedTestStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'uploadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'downloadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'latencyMs', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'startTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(5, _omitFieldNames ? '' : 'uploadStartTime')
    ..aInt64(6, _omitFieldNames ? '' : 'downloadStartTime')
    ..e<SpeedTestStats_Target>(7, _omitFieldNames ? '' : 'target', $pb.PbFieldType.OE, defaultOrMaker: SpeedTestStats_Target.UNKNOWN, valueOf: SpeedTestStats_Target.valueOf, enumValues: SpeedTestStats_Target.values)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'tcpStreams', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestStats clone() => SpeedTestStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestStats copyWith(void Function(SpeedTestStats) updates) => super.copyWith((message) => updates(message as SpeedTestStats)) as SpeedTestStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedTestStats create() => SpeedTestStats._();
  SpeedTestStats createEmptyInstance() => create();
  static $pb.PbList<SpeedTestStats> createRepeated() => $pb.PbList<SpeedTestStats>();
  @$core.pragma('dart2js:noInline')
  static SpeedTestStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedTestStats>(create);
  static SpeedTestStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get uploadMbps => $_getN(0);
  @$pb.TagNumber(1)
  set uploadMbps($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUploadMbps() => $_has(0);
  @$pb.TagNumber(1)
  void clearUploadMbps() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get downloadMbps => $_getN(1);
  @$pb.TagNumber(2)
  set downloadMbps($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDownloadMbps() => $_has(1);
  @$pb.TagNumber(2)
  void clearDownloadMbps() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.double get latencyMs => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set latencyMs($core.double v) { $_setFloat(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasLatencyMs() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearLatencyMs() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startTime => $_getI64(3);
  @$pb.TagNumber(4)
  set startTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uploadStartTime => $_getI64(4);
  @$pb.TagNumber(5)
  set uploadStartTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUploadStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUploadStartTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get downloadStartTime => $_getI64(5);
  @$pb.TagNumber(6)
  set downloadStartTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDownloadStartTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearDownloadStartTime() => clearField(6);

  @$pb.TagNumber(7)
  SpeedTestStats_Target get target => $_getN(6);
  @$pb.TagNumber(7)
  set target(SpeedTestStats_Target v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTarget() => $_has(6);
  @$pb.TagNumber(7)
  void clearTarget() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get tcpStreams => $_getIZ(7);
  @$pb.TagNumber(8)
  set tcpStreams($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTcpStreams() => $_has(7);
  @$pb.TagNumber(8)
  void clearTcpStreams() => clearField(8);
}

/// SpaceX.API.Device.ClientPlatform is a message:
class ClientPlatform extends $pb.GeneratedMessage {
  factory ClientPlatform({
    ClientPlatform_Platform? platform,
    $core.double? majorVersion,
    $core.double? minorVersion,
  }) {
    final $result = create();
    if (platform != null) {
      $result.platform = platform;
    }
    if (majorVersion != null) {
      $result.majorVersion = majorVersion;
    }
    if (minorVersion != null) {
      $result.minorVersion = minorVersion;
    }
    return $result;
  }
  ClientPlatform._() : super();
  factory ClientPlatform.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientPlatform.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientPlatform', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<ClientPlatform_Platform>(1, _omitFieldNames ? '' : 'platform', $pb.PbFieldType.OE, defaultOrMaker: ClientPlatform_Platform.UNKNOWN, valueOf: ClientPlatform_Platform.valueOf, enumValues: ClientPlatform_Platform.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'majorVersion', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'minorVersion', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientPlatform clone() => ClientPlatform()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientPlatform copyWith(void Function(ClientPlatform) updates) => super.copyWith((message) => updates(message as ClientPlatform)) as ClientPlatform;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientPlatform create() => ClientPlatform._();
  ClientPlatform createEmptyInstance() => create();
  static $pb.PbList<ClientPlatform> createRepeated() => $pb.PbList<ClientPlatform>();
  @$core.pragma('dart2js:noInline')
  static ClientPlatform getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientPlatform>(create);
  static ClientPlatform? _defaultInstance;

  @$pb.TagNumber(1)
  ClientPlatform_Platform get platform => $_getN(0);
  @$pb.TagNumber(1)
  set platform(ClientPlatform_Platform v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlatform() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlatform() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get majorVersion => $_getN(1);
  @$pb.TagNumber(2)
  set majorVersion($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMajorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get minorVersion => $_getN(2);
  @$pb.TagNumber(3)
  set minorVersion($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinorVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinorVersion() => clearField(3);
}

/// SpaceX.API.Device.GetStatusRequest is a message:
class GetStatusRequest extends $pb.GeneratedMessage {
  factory GetStatusRequest() => create();
  GetStatusRequest._() : super();
  factory GetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusRequest clone() => GetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusRequest copyWith(void Function(GetStatusRequest) updates) => super.copyWith((message) => updates(message as GetStatusRequest)) as GetStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStatusRequest create() => GetStatusRequest._();
  GetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetStatusRequest> createRepeated() => $pb.PbList<GetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusRequest>(create);
  static GetStatusRequest? _defaultInstance;
}

/// SpaceX.API.Device.AuthenticateRequest is a message:
class AuthenticateRequest extends $pb.GeneratedMessage {
  factory AuthenticateRequest({
    SignedData? challenge,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    return $result;
  }
  AuthenticateRequest._() : super();
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthenticateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SignedData>(1, _omitFieldNames ? '' : 'challenge', subBuilder: SignedData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) => super.copyWith((message) => updates(message as AuthenticateRequest)) as AuthenticateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest create() => AuthenticateRequest._();
  AuthenticateRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateRequest> createRepeated() => $pb.PbList<AuthenticateRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateRequest>(create);
  static AuthenticateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SignedData get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge(SignedData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
  @$pb.TagNumber(1)
  SignedData ensureChallenge() => $_ensure(0);
}

/// SpaceX.API.Device.GetNextIdRequest is a message:
class GetNextIdRequest extends $pb.GeneratedMessage {
  factory GetNextIdRequest() => create();
  GetNextIdRequest._() : super();
  factory GetNextIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNextIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNextIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNextIdRequest clone() => GetNextIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNextIdRequest copyWith(void Function(GetNextIdRequest) updates) => super.copyWith((message) => updates(message as GetNextIdRequest)) as GetNextIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNextIdRequest create() => GetNextIdRequest._();
  GetNextIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetNextIdRequest> createRepeated() => $pb.PbList<GetNextIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNextIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNextIdRequest>(create);
  static GetNextIdRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetHistoryRequest is a message:
class GetHistoryRequest extends $pb.GeneratedMessage {
  factory GetHistoryRequest() => create();
  GetHistoryRequest._() : super();
  factory GetHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHistoryRequest clone() => GetHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHistoryRequest copyWith(void Function(GetHistoryRequest) updates) => super.copyWith((message) => updates(message as GetHistoryRequest)) as GetHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest create() => GetHistoryRequest._();
  GetHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetHistoryRequest> createRepeated() => $pb.PbList<GetHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHistoryRequest>(create);
  static GetHistoryRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetDeviceInfoRequest is a message:
class GetDeviceInfoRequest extends $pb.GeneratedMessage {
  factory GetDeviceInfoRequest() => create();
  GetDeviceInfoRequest._() : super();
  factory GetDeviceInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest clone() => GetDeviceInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest copyWith(void Function(GetDeviceInfoRequest) updates) => super.copyWith((message) => updates(message as GetDeviceInfoRequest)) as GetDeviceInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest create() => GetDeviceInfoRequest._();
  GetDeviceInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetDeviceInfoRequest> createRepeated() => $pb.PbList<GetDeviceInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceInfoRequest>(create);
  static GetDeviceInfoRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetPingRequest is a message:
class GetPingRequest extends $pb.GeneratedMessage {
  factory GetPingRequest() => create();
  GetPingRequest._() : super();
  factory GetPingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPingRequest clone() => GetPingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPingRequest copyWith(void Function(GetPingRequest) updates) => super.copyWith((message) => updates(message as GetPingRequest)) as GetPingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPingRequest create() => GetPingRequest._();
  GetPingRequest createEmptyInstance() => create();
  static $pb.PbList<GetPingRequest> createRepeated() => $pb.PbList<GetPingRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPingRequest>(create);
  static GetPingRequest? _defaultInstance;
}

/// SpaceX.API.Device.SetTrustedKeysRequest is a message:
class SetTrustedKeysRequest extends $pb.GeneratedMessage {
  factory SetTrustedKeysRequest({
    $core.Iterable<PublicKey>? keys,
  }) {
    final $result = create();
    if (keys != null) {
      $result.keys.addAll(keys);
    }
    return $result;
  }
  SetTrustedKeysRequest._() : super();
  factory SetTrustedKeysRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTrustedKeysRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTrustedKeysRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<PublicKey>(1, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PM, subBuilder: PublicKey.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTrustedKeysRequest clone() => SetTrustedKeysRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTrustedKeysRequest copyWith(void Function(SetTrustedKeysRequest) updates) => super.copyWith((message) => updates(message as SetTrustedKeysRequest)) as SetTrustedKeysRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysRequest create() => SetTrustedKeysRequest._();
  SetTrustedKeysRequest createEmptyInstance() => create();
  static $pb.PbList<SetTrustedKeysRequest> createRepeated() => $pb.PbList<SetTrustedKeysRequest>();
  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTrustedKeysRequest>(create);
  static SetTrustedKeysRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PublicKey> get keys => $_getList(0);
}

/// SpaceX.API.Device.PublicKey is a message:
class PublicKey extends $pb.GeneratedMessage {
  factory PublicKey({
    $core.String? key,
    $core.Iterable<Capability>? capabilities,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (capabilities != null) {
      $result.capabilities.addAll(capabilities);
    }
    return $result;
  }
  PublicKey._() : super();
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..pc<Capability>(2, _omitFieldNames ? '' : 'capabilities', $pb.PbFieldType.KE, valueOf: Capability.valueOf, enumValues: Capability.values, defaultEnumValue: Capability.READ)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublicKey create() => PublicKey._();
  PublicKey createEmptyInstance() => create();
  static $pb.PbList<PublicKey> createRepeated() => $pb.PbList<PublicKey>();
  @$core.pragma('dart2js:noInline')
  static PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey>(create);
  static PublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Capability> get capabilities => $_getList(1);
}

/// SpaceX.API.Device.FactoryResetRequest is a message:
class FactoryResetRequest extends $pb.GeneratedMessage {
  factory FactoryResetRequest() => create();
  FactoryResetRequest._() : super();
  factory FactoryResetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FactoryResetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FactoryResetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FactoryResetRequest clone() => FactoryResetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FactoryResetRequest copyWith(void Function(FactoryResetRequest) updates) => super.copyWith((message) => updates(message as FactoryResetRequest)) as FactoryResetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FactoryResetRequest create() => FactoryResetRequest._();
  FactoryResetRequest createEmptyInstance() => create();
  static $pb.PbList<FactoryResetRequest> createRepeated() => $pb.PbList<FactoryResetRequest>();
  @$core.pragma('dart2js:noInline')
  static FactoryResetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FactoryResetRequest>(create);
  static FactoryResetRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetLogRequest is a message:
class GetLogRequest extends $pb.GeneratedMessage {
  factory GetLogRequest() => create();
  GetLogRequest._() : super();
  factory GetLogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLogRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLogRequest clone() => GetLogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLogRequest copyWith(void Function(GetLogRequest) updates) => super.copyWith((message) => updates(message as GetLogRequest)) as GetLogRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLogRequest create() => GetLogRequest._();
  GetLogRequest createEmptyInstance() => create();
  static $pb.PbList<GetLogRequest> createRepeated() => $pb.PbList<GetLogRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLogRequest>(create);
  static GetLogRequest? _defaultInstance;
}

/// SpaceX.API.Device.SetSkuRequest is a message:
class SetSkuRequest extends $pb.GeneratedMessage {
  factory SetSkuRequest({
    $core.String? sku,
    $core.String? countryCode,
    $core.bool? applyCountryCode,
    $core.bool? pinCountryCode,
    $core.bool? customPowerTable,
  }) {
    final $result = create();
    if (sku != null) {
      $result.sku = sku;
    }
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    if (applyCountryCode != null) {
      $result.applyCountryCode = applyCountryCode;
    }
    if (pinCountryCode != null) {
      $result.pinCountryCode = pinCountryCode;
    }
    if (customPowerTable != null) {
      $result.customPowerTable = customPowerTable;
    }
    return $result;
  }
  SetSkuRequest._() : super();
  factory SetSkuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSkuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSkuRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sku')
    ..aOS(2, _omitFieldNames ? '' : 'countryCode')
    ..aOB(4, _omitFieldNames ? '' : 'applyCountryCode')
    ..aOB(5, _omitFieldNames ? '' : 'pinCountryCode')
    ..aOB(6, _omitFieldNames ? '' : 'customPowerTable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSkuRequest clone() => SetSkuRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSkuRequest copyWith(void Function(SetSkuRequest) updates) => super.copyWith((message) => updates(message as SetSkuRequest)) as SetSkuRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSkuRequest create() => SetSkuRequest._();
  SetSkuRequest createEmptyInstance() => create();
  static $pb.PbList<SetSkuRequest> createRepeated() => $pb.PbList<SetSkuRequest>();
  @$core.pragma('dart2js:noInline')
  static SetSkuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSkuRequest>(create);
  static SetSkuRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sku => $_getSZ(0);
  @$pb.TagNumber(1)
  set sku($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearSku() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryCode() => clearField(2);

  @$pb.TagNumber(4)
  $core.bool get applyCountryCode => $_getBF(2);
  @$pb.TagNumber(4)
  set applyCountryCode($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasApplyCountryCode() => $_has(2);
  @$pb.TagNumber(4)
  void clearApplyCountryCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get pinCountryCode => $_getBF(3);
  @$pb.TagNumber(5)
  set pinCountryCode($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPinCountryCode() => $_has(3);
  @$pb.TagNumber(5)
  void clearPinCountryCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get customPowerTable => $_getBF(4);
  @$pb.TagNumber(6)
  set customPowerTable($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasCustomPowerTable() => $_has(4);
  @$pb.TagNumber(6)
  void clearCustomPowerTable() => clearField(6);
}

/// SpaceX.API.Device.UpdateRequest is a message:
class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest() => create();
  UpdateRequest._() : super();
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetNetworkInterfacesRequest is a message:
class GetNetworkInterfacesRequest extends $pb.GeneratedMessage {
  factory GetNetworkInterfacesRequest() => create();
  GetNetworkInterfacesRequest._() : super();
  factory GetNetworkInterfacesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkInterfacesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNetworkInterfacesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesRequest clone() => GetNetworkInterfacesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesRequest copyWith(void Function(GetNetworkInterfacesRequest) updates) => super.copyWith((message) => updates(message as GetNetworkInterfacesRequest)) as GetNetworkInterfacesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesRequest create() => GetNetworkInterfacesRequest._();
  GetNetworkInterfacesRequest createEmptyInstance() => create();
  static $pb.PbList<GetNetworkInterfacesRequest> createRepeated() => $pb.PbList<GetNetworkInterfacesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNetworkInterfacesRequest>(create);
  static GetNetworkInterfacesRequest? _defaultInstance;
}

/// SpaceX.API.Device.PingHostRequest is a message:
class PingHostRequest extends $pb.GeneratedMessage {
  factory PingHostRequest({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  PingHostRequest._() : super();
  factory PingHostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingHostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingHostRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingHostRequest clone() => PingHostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingHostRequest copyWith(void Function(PingHostRequest) updates) => super.copyWith((message) => updates(message as PingHostRequest)) as PingHostRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingHostRequest create() => PingHostRequest._();
  PingHostRequest createEmptyInstance() => create();
  static $pb.PbList<PingHostRequest> createRepeated() => $pb.PbList<PingHostRequest>();
  @$core.pragma('dart2js:noInline')
  static PingHostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingHostRequest>(create);
  static PingHostRequest? _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

/// SpaceX.API.Device.GetLocationRequest is a message:
class GetLocationRequest extends $pb.GeneratedMessage {
  factory GetLocationRequest({
    PositionSource? source,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  GetLocationRequest._() : super();
  factory GetLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<PositionSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationRequest clone() => GetLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationRequest copyWith(void Function(GetLocationRequest) updates) => super.copyWith((message) => updates(message as GetLocationRequest)) as GetLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationRequest create() => GetLocationRequest._();
  GetLocationRequest createEmptyInstance() => create();
  static $pb.PbList<GetLocationRequest> createRepeated() => $pb.PbList<GetLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationRequest>(create);
  static GetLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PositionSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(PositionSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
}

/// SpaceX.API.Device.GetHeapDumpRequest is a message:
class GetHeapDumpRequest extends $pb.GeneratedMessage {
  factory GetHeapDumpRequest() => create();
  GetHeapDumpRequest._() : super();
  factory GetHeapDumpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeapDumpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHeapDumpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeapDumpRequest clone() => GetHeapDumpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeapDumpRequest copyWith(void Function(GetHeapDumpRequest) updates) => super.copyWith((message) => updates(message as GetHeapDumpRequest)) as GetHeapDumpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHeapDumpRequest create() => GetHeapDumpRequest._();
  GetHeapDumpRequest createEmptyInstance() => create();
  static $pb.PbList<GetHeapDumpRequest> createRepeated() => $pb.PbList<GetHeapDumpRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHeapDumpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHeapDumpRequest>(create);
  static GetHeapDumpRequest? _defaultInstance;
}

/// SpaceX.API.Device.RestartControlRequest is a message:
class RestartControlRequest extends $pb.GeneratedMessage {
  factory RestartControlRequest() => create();
  RestartControlRequest._() : super();
  factory RestartControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestartControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RestartControlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestartControlRequest clone() => RestartControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestartControlRequest copyWith(void Function(RestartControlRequest) updates) => super.copyWith((message) => updates(message as RestartControlRequest)) as RestartControlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestartControlRequest create() => RestartControlRequest._();
  RestartControlRequest createEmptyInstance() => create();
  static $pb.PbList<RestartControlRequest> createRepeated() => $pb.PbList<RestartControlRequest>();
  @$core.pragma('dart2js:noInline')
  static RestartControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestartControlRequest>(create);
  static RestartControlRequest? _defaultInstance;
}

/// SpaceX.API.Device.FuseRequest is a message:
class FuseRequest extends $pb.GeneratedMessage {
  factory FuseRequest() => create();
  FuseRequest._() : super();
  factory FuseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FuseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuseRequest clone() => FuseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuseRequest copyWith(void Function(FuseRequest) updates) => super.copyWith((message) => updates(message as FuseRequest)) as FuseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FuseRequest create() => FuseRequest._();
  FuseRequest createEmptyInstance() => create();
  static $pb.PbList<FuseRequest> createRepeated() => $pb.PbList<FuseRequest>();
  @$core.pragma('dart2js:noInline')
  static FuseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuseRequest>(create);
  static FuseRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetPersistentStatsRequest is a message:
class GetPersistentStatsRequest extends $pb.GeneratedMessage {
  factory GetPersistentStatsRequest() => create();
  GetPersistentStatsRequest._() : super();
  factory GetPersistentStatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPersistentStatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPersistentStatsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest clone() => GetPersistentStatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest copyWith(void Function(GetPersistentStatsRequest) updates) => super.copyWith((message) => updates(message as GetPersistentStatsRequest)) as GetPersistentStatsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest create() => GetPersistentStatsRequest._();
  GetPersistentStatsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPersistentStatsRequest> createRepeated() => $pb.PbList<GetPersistentStatsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPersistentStatsRequest>(create);
  static GetPersistentStatsRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetConnectionsRequest is a message:
class GetConnectionsRequest extends $pb.GeneratedMessage {
  factory GetConnectionsRequest() => create();
  GetConnectionsRequest._() : super();
  factory GetConnectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest clone() => GetConnectionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest copyWith(void Function(GetConnectionsRequest) updates) => super.copyWith((message) => updates(message as GetConnectionsRequest)) as GetConnectionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest create() => GetConnectionsRequest._();
  GetConnectionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsRequest> createRepeated() => $pb.PbList<GetConnectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsRequest>(create);
  static GetConnectionsRequest? _defaultInstance;
}

/// SpaceX.API.Device.StartSpeedtestRequest is a message:
class StartSpeedtestRequest extends $pb.GeneratedMessage {
  factory StartSpeedtestRequest() => create();
  StartSpeedtestRequest._() : super();
  factory StartSpeedtestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartSpeedtestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartSpeedtestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartSpeedtestRequest clone() => StartSpeedtestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartSpeedtestRequest copyWith(void Function(StartSpeedtestRequest) updates) => super.copyWith((message) => updates(message as StartSpeedtestRequest)) as StartSpeedtestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartSpeedtestRequest create() => StartSpeedtestRequest._();
  StartSpeedtestRequest createEmptyInstance() => create();
  static $pb.PbList<StartSpeedtestRequest> createRepeated() => $pb.PbList<StartSpeedtestRequest>();
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartSpeedtestRequest>(create);
  static StartSpeedtestRequest? _defaultInstance;
}

/// SpaceX.API.Device.GetSpeedtestStatusRequest is a message:
class GetSpeedtestStatusRequest extends $pb.GeneratedMessage {
  factory GetSpeedtestStatusRequest() => create();
  GetSpeedtestStatusRequest._() : super();
  factory GetSpeedtestStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpeedtestStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSpeedtestStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusRequest clone() => GetSpeedtestStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusRequest copyWith(void Function(GetSpeedtestStatusRequest) updates) => super.copyWith((message) => updates(message as GetSpeedtestStatusRequest)) as GetSpeedtestStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusRequest create() => GetSpeedtestStatusRequest._();
  GetSpeedtestStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetSpeedtestStatusRequest> createRepeated() => $pb.PbList<GetSpeedtestStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpeedtestStatusRequest>(create);
  static GetSpeedtestStatusRequest? _defaultInstance;
}

/// SpaceX.API.Device.ReportClientSpeedtestRequest is a message:
class ReportClientSpeedtestRequest extends $pb.GeneratedMessage {
  factory ReportClientSpeedtestRequest({
    $core.int? id,
    SpeedTestStats? clientSpeedtest,
    $core.double? clientRssi,
    ClientPlatform? clientPlatform,
    SpeedTestStats? wifiSpeedtest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (clientSpeedtest != null) {
      $result.clientSpeedtest = clientSpeedtest;
    }
    if (clientRssi != null) {
      $result.clientRssi = clientRssi;
    }
    if (clientPlatform != null) {
      $result.clientPlatform = clientPlatform;
    }
    if (wifiSpeedtest != null) {
      $result.wifiSpeedtest = wifiSpeedtest;
    }
    return $result;
  }
  ReportClientSpeedtestRequest._() : super();
  factory ReportClientSpeedtestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportClientSpeedtestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportClientSpeedtestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOM<SpeedTestStats>(2, _omitFieldNames ? '' : 'clientSpeedtest', subBuilder: SpeedTestStats.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'clientRssi', $pb.PbFieldType.OF)
    ..aOM<ClientPlatform>(4, _omitFieldNames ? '' : 'clientPlatform', subBuilder: ClientPlatform.create)
    ..aOM<SpeedTestStats>(5, _omitFieldNames ? '' : 'wifiSpeedtest', subBuilder: SpeedTestStats.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestRequest clone() => ReportClientSpeedtestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestRequest copyWith(void Function(ReportClientSpeedtestRequest) updates) => super.copyWith((message) => updates(message as ReportClientSpeedtestRequest)) as ReportClientSpeedtestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestRequest create() => ReportClientSpeedtestRequest._();
  ReportClientSpeedtestRequest createEmptyInstance() => create();
  static $pb.PbList<ReportClientSpeedtestRequest> createRepeated() => $pb.PbList<ReportClientSpeedtestRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportClientSpeedtestRequest>(create);
  static ReportClientSpeedtestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  SpeedTestStats get clientSpeedtest => $_getN(1);
  @$pb.TagNumber(2)
  set clientSpeedtest(SpeedTestStats v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientSpeedtest() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientSpeedtest() => clearField(2);
  @$pb.TagNumber(2)
  SpeedTestStats ensureClientSpeedtest() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get clientRssi => $_getN(2);
  @$pb.TagNumber(3)
  set clientRssi($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientRssi() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientRssi() => clearField(3);

  @$pb.TagNumber(4)
  ClientPlatform get clientPlatform => $_getN(3);
  @$pb.TagNumber(4)
  set clientPlatform(ClientPlatform v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientPlatform() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientPlatform() => clearField(4);
  @$pb.TagNumber(4)
  ClientPlatform ensureClientPlatform() => $_ensure(3);

  @$pb.TagNumber(5)
  SpeedTestStats get wifiSpeedtest => $_getN(4);
  @$pb.TagNumber(5)
  set wifiSpeedtest(SpeedTestStats v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasWifiSpeedtest() => $_has(4);
  @$pb.TagNumber(5)
  void clearWifiSpeedtest() => clearField(5);
  @$pb.TagNumber(5)
  SpeedTestStats ensureWifiSpeedtest() => $_ensure(4);
}

/// SpaceX.API.Device.InitiateRemoteSshRequest is a message:
class InitiateRemoteSshRequest extends $pb.GeneratedMessage {
  factory InitiateRemoteSshRequest() => create();
  InitiateRemoteSshRequest._() : super();
  factory InitiateRemoteSshRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateRemoteSshRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitiateRemoteSshRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshRequest clone() => InitiateRemoteSshRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshRequest copyWith(void Function(InitiateRemoteSshRequest) updates) => super.copyWith((message) => updates(message as InitiateRemoteSshRequest)) as InitiateRemoteSshRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshRequest create() => InitiateRemoteSshRequest._();
  InitiateRemoteSshRequest createEmptyInstance() => create();
  static $pb.PbList<InitiateRemoteSshRequest> createRepeated() => $pb.PbList<InitiateRemoteSshRequest>();
  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateRemoteSshRequest>(create);
  static InitiateRemoteSshRequest? _defaultInstance;
}

/// SpaceX.API.Device.SelfTestRequest is a message:
class SelfTestRequest extends $pb.GeneratedMessage {
  factory SelfTestRequest({
    $core.bool? detailed,
  }) {
    final $result = create();
    if (detailed != null) {
      $result.detailed = detailed;
    }
    return $result;
  }
  SelfTestRequest._() : super();
  factory SelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'detailed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfTestRequest clone() => SelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfTestRequest copyWith(void Function(SelfTestRequest) updates) => super.copyWith((message) => updates(message as SelfTestRequest)) as SelfTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfTestRequest create() => SelfTestRequest._();
  SelfTestRequest createEmptyInstance() => create();
  static $pb.PbList<SelfTestRequest> createRepeated() => $pb.PbList<SelfTestRequest>();
  @$core.pragma('dart2js:noInline')
  static SelfTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfTestRequest>(create);
  static SelfTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get detailed => $_getBF(0);
  @$pb.TagNumber(1)
  set detailed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetailed() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetailed() => clearField(1);
}

/// SpaceX.API.Device.SetTestModeRequest is a message:
class SetTestModeRequest extends $pb.GeneratedMessage {
  factory SetTestModeRequest({
    SetTestModeRequest_RfMode? rfMode,
    $core.bool? disableLossOfCommFdir,
    $core.bool? enableRulesOverride,
  }) {
    final $result = create();
    if (rfMode != null) {
      $result.rfMode = rfMode;
    }
    if (disableLossOfCommFdir != null) {
      $result.disableLossOfCommFdir = disableLossOfCommFdir;
    }
    if (enableRulesOverride != null) {
      $result.enableRulesOverride = enableRulesOverride;
    }
    return $result;
  }
  SetTestModeRequest._() : super();
  factory SetTestModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTestModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTestModeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<SetTestModeRequest_RfMode>(1, _omitFieldNames ? '' : 'rfMode', $pb.PbFieldType.OE, defaultOrMaker: SetTestModeRequest_RfMode.RX, valueOf: SetTestModeRequest_RfMode.valueOf, enumValues: SetTestModeRequest_RfMode.values)
    ..aOB(1001, _omitFieldNames ? '' : 'disableLossOfCommFdir')
    ..aOB(1002, _omitFieldNames ? '' : 'enableRulesOverride')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTestModeRequest clone() => SetTestModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTestModeRequest copyWith(void Function(SetTestModeRequest) updates) => super.copyWith((message) => updates(message as SetTestModeRequest)) as SetTestModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTestModeRequest create() => SetTestModeRequest._();
  SetTestModeRequest createEmptyInstance() => create();
  static $pb.PbList<SetTestModeRequest> createRepeated() => $pb.PbList<SetTestModeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetTestModeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTestModeRequest>(create);
  static SetTestModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SetTestModeRequest_RfMode get rfMode => $_getN(0);
  @$pb.TagNumber(1)
  set rfMode(SetTestModeRequest_RfMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRfMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRfMode() => clearField(1);

  @$pb.TagNumber(1001)
  $core.bool get disableLossOfCommFdir => $_getBF(1);
  @$pb.TagNumber(1001)
  set disableLossOfCommFdir($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(1001)
  $core.bool hasDisableLossOfCommFdir() => $_has(1);
  @$pb.TagNumber(1001)
  void clearDisableLossOfCommFdir() => clearField(1001);

  @$pb.TagNumber(1002)
  $core.bool get enableRulesOverride => $_getBF(2);
  @$pb.TagNumber(1002)
  set enableRulesOverride($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(1002)
  $core.bool hasEnableRulesOverride() => $_has(2);
  @$pb.TagNumber(1002)
  void clearEnableRulesOverride() => clearField(1002);
}

/// SpaceX.API.Device.SoftwareUpdateRequest is a message:
class SoftwareUpdateRequest extends $pb.GeneratedMessage {
  factory SoftwareUpdateRequest({
    $fixnum.Int64? streamId,
    $core.List<$core.int>? data,
    $core.bool? open,
    $core.bool? close,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (data != null) {
      $result.data = data;
    }
    if (open != null) {
      $result.open = open;
    }
    if (close != null) {
      $result.close = close;
    }
    return $result;
  }
  SoftwareUpdateRequest._() : super();
  factory SoftwareUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SoftwareUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOB(3, _omitFieldNames ? '' : 'open')
    ..aOB(4, _omitFieldNames ? '' : 'close')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateRequest clone() => SoftwareUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateRequest copyWith(void Function(SoftwareUpdateRequest) updates) => super.copyWith((message) => updates(message as SoftwareUpdateRequest)) as SoftwareUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateRequest create() => SoftwareUpdateRequest._();
  SoftwareUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<SoftwareUpdateRequest> createRepeated() => $pb.PbList<SoftwareUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoftwareUpdateRequest>(create);
  static SoftwareUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get streamId => $_getI64(0);
  @$pb.TagNumber(1)
  set streamId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get open => $_getBF(2);
  @$pb.TagNumber(3)
  set open($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get close => $_getBF(3);
  @$pb.TagNumber(4)
  set close($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClose() => $_has(3);
  @$pb.TagNumber(4)
  void clearClose() => clearField(4);
}

/// SpaceX.API.Device.EnableDebugTelemRequest is a message:
class EnableDebugTelemRequest extends $pb.GeneratedMessage {
  factory EnableDebugTelemRequest({
    $core.int? durationM,
  }) {
    final $result = create();
    if (durationM != null) {
      $result.durationM = durationM;
    }
    return $result;
  }
  EnableDebugTelemRequest._() : super();
  factory EnableDebugTelemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableDebugTelemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnableDebugTelemRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'durationM', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableDebugTelemRequest clone() => EnableDebugTelemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableDebugTelemRequest copyWith(void Function(EnableDebugTelemRequest) updates) => super.copyWith((message) => updates(message as EnableDebugTelemRequest)) as EnableDebugTelemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemRequest create() => EnableDebugTelemRequest._();
  EnableDebugTelemRequest createEmptyInstance() => create();
  static $pb.PbList<EnableDebugTelemRequest> createRepeated() => $pb.PbList<EnableDebugTelemRequest>();
  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableDebugTelemRequest>(create);
  static EnableDebugTelemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get durationM => $_getIZ(0);
  @$pb.TagNumber(1)
  set durationM($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDurationM() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationM() => clearField(1);
}

/// SpaceX.API.Device.IQCaptureRequest is a message:
class IQCaptureRequest extends $pb.GeneratedMessage {
  factory IQCaptureRequest() => create();
  IQCaptureRequest._() : super();
  factory IQCaptureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IQCaptureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IQCaptureRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IQCaptureRequest clone() => IQCaptureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IQCaptureRequest copyWith(void Function(IQCaptureRequest) updates) => super.copyWith((message) => updates(message as IQCaptureRequest)) as IQCaptureRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IQCaptureRequest create() => IQCaptureRequest._();
  IQCaptureRequest createEmptyInstance() => create();
  static $pb.PbList<IQCaptureRequest> createRepeated() => $pb.PbList<IQCaptureRequest>();
  @$core.pragma('dart2js:noInline')
  static IQCaptureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IQCaptureRequest>(create);
  static IQCaptureRequest? _defaultInstance;
}

/// SpaceX.API.Device.DishStowRequest is a message:
class DishStowRequest extends $pb.GeneratedMessage {
  factory DishStowRequest({
    $core.bool? unstow,
  }) {
    final $result = create();
    if (unstow != null) {
      $result.unstow = unstow;
    }
    return $result;
  }
  DishStowRequest._() : super();
  factory DishStowRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishStowRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'unstow')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowRequest clone() => DishStowRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowRequest copyWith(void Function(DishStowRequest) updates) => super.copyWith((message) => updates(message as DishStowRequest)) as DishStowRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishStowRequest create() => DishStowRequest._();
  DishStowRequest createEmptyInstance() => create();
  static $pb.PbList<DishStowRequest> createRepeated() => $pb.PbList<DishStowRequest>();
  @$core.pragma('dart2js:noInline')
  static DishStowRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishStowRequest>(create);
  static DishStowRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get unstow => $_getBF(0);
  @$pb.TagNumber(1)
  set unstow($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnstow() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnstow() => clearField(1);
}

/// SpaceX.API.Device.DishGetContextRequest is a message:
class DishGetContextRequest extends $pb.GeneratedMessage {
  factory DishGetContextRequest() => create();
  DishGetContextRequest._() : super();
  factory DishGetContextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetContextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetContextRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetContextRequest clone() => DishGetContextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetContextRequest copyWith(void Function(DishGetContextRequest) updates) => super.copyWith((message) => updates(message as DishGetContextRequest)) as DishGetContextRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetContextRequest create() => DishGetContextRequest._();
  DishGetContextRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetContextRequest> createRepeated() => $pb.PbList<DishGetContextRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetContextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetContextRequest>(create);
  static DishGetContextRequest? _defaultInstance;
}

/// SpaceX.API.Device.DishSetEmcRequest is a message:
class DishSetEmcRequest extends $pb.GeneratedMessage {
  factory DishSetEmcRequest({
    $core.double? theta,
    $core.double? phi,
    $core.int? rxChan,
    $core.int? txChan,
    $core.int? modulation,
    $core.double? desiredTiltAngle,
    $core.bool? chanOverride,
    $core.bool? thetaEnabled,
    $core.bool? phiEnabled,
    $core.bool? idle,
    $core.bool? fastSwitching,
    $core.bool? skySearch,
    $core.bool? forcePllUnlock,
    $core.bool? forceEirpFailure,
    $core.bool? snowActiveOverride,
    $core.bool? manualTilting,
    $core.bool? tiltToStowed,
    $core.bool? reboot,
    $core.bool? continuousMotorTest,
    $core.double? distanceOverrideMeters,
    $core.int? amplitudeTaperOverride,
    $core.int? countryCodeOverride,
    $core.int? txDutyCycleOverride,
    $core.int? rxDutyCycleOverride,
    $core.double? eirpLegalLimitDbwOverride,
    $core.double? eirpAdjustmentDb,
  }) {
    final $result = create();
    if (theta != null) {
      $result.theta = theta;
    }
    if (phi != null) {
      $result.phi = phi;
    }
    if (rxChan != null) {
      $result.rxChan = rxChan;
    }
    if (txChan != null) {
      $result.txChan = txChan;
    }
    if (modulation != null) {
      $result.modulation = modulation;
    }
    if (desiredTiltAngle != null) {
      $result.desiredTiltAngle = desiredTiltAngle;
    }
    if (chanOverride != null) {
      $result.chanOverride = chanOverride;
    }
    if (thetaEnabled != null) {
      $result.thetaEnabled = thetaEnabled;
    }
    if (phiEnabled != null) {
      $result.phiEnabled = phiEnabled;
    }
    if (idle != null) {
      $result.idle = idle;
    }
    if (fastSwitching != null) {
      $result.fastSwitching = fastSwitching;
    }
    if (skySearch != null) {
      $result.skySearch = skySearch;
    }
    if (forcePllUnlock != null) {
      $result.forcePllUnlock = forcePllUnlock;
    }
    if (forceEirpFailure != null) {
      $result.forceEirpFailure = forceEirpFailure;
    }
    if (snowActiveOverride != null) {
      $result.snowActiveOverride = snowActiveOverride;
    }
    if (manualTilting != null) {
      $result.manualTilting = manualTilting;
    }
    if (tiltToStowed != null) {
      $result.tiltToStowed = tiltToStowed;
    }
    if (reboot != null) {
      $result.reboot = reboot;
    }
    if (continuousMotorTest != null) {
      $result.continuousMotorTest = continuousMotorTest;
    }
    if (distanceOverrideMeters != null) {
      $result.distanceOverrideMeters = distanceOverrideMeters;
    }
    if (amplitudeTaperOverride != null) {
      $result.amplitudeTaperOverride = amplitudeTaperOverride;
    }
    if (countryCodeOverride != null) {
      $result.countryCodeOverride = countryCodeOverride;
    }
    if (txDutyCycleOverride != null) {
      $result.txDutyCycleOverride = txDutyCycleOverride;
    }
    if (rxDutyCycleOverride != null) {
      $result.rxDutyCycleOverride = rxDutyCycleOverride;
    }
    if (eirpLegalLimitDbwOverride != null) {
      $result.eirpLegalLimitDbwOverride = eirpLegalLimitDbwOverride;
    }
    if (eirpAdjustmentDb != null) {
      $result.eirpAdjustmentDb = eirpAdjustmentDb;
    }
    return $result;
  }
  DishSetEmcRequest._() : super();
  factory DishSetEmcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetEmcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishSetEmcRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'theta', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'phi', $pb.PbFieldType.OD)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rxChan', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'txChan', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'modulation', $pb.PbFieldType.OU3)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'desiredTiltAngle', $pb.PbFieldType.OD)
    ..aOB(8, _omitFieldNames ? '' : 'chanOverride')
    ..aOB(9, _omitFieldNames ? '' : 'thetaEnabled')
    ..aOB(10, _omitFieldNames ? '' : 'phiEnabled')
    ..aOB(11, _omitFieldNames ? '' : 'idle')
    ..aOB(12, _omitFieldNames ? '' : 'fastSwitching')
    ..aOB(13, _omitFieldNames ? '' : 'skySearch')
    ..aOB(14, _omitFieldNames ? '' : 'forcePllUnlock')
    ..aOB(15, _omitFieldNames ? '' : 'forceEirpFailure')
    ..aOB(16, _omitFieldNames ? '' : 'snowActiveOverride')
    ..aOB(18, _omitFieldNames ? '' : 'manualTilting')
    ..aOB(19, _omitFieldNames ? '' : 'tiltToStowed')
    ..aOB(20, _omitFieldNames ? '' : 'reboot')
    ..aOB(21, _omitFieldNames ? '' : 'continuousMotorTest')
    ..a<$core.double>(22, _omitFieldNames ? '' : 'distanceOverrideMeters', $pb.PbFieldType.OD)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'amplitudeTaperOverride', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, _omitFieldNames ? '' : 'countryCodeOverride', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'txDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'rxDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.double>(27, _omitFieldNames ? '' : 'eirpLegalLimitDbwOverride', $pb.PbFieldType.OD)
    ..a<$core.double>(28, _omitFieldNames ? '' : 'eirpAdjustmentDb', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetEmcRequest clone() => DishSetEmcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetEmcRequest copyWith(void Function(DishSetEmcRequest) updates) => super.copyWith((message) => updates(message as DishSetEmcRequest)) as DishSetEmcRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishSetEmcRequest create() => DishSetEmcRequest._();
  DishSetEmcRequest createEmptyInstance() => create();
  static $pb.PbList<DishSetEmcRequest> createRepeated() => $pb.PbList<DishSetEmcRequest>();
  @$core.pragma('dart2js:noInline')
  static DishSetEmcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetEmcRequest>(create);
  static DishSetEmcRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get theta => $_getN(0);
  @$pb.TagNumber(1)
  set theta($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTheta() => $_has(0);
  @$pb.TagNumber(1)
  void clearTheta() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get phi => $_getN(1);
  @$pb.TagNumber(2)
  set phi($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhi() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhi() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rxChan => $_getIZ(2);
  @$pb.TagNumber(3)
  set rxChan($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRxChan() => $_has(2);
  @$pb.TagNumber(3)
  void clearRxChan() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get txChan => $_getIZ(3);
  @$pb.TagNumber(4)
  set txChan($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxChan() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxChan() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get modulation => $_getIZ(4);
  @$pb.TagNumber(5)
  set modulation($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModulation() => $_has(4);
  @$pb.TagNumber(5)
  void clearModulation() => clearField(5);

  @$pb.TagNumber(7)
  $core.double get desiredTiltAngle => $_getN(5);
  @$pb.TagNumber(7)
  set desiredTiltAngle($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasDesiredTiltAngle() => $_has(5);
  @$pb.TagNumber(7)
  void clearDesiredTiltAngle() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get chanOverride => $_getBF(6);
  @$pb.TagNumber(8)
  set chanOverride($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasChanOverride() => $_has(6);
  @$pb.TagNumber(8)
  void clearChanOverride() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get thetaEnabled => $_getBF(7);
  @$pb.TagNumber(9)
  set thetaEnabled($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasThetaEnabled() => $_has(7);
  @$pb.TagNumber(9)
  void clearThetaEnabled() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get phiEnabled => $_getBF(8);
  @$pb.TagNumber(10)
  set phiEnabled($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasPhiEnabled() => $_has(8);
  @$pb.TagNumber(10)
  void clearPhiEnabled() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get idle => $_getBF(9);
  @$pb.TagNumber(11)
  set idle($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasIdle() => $_has(9);
  @$pb.TagNumber(11)
  void clearIdle() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get fastSwitching => $_getBF(10);
  @$pb.TagNumber(12)
  set fastSwitching($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasFastSwitching() => $_has(10);
  @$pb.TagNumber(12)
  void clearFastSwitching() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get skySearch => $_getBF(11);
  @$pb.TagNumber(13)
  set skySearch($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasSkySearch() => $_has(11);
  @$pb.TagNumber(13)
  void clearSkySearch() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get forcePllUnlock => $_getBF(12);
  @$pb.TagNumber(14)
  set forcePllUnlock($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasForcePllUnlock() => $_has(12);
  @$pb.TagNumber(14)
  void clearForcePllUnlock() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get forceEirpFailure => $_getBF(13);
  @$pb.TagNumber(15)
  set forceEirpFailure($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasForceEirpFailure() => $_has(13);
  @$pb.TagNumber(15)
  void clearForceEirpFailure() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get snowActiveOverride => $_getBF(14);
  @$pb.TagNumber(16)
  set snowActiveOverride($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasSnowActiveOverride() => $_has(14);
  @$pb.TagNumber(16)
  void clearSnowActiveOverride() => clearField(16);

  @$pb.TagNumber(18)
  $core.bool get manualTilting => $_getBF(15);
  @$pb.TagNumber(18)
  set manualTilting($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(18)
  $core.bool hasManualTilting() => $_has(15);
  @$pb.TagNumber(18)
  void clearManualTilting() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get tiltToStowed => $_getBF(16);
  @$pb.TagNumber(19)
  set tiltToStowed($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(19)
  $core.bool hasTiltToStowed() => $_has(16);
  @$pb.TagNumber(19)
  void clearTiltToStowed() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get reboot => $_getBF(17);
  @$pb.TagNumber(20)
  set reboot($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(20)
  $core.bool hasReboot() => $_has(17);
  @$pb.TagNumber(20)
  void clearReboot() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get continuousMotorTest => $_getBF(18);
  @$pb.TagNumber(21)
  set continuousMotorTest($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(21)
  $core.bool hasContinuousMotorTest() => $_has(18);
  @$pb.TagNumber(21)
  void clearContinuousMotorTest() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get distanceOverrideMeters => $_getN(19);
  @$pb.TagNumber(22)
  set distanceOverrideMeters($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(22)
  $core.bool hasDistanceOverrideMeters() => $_has(19);
  @$pb.TagNumber(22)
  void clearDistanceOverrideMeters() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get amplitudeTaperOverride => $_getIZ(20);
  @$pb.TagNumber(23)
  set amplitudeTaperOverride($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(23)
  $core.bool hasAmplitudeTaperOverride() => $_has(20);
  @$pb.TagNumber(23)
  void clearAmplitudeTaperOverride() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get countryCodeOverride => $_getIZ(21);
  @$pb.TagNumber(24)
  set countryCodeOverride($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(24)
  $core.bool hasCountryCodeOverride() => $_has(21);
  @$pb.TagNumber(24)
  void clearCountryCodeOverride() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get txDutyCycleOverride => $_getIZ(22);
  @$pb.TagNumber(25)
  set txDutyCycleOverride($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(25)
  $core.bool hasTxDutyCycleOverride() => $_has(22);
  @$pb.TagNumber(25)
  void clearTxDutyCycleOverride() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get rxDutyCycleOverride => $_getIZ(23);
  @$pb.TagNumber(26)
  set rxDutyCycleOverride($core.int v) { $_setSignedInt32(23, v); }
  @$pb.TagNumber(26)
  $core.bool hasRxDutyCycleOverride() => $_has(23);
  @$pb.TagNumber(26)
  void clearRxDutyCycleOverride() => clearField(26);

  @$pb.TagNumber(27)
  $core.double get eirpLegalLimitDbwOverride => $_getN(24);
  @$pb.TagNumber(27)
  set eirpLegalLimitDbwOverride($core.double v) { $_setDouble(24, v); }
  @$pb.TagNumber(27)
  $core.bool hasEirpLegalLimitDbwOverride() => $_has(24);
  @$pb.TagNumber(27)
  void clearEirpLegalLimitDbwOverride() => clearField(27);

  @$pb.TagNumber(28)
  $core.double get eirpAdjustmentDb => $_getN(25);
  @$pb.TagNumber(28)
  set eirpAdjustmentDb($core.double v) { $_setDouble(25, v); }
  @$pb.TagNumber(28)
  $core.bool hasEirpAdjustmentDb() => $_has(25);
  @$pb.TagNumber(28)
  void clearEirpAdjustmentDb() => clearField(28);
}

/// SpaceX.API.Device.DishGetObstructionMapRequest is a message:
class DishGetObstructionMapRequest extends $pb.GeneratedMessage {
  factory DishGetObstructionMapRequest() => create();
  DishGetObstructionMapRequest._() : super();
  factory DishGetObstructionMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetObstructionMapRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest clone() => DishGetObstructionMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest copyWith(void Function(DishGetObstructionMapRequest) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapRequest)) as DishGetObstructionMapRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest create() => DishGetObstructionMapRequest._();
  DishGetObstructionMapRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetObstructionMapRequest> createRepeated() => $pb.PbList<DishGetObstructionMapRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetObstructionMapRequest>(create);
  static DishGetObstructionMapRequest? _defaultInstance;
}

/// SpaceX.API.Device.DishGetEmcRequest is a message:
class DishGetEmcRequest extends $pb.GeneratedMessage {
  factory DishGetEmcRequest() => create();
  DishGetEmcRequest._() : super();
  factory DishGetEmcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetEmcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetEmcRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetEmcRequest clone() => DishGetEmcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetEmcRequest copyWith(void Function(DishGetEmcRequest) updates) => super.copyWith((message) => updates(message as DishGetEmcRequest)) as DishGetEmcRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetEmcRequest create() => DishGetEmcRequest._();
  DishGetEmcRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetEmcRequest> createRepeated() => $pb.PbList<DishGetEmcRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetEmcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetEmcRequest>(create);
  static DishGetEmcRequest? _defaultInstance;
}

/// SpaceX.API.Device.DishSetConfigRequest is a message:
class DishSetConfigRequest extends $pb.GeneratedMessage {
  factory DishSetConfigRequest({
    DishConfig? dishConfig,
  }) {
    final $result = create();
    if (dishConfig != null) {
      $result.dishConfig = dishConfig;
    }
    return $result;
  }
  DishSetConfigRequest._() : super();
  factory DishSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishSetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, _omitFieldNames ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest clone() => DishSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest copyWith(void Function(DishSetConfigRequest) updates) => super.copyWith((message) => updates(message as DishSetConfigRequest)) as DishSetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishSetConfigRequest create() => DishSetConfigRequest._();
  DishSetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<DishSetConfigRequest> createRepeated() => $pb.PbList<DishSetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static DishSetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetConfigRequest>(create);
  static DishSetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get dishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set dishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureDishConfig() => $_ensure(0);
}

/// SpaceX.API.Device.DishConfig is a message:
class DishConfig extends $pb.GeneratedMessage {
  factory DishConfig({
    DishConfig_SnowMeltMode? snowMeltMode,
    DishConfig_LocationRequestMode? locationRequestMode,
    DishConfig_LevelDishMode? levelDishMode,
    $core.int? powerSaveStartMinutes,
    $core.int? powerSaveDurationMinutes,
    $core.bool? powerSaveMode,
    $core.bool? applySnowMeltMode,
    $core.bool? applyLocationRequestMode,
    $core.bool? applyLevelDishMode,
    $core.bool? applyPowerSaveStartMinutes,
    $core.bool? applyPowerSaveDurationMinutes,
    $core.bool? applyPowerSaveMode,
  }) {
    final $result = create();
    if (snowMeltMode != null) {
      $result.snowMeltMode = snowMeltMode;
    }
    if (locationRequestMode != null) {
      $result.locationRequestMode = locationRequestMode;
    }
    if (levelDishMode != null) {
      $result.levelDishMode = levelDishMode;
    }
    if (powerSaveStartMinutes != null) {
      $result.powerSaveStartMinutes = powerSaveStartMinutes;
    }
    if (powerSaveDurationMinutes != null) {
      $result.powerSaveDurationMinutes = powerSaveDurationMinutes;
    }
    if (powerSaveMode != null) {
      $result.powerSaveMode = powerSaveMode;
    }
    if (applySnowMeltMode != null) {
      $result.applySnowMeltMode = applySnowMeltMode;
    }
    if (applyLocationRequestMode != null) {
      $result.applyLocationRequestMode = applyLocationRequestMode;
    }
    if (applyLevelDishMode != null) {
      $result.applyLevelDishMode = applyLevelDishMode;
    }
    if (applyPowerSaveStartMinutes != null) {
      $result.applyPowerSaveStartMinutes = applyPowerSaveStartMinutes;
    }
    if (applyPowerSaveDurationMinutes != null) {
      $result.applyPowerSaveDurationMinutes = applyPowerSaveDurationMinutes;
    }
    if (applyPowerSaveMode != null) {
      $result.applyPowerSaveMode = applyPowerSaveMode;
    }
    return $result;
  }
  DishConfig._() : super();
  factory DishConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishConfig_SnowMeltMode>(1, _omitFieldNames ? '' : 'snowMeltMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_SnowMeltMode.AUTO, valueOf: DishConfig_SnowMeltMode.valueOf, enumValues: DishConfig_SnowMeltMode.values)
    ..e<DishConfig_LocationRequestMode>(2, _omitFieldNames ? '' : 'locationRequestMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LocationRequestMode.NONE, valueOf: DishConfig_LocationRequestMode.valueOf, enumValues: DishConfig_LocationRequestMode.values)
    ..e<DishConfig_LevelDishMode>(3, _omitFieldNames ? '' : 'levelDishMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LevelDishMode.TILT_LIKE_NORMAL, valueOf: DishConfig_LevelDishMode.valueOf, enumValues: DishConfig_LevelDishMode.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'powerSaveStartMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'powerSaveDurationMinutes', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'powerSaveMode')
    ..aOB(1001, _omitFieldNames ? '' : 'applySnowMeltMode')
    ..aOB(2001, _omitFieldNames ? '' : 'applyLocationRequestMode')
    ..aOB(3001, _omitFieldNames ? '' : 'applyLevelDishMode')
    ..aOB(4001, _omitFieldNames ? '' : 'applyPowerSaveStartMinutes')
    ..aOB(5001, _omitFieldNames ? '' : 'applyPowerSaveDurationMinutes')
    ..aOB(6001, _omitFieldNames ? '' : 'applyPowerSaveMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishConfig clone() => DishConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishConfig copyWith(void Function(DishConfig) updates) => super.copyWith((message) => updates(message as DishConfig)) as DishConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishConfig create() => DishConfig._();
  DishConfig createEmptyInstance() => create();
  static $pb.PbList<DishConfig> createRepeated() => $pb.PbList<DishConfig>();
  @$core.pragma('dart2js:noInline')
  static DishConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishConfig>(create);
  static DishConfig? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig_SnowMeltMode get snowMeltMode => $_getN(0);
  @$pb.TagNumber(1)
  set snowMeltMode(DishConfig_SnowMeltMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSnowMeltMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnowMeltMode() => clearField(1);

  @$pb.TagNumber(2)
  DishConfig_LocationRequestMode get locationRequestMode => $_getN(1);
  @$pb.TagNumber(2)
  set locationRequestMode(DishConfig_LocationRequestMode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocationRequestMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocationRequestMode() => clearField(2);

  @$pb.TagNumber(3)
  DishConfig_LevelDishMode get levelDishMode => $_getN(2);
  @$pb.TagNumber(3)
  set levelDishMode(DishConfig_LevelDishMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevelDishMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevelDishMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get powerSaveStartMinutes => $_getIZ(3);
  @$pb.TagNumber(4)
  set powerSaveStartMinutes($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPowerSaveStartMinutes() => $_has(3);
  @$pb.TagNumber(4)
  void clearPowerSaveStartMinutes() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get powerSaveDurationMinutes => $_getIZ(4);
  @$pb.TagNumber(5)
  set powerSaveDurationMinutes($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPowerSaveDurationMinutes() => $_has(4);
  @$pb.TagNumber(5)
  void clearPowerSaveDurationMinutes() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get powerSaveMode => $_getBF(5);
  @$pb.TagNumber(6)
  set powerSaveMode($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPowerSaveMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearPowerSaveMode() => clearField(6);

  @$pb.TagNumber(1001)
  $core.bool get applySnowMeltMode => $_getBF(6);
  @$pb.TagNumber(1001)
  set applySnowMeltMode($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(1001)
  $core.bool hasApplySnowMeltMode() => $_has(6);
  @$pb.TagNumber(1001)
  void clearApplySnowMeltMode() => clearField(1001);

  @$pb.TagNumber(2001)
  $core.bool get applyLocationRequestMode => $_getBF(7);
  @$pb.TagNumber(2001)
  set applyLocationRequestMode($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(2001)
  $core.bool hasApplyLocationRequestMode() => $_has(7);
  @$pb.TagNumber(2001)
  void clearApplyLocationRequestMode() => clearField(2001);

  @$pb.TagNumber(3001)
  $core.bool get applyLevelDishMode => $_getBF(8);
  @$pb.TagNumber(3001)
  set applyLevelDishMode($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(3001)
  $core.bool hasApplyLevelDishMode() => $_has(8);
  @$pb.TagNumber(3001)
  void clearApplyLevelDishMode() => clearField(3001);

  @$pb.TagNumber(4001)
  $core.bool get applyPowerSaveStartMinutes => $_getBF(9);
  @$pb.TagNumber(4001)
  set applyPowerSaveStartMinutes($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(4001)
  $core.bool hasApplyPowerSaveStartMinutes() => $_has(9);
  @$pb.TagNumber(4001)
  void clearApplyPowerSaveStartMinutes() => clearField(4001);

  @$pb.TagNumber(5001)
  $core.bool get applyPowerSaveDurationMinutes => $_getBF(10);
  @$pb.TagNumber(5001)
  set applyPowerSaveDurationMinutes($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(5001)
  $core.bool hasApplyPowerSaveDurationMinutes() => $_has(10);
  @$pb.TagNumber(5001)
  void clearApplyPowerSaveDurationMinutes() => clearField(5001);

  @$pb.TagNumber(6001)
  $core.bool get applyPowerSaveMode => $_getBF(11);
  @$pb.TagNumber(6001)
  set applyPowerSaveMode($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(6001)
  $core.bool hasApplyPowerSaveMode() => $_has(11);
  @$pb.TagNumber(6001)
  void clearApplyPowerSaveMode() => clearField(6001);
}

/// SpaceX.API.Device.DishGetConfigRequest is a message:
class DishGetConfigRequest extends $pb.GeneratedMessage {
  factory DishGetConfigRequest() => create();
  DishGetConfigRequest._() : super();
  factory DishGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest clone() => DishGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest copyWith(void Function(DishGetConfigRequest) updates) => super.copyWith((message) => updates(message as DishGetConfigRequest)) as DishGetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest create() => DishGetConfigRequest._();
  DishGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetConfigRequest> createRepeated() => $pb.PbList<DishGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetConfigRequest>(create);
  static DishGetConfigRequest? _defaultInstance;
}

/// SpaceX.API.Device.StartDishSelfTestRequest is a message:
class StartDishSelfTestRequest extends $pb.GeneratedMessage {
  factory StartDishSelfTestRequest() => create();
  StartDishSelfTestRequest._() : super();
  factory StartDishSelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDishSelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartDishSelfTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDishSelfTestRequest clone() => StartDishSelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDishSelfTestRequest copyWith(void Function(StartDishSelfTestRequest) updates) => super.copyWith((message) => updates(message as StartDishSelfTestRequest)) as StartDishSelfTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestRequest create() => StartDishSelfTestRequest._();
  StartDishSelfTestRequest createEmptyInstance() => create();
  static $pb.PbList<StartDishSelfTestRequest> createRepeated() => $pb.PbList<StartDishSelfTestRequest>();
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDishSelfTestRequest>(create);
  static StartDishSelfTestRequest? _defaultInstance;
}

/// SpaceX.API.Device.DishPowerSaveRequest is a message:
class DishPowerSaveRequest extends $pb.GeneratedMessage {
  factory DishPowerSaveRequest({
    $core.int? powerSaveStartMinutes,
    $core.int? powerSaveDurationMinutes,
    $core.bool? enablePowerSave,
  }) {
    final $result = create();
    if (powerSaveStartMinutes != null) {
      $result.powerSaveStartMinutes = powerSaveStartMinutes;
    }
    if (powerSaveDurationMinutes != null) {
      $result.powerSaveDurationMinutes = powerSaveDurationMinutes;
    }
    if (enablePowerSave != null) {
      $result.enablePowerSave = enablePowerSave;
    }
    return $result;
  }
  DishPowerSaveRequest._() : super();
  factory DishPowerSaveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishPowerSaveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishPowerSaveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'powerSaveStartMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'powerSaveDurationMinutes', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'enablePowerSave')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishPowerSaveRequest clone() => DishPowerSaveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishPowerSaveRequest copyWith(void Function(DishPowerSaveRequest) updates) => super.copyWith((message) => updates(message as DishPowerSaveRequest)) as DishPowerSaveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishPowerSaveRequest create() => DishPowerSaveRequest._();
  DishPowerSaveRequest createEmptyInstance() => create();
  static $pb.PbList<DishPowerSaveRequest> createRepeated() => $pb.PbList<DishPowerSaveRequest>();
  @$core.pragma('dart2js:noInline')
  static DishPowerSaveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishPowerSaveRequest>(create);
  static DishPowerSaveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get powerSaveStartMinutes => $_getIZ(0);
  @$pb.TagNumber(1)
  set powerSaveStartMinutes($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPowerSaveStartMinutes() => $_has(0);
  @$pb.TagNumber(1)
  void clearPowerSaveStartMinutes() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get powerSaveDurationMinutes => $_getIZ(1);
  @$pb.TagNumber(2)
  set powerSaveDurationMinutes($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPowerSaveDurationMinutes() => $_has(1);
  @$pb.TagNumber(2)
  void clearPowerSaveDurationMinutes() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enablePowerSave => $_getBF(2);
  @$pb.TagNumber(3)
  set enablePowerSave($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnablePowerSave() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnablePowerSave() => clearField(3);
}

/// SpaceX.API.Device.DishInhibitGpsRequest is a message:
class DishInhibitGpsRequest extends $pb.GeneratedMessage {
  factory DishInhibitGpsRequest({
    $core.bool? inhibitGps,
  }) {
    final $result = create();
    if (inhibitGps != null) {
      $result.inhibitGps = inhibitGps;
    }
    return $result;
  }
  DishInhibitGpsRequest._() : super();
  factory DishInhibitGpsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishInhibitGpsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest clone() => DishInhibitGpsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest copyWith(void Function(DishInhibitGpsRequest) updates) => super.copyWith((message) => updates(message as DishInhibitGpsRequest)) as DishInhibitGpsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsRequest create() => DishInhibitGpsRequest._();
  DishInhibitGpsRequest createEmptyInstance() => create();
  static $pb.PbList<DishInhibitGpsRequest> createRepeated() => $pb.PbList<DishInhibitGpsRequest>();
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishInhibitGpsRequest>(create);
  static DishInhibitGpsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inhibitGps => $_getBF(0);
  @$pb.TagNumber(1)
  set inhibitGps($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInhibitGps() => $_has(0);
  @$pb.TagNumber(1)
  void clearInhibitGps() => clearField(1);
}

/// SpaceX.API.Device.WifiSetConfigRequest is a message:
class WifiSetConfigRequest extends $pb.GeneratedMessage {
  factory WifiSetConfigRequest({
    WifiConfig? wifiConfig,
  }) {
    final $result = create();
    if (wifiConfig != null) {
      $result.wifiConfig = wifiConfig;
    }
    return $result;
  }
  WifiSetConfigRequest._() : super();
  factory WifiSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, _omitFieldNames ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest clone() => WifiSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest copyWith(void Function(WifiSetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiSetConfigRequest)) as WifiSetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetConfigRequest create() => WifiSetConfigRequest._();
  WifiSetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetConfigRequest> createRepeated() => $pb.PbList<WifiSetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetConfigRequest>(create);
  static WifiSetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get wifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set wifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureWifiConfig() => $_ensure(0);
}

enum WifiConfig_BasicServiceSet_Auth {
  authOpen, 
  authWpa2, 
  authWpa3, 
  authWpa2Wpa3, 
  authRadius, 
  notSet
}

class WifiConfig_BasicServiceSet extends $pb.GeneratedMessage {
  factory WifiConfig_BasicServiceSet({
    $core.String? bssid,
    $core.String? ssid,
    WifiConfig_Band? band,
    $core.bool? disable,
    $core.bool? hidden,
    $core.String? ifaceName,
    AuthOpen? authOpen,
    AuthWpa2? authWpa2,
    AuthWpa3? authWpa3,
    AuthWpa2Wpa3? authWpa2Wpa3,
    AuthRadius? authRadius,
  }) {
    final $result = create();
    if (bssid != null) {
      $result.bssid = bssid;
    }
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (band != null) {
      $result.band = band;
    }
    if (disable != null) {
      $result.disable = disable;
    }
    if (hidden != null) {
      $result.hidden = hidden;
    }
    if (ifaceName != null) {
      $result.ifaceName = ifaceName;
    }
    if (authOpen != null) {
      $result.authOpen = authOpen;
    }
    if (authWpa2 != null) {
      $result.authWpa2 = authWpa2;
    }
    if (authWpa3 != null) {
      $result.authWpa3 = authWpa3;
    }
    if (authWpa2Wpa3 != null) {
      $result.authWpa2Wpa3 = authWpa2Wpa3;
    }
    if (authRadius != null) {
      $result.authRadius = authRadius;
    }
    return $result;
  }
  WifiConfig_BasicServiceSet._() : super();
  factory WifiConfig_BasicServiceSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_BasicServiceSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WifiConfig_BasicServiceSet_Auth> _WifiConfig_BasicServiceSet_AuthByTag = {
    2001 : WifiConfig_BasicServiceSet_Auth.authOpen,
    2002 : WifiConfig_BasicServiceSet_Auth.authWpa2,
    2003 : WifiConfig_BasicServiceSet_Auth.authWpa3,
    2004 : WifiConfig_BasicServiceSet_Auth.authWpa2Wpa3,
    2005 : WifiConfig_BasicServiceSet_Auth.authRadius,
    0 : WifiConfig_BasicServiceSet_Auth.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiConfig.BasicServiceSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [2001, 2002, 2003, 2004, 2005])
    ..aOS(1003, _omitFieldNames ? '' : 'bssid')
    ..aOS(1005, _omitFieldNames ? '' : 'ssid')
    ..e<WifiConfig_Band>(1011, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Band.RF_UNKNOWN, valueOf: WifiConfig_Band.valueOf, enumValues: WifiConfig_Band.values)
    ..aOB(1013, _omitFieldNames ? '' : 'disable')
    ..aOB(1015, _omitFieldNames ? '' : 'hidden')
    ..aOS(1017, _omitFieldNames ? '' : 'ifaceName')
    ..aOM<AuthOpen>(2001, _omitFieldNames ? '' : 'authOpen', subBuilder: AuthOpen.create)
    ..aOM<AuthWpa2>(2002, _omitFieldNames ? '' : 'authWpa2', subBuilder: AuthWpa2.create)
    ..aOM<AuthWpa3>(2003, _omitFieldNames ? '' : 'authWpa3', subBuilder: AuthWpa3.create)
    ..aOM<AuthWpa2Wpa3>(2004, _omitFieldNames ? '' : 'authWpa2Wpa3', subBuilder: AuthWpa2Wpa3.create)
    ..aOM<AuthRadius>(2005, _omitFieldNames ? '' : 'authRadius', subBuilder: AuthRadius.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet clone() => WifiConfig_BasicServiceSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet copyWith(void Function(WifiConfig_BasicServiceSet) updates) => super.copyWith((message) => updates(message as WifiConfig_BasicServiceSet)) as WifiConfig_BasicServiceSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiConfig_BasicServiceSet create() => WifiConfig_BasicServiceSet._();
  WifiConfig_BasicServiceSet createEmptyInstance() => create();
  static $pb.PbList<WifiConfig_BasicServiceSet> createRepeated() => $pb.PbList<WifiConfig_BasicServiceSet>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig_BasicServiceSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig_BasicServiceSet>(create);
  static WifiConfig_BasicServiceSet? _defaultInstance;

  WifiConfig_BasicServiceSet_Auth whichAuth() => _WifiConfig_BasicServiceSet_AuthByTag[$_whichOneof(0)]!;
  void clearAuth() => clearField($_whichOneof(0));

  @$pb.TagNumber(1003)
  $core.String get bssid => $_getSZ(0);
  @$pb.TagNumber(1003)
  set bssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1003)
  $core.bool hasBssid() => $_has(0);
  @$pb.TagNumber(1003)
  void clearBssid() => clearField(1003);

  @$pb.TagNumber(1005)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(1005)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(1005)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(1005)
  void clearSsid() => clearField(1005);

  @$pb.TagNumber(1011)
  WifiConfig_Band get band => $_getN(2);
  @$pb.TagNumber(1011)
  set band(WifiConfig_Band v) { setField(1011, v); }
  @$pb.TagNumber(1011)
  $core.bool hasBand() => $_has(2);
  @$pb.TagNumber(1011)
  void clearBand() => clearField(1011);

  @$pb.TagNumber(1013)
  $core.bool get disable => $_getBF(3);
  @$pb.TagNumber(1013)
  set disable($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(1013)
  $core.bool hasDisable() => $_has(3);
  @$pb.TagNumber(1013)
  void clearDisable() => clearField(1013);

  @$pb.TagNumber(1015)
  $core.bool get hidden => $_getBF(4);
  @$pb.TagNumber(1015)
  set hidden($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(1015)
  $core.bool hasHidden() => $_has(4);
  @$pb.TagNumber(1015)
  void clearHidden() => clearField(1015);

  @$pb.TagNumber(1017)
  $core.String get ifaceName => $_getSZ(5);
  @$pb.TagNumber(1017)
  set ifaceName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(1017)
  $core.bool hasIfaceName() => $_has(5);
  @$pb.TagNumber(1017)
  void clearIfaceName() => clearField(1017);

  @$pb.TagNumber(2001)
  AuthOpen get authOpen => $_getN(6);
  @$pb.TagNumber(2001)
  set authOpen(AuthOpen v) { setField(2001, v); }
  @$pb.TagNumber(2001)
  $core.bool hasAuthOpen() => $_has(6);
  @$pb.TagNumber(2001)
  void clearAuthOpen() => clearField(2001);
  @$pb.TagNumber(2001)
  AuthOpen ensureAuthOpen() => $_ensure(6);

  @$pb.TagNumber(2002)
  AuthWpa2 get authWpa2 => $_getN(7);
  @$pb.TagNumber(2002)
  set authWpa2(AuthWpa2 v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasAuthWpa2() => $_has(7);
  @$pb.TagNumber(2002)
  void clearAuthWpa2() => clearField(2002);
  @$pb.TagNumber(2002)
  AuthWpa2 ensureAuthWpa2() => $_ensure(7);

  @$pb.TagNumber(2003)
  AuthWpa3 get authWpa3 => $_getN(8);
  @$pb.TagNumber(2003)
  set authWpa3(AuthWpa3 v) { setField(2003, v); }
  @$pb.TagNumber(2003)
  $core.bool hasAuthWpa3() => $_has(8);
  @$pb.TagNumber(2003)
  void clearAuthWpa3() => clearField(2003);
  @$pb.TagNumber(2003)
  AuthWpa3 ensureAuthWpa3() => $_ensure(8);

  @$pb.TagNumber(2004)
  AuthWpa2Wpa3 get authWpa2Wpa3 => $_getN(9);
  @$pb.TagNumber(2004)
  set authWpa2Wpa3(AuthWpa2Wpa3 v) { setField(2004, v); }
  @$pb.TagNumber(2004)
  $core.bool hasAuthWpa2Wpa3() => $_has(9);
  @$pb.TagNumber(2004)
  void clearAuthWpa2Wpa3() => clearField(2004);
  @$pb.TagNumber(2004)
  AuthWpa2Wpa3 ensureAuthWpa2Wpa3() => $_ensure(9);

  @$pb.TagNumber(2005)
  AuthRadius get authRadius => $_getN(10);
  @$pb.TagNumber(2005)
  set authRadius(AuthRadius v) { setField(2005, v); }
  @$pb.TagNumber(2005)
  $core.bool hasAuthRadius() => $_has(10);
  @$pb.TagNumber(2005)
  void clearAuthRadius() => clearField(2005);
  @$pb.TagNumber(2005)
  AuthRadius ensureAuthRadius() => $_ensure(10);
}

class WifiConfig_Network extends $pb.GeneratedMessage {
  factory WifiConfig_Network({
    $core.String? ipv4,
    $core.Iterable<WifiConfig_BasicServiceSet>? basicServiceSets,
    $core.bool? clientIsolation,
    $core.bool? guest,
    $core.String? landing,
    $core.String? domain,
    $core.int? dhcpv4Start,
  }) {
    final $result = create();
    if (ipv4 != null) {
      $result.ipv4 = ipv4;
    }
    if (basicServiceSets != null) {
      $result.basicServiceSets.addAll(basicServiceSets);
    }
    if (clientIsolation != null) {
      $result.clientIsolation = clientIsolation;
    }
    if (guest != null) {
      $result.guest = guest;
    }
    if (landing != null) {
      $result.landing = landing;
    }
    if (domain != null) {
      $result.domain = domain;
    }
    if (dhcpv4Start != null) {
      $result.dhcpv4Start = dhcpv4Start;
    }
    return $result;
  }
  WifiConfig_Network._() : super();
  factory WifiConfig_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiConfig.Network', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1003, _omitFieldNames ? '' : 'ipv4')
    ..pc<WifiConfig_BasicServiceSet>(1007, _omitFieldNames ? '' : 'basicServiceSets', $pb.PbFieldType.PM, subBuilder: WifiConfig_BasicServiceSet.create)
    ..aOB(1008, _omitFieldNames ? '' : 'clientIsolation')
    ..aOB(1009, _omitFieldNames ? '' : 'guest')
    ..aOS(1010, _omitFieldNames ? '' : 'landing')
    ..aOS(1011, _omitFieldNames ? '' : 'domain')
    ..a<$core.int>(1012, _omitFieldNames ? '' : 'dhcpv4Start', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_Network clone() => WifiConfig_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_Network copyWith(void Function(WifiConfig_Network) updates) => super.copyWith((message) => updates(message as WifiConfig_Network)) as WifiConfig_Network;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiConfig_Network create() => WifiConfig_Network._();
  WifiConfig_Network createEmptyInstance() => create();
  static $pb.PbList<WifiConfig_Network> createRepeated() => $pb.PbList<WifiConfig_Network>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig_Network getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig_Network>(create);
  static WifiConfig_Network? _defaultInstance;

  @$pb.TagNumber(1003)
  $core.String get ipv4 => $_getSZ(0);
  @$pb.TagNumber(1003)
  set ipv4($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1003)
  $core.bool hasIpv4() => $_has(0);
  @$pb.TagNumber(1003)
  void clearIpv4() => clearField(1003);

  @$pb.TagNumber(1007)
  $core.List<WifiConfig_BasicServiceSet> get basicServiceSets => $_getList(1);

  @$pb.TagNumber(1008)
  $core.bool get clientIsolation => $_getBF(2);
  @$pb.TagNumber(1008)
  set clientIsolation($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(1008)
  $core.bool hasClientIsolation() => $_has(2);
  @$pb.TagNumber(1008)
  void clearClientIsolation() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.bool get guest => $_getBF(3);
  @$pb.TagNumber(1009)
  set guest($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(1009)
  $core.bool hasGuest() => $_has(3);
  @$pb.TagNumber(1009)
  void clearGuest() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.String get landing => $_getSZ(4);
  @$pb.TagNumber(1010)
  set landing($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(1010)
  $core.bool hasLanding() => $_has(4);
  @$pb.TagNumber(1010)
  void clearLanding() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.String get domain => $_getSZ(5);
  @$pb.TagNumber(1011)
  set domain($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(1011)
  $core.bool hasDomain() => $_has(5);
  @$pb.TagNumber(1011)
  void clearDomain() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.int get dhcpv4Start => $_getIZ(6);
  @$pb.TagNumber(1012)
  set dhcpv4Start($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(1012)
  $core.bool hasDhcpv4Start() => $_has(6);
  @$pb.TagNumber(1012)
  void clearDhcpv4Start() => clearField(1012);
}

/// SpaceX.API.Device.WifiConfig is a message:
class WifiConfig extends $pb.GeneratedMessage {
  factory WifiConfig({
    $core.String? networkName,
    $core.String? networkPassword,
    $core.String? countryCode,
  @$core.Deprecated('This field is deprecated.')
    $core.String? lanIpv4,
    $core.bool? setupComplete,
    $core.int? version,
  @$core.Deprecated('This field is deprecated.')
    WifiConfig_Security? wifiSecurity,
  @$core.Deprecated('This field is deprecated.')
    $core.String? networkName5ghz,
    $core.String? macWan,
    $core.String? macLan,
    $core.int? channel2ghz,
    $core.int? channel5ghz,
    $core.Iterable<PublicKey>? dynamicKeys,
    $core.bool? isRepeater,
    $core.int? bootCount,
    $core.Iterable<$core.String>? nameservers,
    $core.bool? bypassMode,
    $core.Map<$core.String, MeshConfig>? meshConfigs,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? enableRemoteSsh,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64? lastRemoteSshAccess,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyLanIpv4,
    $core.bool? applyDynamicKeys,
    $core.bool? dfsEnabled,
    $fixnum.Int64? incarnation,
    WifiConfig_WirelessMode? wirelessMode2ghz,
    WifiConfig_WirelessMode? wirelessMode5ghz,
    WifiConfig_HTBandwidth? htBandwidth2ghz,
    WifiConfig_HTBandwidth? htBandwidth5ghz,
    WifiConfig_VHTBandwidth? vhtBandwidth,
    $core.bool? isAviation,
    $core.bool? secureDns,
    $core.bool? apMode,
    $core.bool? disableMeshOnboarding,
    $core.bool? pinCountryCode,
    $core.bool? customPowerTable,
    $core.bool? usePublicServices,
    $core.bool? disableAutomatedSpeedtests,
    $core.int? channel5ghzHigh,
    WifiConfig_WirelessMode? wirelessMode5ghzHigh,
    WifiConfig_HTBandwidth? htBandwidth5ghzHigh,
    WifiConfig_VHTBandwidth? vhtBandwidth5ghzHigh,
    $core.bool? enableUmbilicalVlan,
    $core.Iterable<ClientName>? clientNames,
    $core.bool? outdoorMode,
    $core.bool? disable2ghz,
    $core.bool? disable5ghz,
    $core.bool? disable5ghzHigh,
    $core.bool? disableXMeshBackhaul,
  @$core.Deprecated('This field is deprecated.')
    $core.String? goldenBssid,
  @$core.Deprecated('This field is deprecated.')
    IfaceType? goldenIfaceType,
    TxPowerLevel? txPowerLevel2ghz,
    TxPowerLevel? txPowerLevel5ghz,
    TxPowerLevel? txPowerLevel5ghzHigh,
    $core.bool? disablePendingUpdateReboot,
    $core.Iterable<ClientConfig>? clientConfigs,
    $core.bool? disableSetWifiConfigFromController,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkName,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkPassword,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyWifiSecurity,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyNetworkName5ghz,
    $core.bool? applySetupComplete,
    $core.bool? applyChannel2ghz,
    $core.bool? applyChannel5ghz,
    $core.bool? applyChannel5ghzHigh,
    $core.bool? applyIsRepeater,
    $core.bool? applyMeshConfigs,
    $core.bool? applyNameservers,
    $core.bool? applyBypassMode,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyEnableRemoteSsh,
    $core.bool? applyDfsEnabled,
    $core.bool? applyWirelessMode2ghz,
    $core.bool? applyWirelessMode5ghz,
    $core.bool? applyHtBandwidth2ghz,
    $core.bool? applyHtBandwidth5ghz,
    $core.bool? applyVhtBandwidth,
    $core.bool? applyIsAviation,
    $core.bool? applySecureDns,
    $core.bool? applyApMode,
    $core.bool? applyDisableMeshOnboarding,
    $core.bool? applyUsePublicServices,
    $core.bool? applyDisableAutomatedSpeedtests,
    $core.bool? applyWirelessMode5ghzHigh,
    $core.bool? applyHtBandwidth5ghzHigh,
    $core.bool? applyVhtBandwidth5ghzHigh,
    $core.bool? applyEnableUmbilicalVlan,
    $core.bool? applyClientNames,
    $core.bool? applyOutdoorMode,
    $core.bool? applyDisable2ghz,
    $core.bool? applyDisable5ghz,
    $core.bool? applyDisable5ghzHigh,
    $core.bool? applyDisableXMeshBackhaul,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyGoldenBssid,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? applyGoldenIfaceType,
    $core.bool? applyTxPowerLevel2ghz,
    $core.bool? applyTxPowerLevel5ghz,
    $core.bool? applyTxPowerLevel5ghzHigh,
    $core.bool? applyCountryCode,
    $core.bool? applyPinCountryCode,
    $core.bool? applyCustomPowerTable,
    $core.bool? applyDisablePendingUpdateReboot,
    $core.bool? applyClientConfigs,
    $core.bool? applyDisableSetWifiConfigFromController,
    $core.Iterable<WifiConfig_Network>? networks,
    $core.bool? applyNetworks,
    BootInfo? boot,
    $core.Map<$core.String, MeshConfig>? meshConfigsUpdates,
  }) {
    final $result = create();
    if (networkName != null) {
      $result.networkName = networkName;
    }
    if (networkPassword != null) {
      $result.networkPassword = networkPassword;
    }
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    if (lanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.lanIpv4 = lanIpv4;
    }
    if (setupComplete != null) {
      $result.setupComplete = setupComplete;
    }
    if (version != null) {
      $result.version = version;
    }
    if (wifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.wifiSecurity = wifiSecurity;
    }
    if (networkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.networkName5ghz = networkName5ghz;
    }
    if (macWan != null) {
      $result.macWan = macWan;
    }
    if (macLan != null) {
      $result.macLan = macLan;
    }
    if (channel2ghz != null) {
      $result.channel2ghz = channel2ghz;
    }
    if (channel5ghz != null) {
      $result.channel5ghz = channel5ghz;
    }
    if (dynamicKeys != null) {
      $result.dynamicKeys.addAll(dynamicKeys);
    }
    if (isRepeater != null) {
      $result.isRepeater = isRepeater;
    }
    if (bootCount != null) {
      $result.bootCount = bootCount;
    }
    if (nameservers != null) {
      $result.nameservers.addAll(nameservers);
    }
    if (bypassMode != null) {
      $result.bypassMode = bypassMode;
    }
    if (meshConfigs != null) {
      $result.meshConfigs.addAll(meshConfigs);
    }
    if (enableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.enableRemoteSsh = enableRemoteSsh;
    }
    if (lastRemoteSshAccess != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.lastRemoteSshAccess = lastRemoteSshAccess;
    }
    if (applyLanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyLanIpv4 = applyLanIpv4;
    }
    if (applyDynamicKeys != null) {
      $result.applyDynamicKeys = applyDynamicKeys;
    }
    if (dfsEnabled != null) {
      $result.dfsEnabled = dfsEnabled;
    }
    if (incarnation != null) {
      $result.incarnation = incarnation;
    }
    if (wirelessMode2ghz != null) {
      $result.wirelessMode2ghz = wirelessMode2ghz;
    }
    if (wirelessMode5ghz != null) {
      $result.wirelessMode5ghz = wirelessMode5ghz;
    }
    if (htBandwidth2ghz != null) {
      $result.htBandwidth2ghz = htBandwidth2ghz;
    }
    if (htBandwidth5ghz != null) {
      $result.htBandwidth5ghz = htBandwidth5ghz;
    }
    if (vhtBandwidth != null) {
      $result.vhtBandwidth = vhtBandwidth;
    }
    if (isAviation != null) {
      $result.isAviation = isAviation;
    }
    if (secureDns != null) {
      $result.secureDns = secureDns;
    }
    if (apMode != null) {
      $result.apMode = apMode;
    }
    if (disableMeshOnboarding != null) {
      $result.disableMeshOnboarding = disableMeshOnboarding;
    }
    if (pinCountryCode != null) {
      $result.pinCountryCode = pinCountryCode;
    }
    if (customPowerTable != null) {
      $result.customPowerTable = customPowerTable;
    }
    if (usePublicServices != null) {
      $result.usePublicServices = usePublicServices;
    }
    if (disableAutomatedSpeedtests != null) {
      $result.disableAutomatedSpeedtests = disableAutomatedSpeedtests;
    }
    if (channel5ghzHigh != null) {
      $result.channel5ghzHigh = channel5ghzHigh;
    }
    if (wirelessMode5ghzHigh != null) {
      $result.wirelessMode5ghzHigh = wirelessMode5ghzHigh;
    }
    if (htBandwidth5ghzHigh != null) {
      $result.htBandwidth5ghzHigh = htBandwidth5ghzHigh;
    }
    if (vhtBandwidth5ghzHigh != null) {
      $result.vhtBandwidth5ghzHigh = vhtBandwidth5ghzHigh;
    }
    if (enableUmbilicalVlan != null) {
      $result.enableUmbilicalVlan = enableUmbilicalVlan;
    }
    if (clientNames != null) {
      $result.clientNames.addAll(clientNames);
    }
    if (outdoorMode != null) {
      $result.outdoorMode = outdoorMode;
    }
    if (disable2ghz != null) {
      $result.disable2ghz = disable2ghz;
    }
    if (disable5ghz != null) {
      $result.disable5ghz = disable5ghz;
    }
    if (disable5ghzHigh != null) {
      $result.disable5ghzHigh = disable5ghzHigh;
    }
    if (disableXMeshBackhaul != null) {
      $result.disableXMeshBackhaul = disableXMeshBackhaul;
    }
    if (goldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.goldenBssid = goldenBssid;
    }
    if (goldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.goldenIfaceType = goldenIfaceType;
    }
    if (txPowerLevel2ghz != null) {
      $result.txPowerLevel2ghz = txPowerLevel2ghz;
    }
    if (txPowerLevel5ghz != null) {
      $result.txPowerLevel5ghz = txPowerLevel5ghz;
    }
    if (txPowerLevel5ghzHigh != null) {
      $result.txPowerLevel5ghzHigh = txPowerLevel5ghzHigh;
    }
    if (disablePendingUpdateReboot != null) {
      $result.disablePendingUpdateReboot = disablePendingUpdateReboot;
    }
    if (clientConfigs != null) {
      $result.clientConfigs.addAll(clientConfigs);
    }
    if (disableSetWifiConfigFromController != null) {
      $result.disableSetWifiConfigFromController = disableSetWifiConfigFromController;
    }
    if (applyNetworkName != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyNetworkName = applyNetworkName;
    }
    if (applyNetworkPassword != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyNetworkPassword = applyNetworkPassword;
    }
    if (applyWifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyWifiSecurity = applyWifiSecurity;
    }
    if (applyNetworkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyNetworkName5ghz = applyNetworkName5ghz;
    }
    if (applySetupComplete != null) {
      $result.applySetupComplete = applySetupComplete;
    }
    if (applyChannel2ghz != null) {
      $result.applyChannel2ghz = applyChannel2ghz;
    }
    if (applyChannel5ghz != null) {
      $result.applyChannel5ghz = applyChannel5ghz;
    }
    if (applyChannel5ghzHigh != null) {
      $result.applyChannel5ghzHigh = applyChannel5ghzHigh;
    }
    if (applyIsRepeater != null) {
      $result.applyIsRepeater = applyIsRepeater;
    }
    if (applyMeshConfigs != null) {
      $result.applyMeshConfigs = applyMeshConfigs;
    }
    if (applyNameservers != null) {
      $result.applyNameservers = applyNameservers;
    }
    if (applyBypassMode != null) {
      $result.applyBypassMode = applyBypassMode;
    }
    if (applyEnableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyEnableRemoteSsh = applyEnableRemoteSsh;
    }
    if (applyDfsEnabled != null) {
      $result.applyDfsEnabled = applyDfsEnabled;
    }
    if (applyWirelessMode2ghz != null) {
      $result.applyWirelessMode2ghz = applyWirelessMode2ghz;
    }
    if (applyWirelessMode5ghz != null) {
      $result.applyWirelessMode5ghz = applyWirelessMode5ghz;
    }
    if (applyHtBandwidth2ghz != null) {
      $result.applyHtBandwidth2ghz = applyHtBandwidth2ghz;
    }
    if (applyHtBandwidth5ghz != null) {
      $result.applyHtBandwidth5ghz = applyHtBandwidth5ghz;
    }
    if (applyVhtBandwidth != null) {
      $result.applyVhtBandwidth = applyVhtBandwidth;
    }
    if (applyIsAviation != null) {
      $result.applyIsAviation = applyIsAviation;
    }
    if (applySecureDns != null) {
      $result.applySecureDns = applySecureDns;
    }
    if (applyApMode != null) {
      $result.applyApMode = applyApMode;
    }
    if (applyDisableMeshOnboarding != null) {
      $result.applyDisableMeshOnboarding = applyDisableMeshOnboarding;
    }
    if (applyUsePublicServices != null) {
      $result.applyUsePublicServices = applyUsePublicServices;
    }
    if (applyDisableAutomatedSpeedtests != null) {
      $result.applyDisableAutomatedSpeedtests = applyDisableAutomatedSpeedtests;
    }
    if (applyWirelessMode5ghzHigh != null) {
      $result.applyWirelessMode5ghzHigh = applyWirelessMode5ghzHigh;
    }
    if (applyHtBandwidth5ghzHigh != null) {
      $result.applyHtBandwidth5ghzHigh = applyHtBandwidth5ghzHigh;
    }
    if (applyVhtBandwidth5ghzHigh != null) {
      $result.applyVhtBandwidth5ghzHigh = applyVhtBandwidth5ghzHigh;
    }
    if (applyEnableUmbilicalVlan != null) {
      $result.applyEnableUmbilicalVlan = applyEnableUmbilicalVlan;
    }
    if (applyClientNames != null) {
      $result.applyClientNames = applyClientNames;
    }
    if (applyOutdoorMode != null) {
      $result.applyOutdoorMode = applyOutdoorMode;
    }
    if (applyDisable2ghz != null) {
      $result.applyDisable2ghz = applyDisable2ghz;
    }
    if (applyDisable5ghz != null) {
      $result.applyDisable5ghz = applyDisable5ghz;
    }
    if (applyDisable5ghzHigh != null) {
      $result.applyDisable5ghzHigh = applyDisable5ghzHigh;
    }
    if (applyDisableXMeshBackhaul != null) {
      $result.applyDisableXMeshBackhaul = applyDisableXMeshBackhaul;
    }
    if (applyGoldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyGoldenBssid = applyGoldenBssid;
    }
    if (applyGoldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.applyGoldenIfaceType = applyGoldenIfaceType;
    }
    if (applyTxPowerLevel2ghz != null) {
      $result.applyTxPowerLevel2ghz = applyTxPowerLevel2ghz;
    }
    if (applyTxPowerLevel5ghz != null) {
      $result.applyTxPowerLevel5ghz = applyTxPowerLevel5ghz;
    }
    if (applyTxPowerLevel5ghzHigh != null) {
      $result.applyTxPowerLevel5ghzHigh = applyTxPowerLevel5ghzHigh;
    }
    if (applyCountryCode != null) {
      $result.applyCountryCode = applyCountryCode;
    }
    if (applyPinCountryCode != null) {
      $result.applyPinCountryCode = applyPinCountryCode;
    }
    if (applyCustomPowerTable != null) {
      $result.applyCustomPowerTable = applyCustomPowerTable;
    }
    if (applyDisablePendingUpdateReboot != null) {
      $result.applyDisablePendingUpdateReboot = applyDisablePendingUpdateReboot;
    }
    if (applyClientConfigs != null) {
      $result.applyClientConfigs = applyClientConfigs;
    }
    if (applyDisableSetWifiConfigFromController != null) {
      $result.applyDisableSetWifiConfigFromController = applyDisableSetWifiConfigFromController;
    }
    if (networks != null) {
      $result.networks.addAll(networks);
    }
    if (applyNetworks != null) {
      $result.applyNetworks = applyNetworks;
    }
    if (boot != null) {
      $result.boot = boot;
    }
    if (meshConfigsUpdates != null) {
      $result.meshConfigsUpdates.addAll(meshConfigsUpdates);
    }
    return $result;
  }
  WifiConfig._() : super();
  factory WifiConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'networkName')
    ..aOS(2, _omitFieldNames ? '' : 'networkPassword')
    ..aOS(3, _omitFieldNames ? '' : 'countryCode')
    ..aOS(5, _omitFieldNames ? '' : 'lanIpv4')
    ..aOB(7, _omitFieldNames ? '' : 'setupComplete')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..e<WifiConfig_Security>(10, _omitFieldNames ? '' : 'wifiSecurity', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Security.UNKNOWN, valueOf: WifiConfig_Security.valueOf, enumValues: WifiConfig_Security.values)
    ..aOS(11, _omitFieldNames ? '' : 'networkName5ghz', protoName: 'network_name_5ghz')
    ..aOS(12, _omitFieldNames ? '' : 'macWan')
    ..aOS(13, _omitFieldNames ? '' : 'macLan')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'channel2ghz', $pb.PbFieldType.OU3, protoName: 'channel_2ghz')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'channel5ghz', $pb.PbFieldType.OU3, protoName: 'channel_5ghz')
    ..pc<PublicKey>(22, _omitFieldNames ? '' : 'dynamicKeys', $pb.PbFieldType.PM, subBuilder: PublicKey.create)
    ..aOB(23, _omitFieldNames ? '' : 'isRepeater')
    ..a<$core.int>(26, _omitFieldNames ? '' : 'bootCount', $pb.PbFieldType.O3)
    ..pPS(30, _omitFieldNames ? '' : 'nameservers')
    ..aOB(31, _omitFieldNames ? '' : 'bypassMode')
    ..m<$core.String, MeshConfig>(33, _omitFieldNames ? '' : 'meshConfigs', entryClassName: 'WifiConfig.MeshConfigsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, valueDefaultOrMaker: MeshConfig.getDefault, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..aOB(34, _omitFieldNames ? '' : 'enableRemoteSsh')
    ..aInt64(35, _omitFieldNames ? '' : 'lastRemoteSshAccess')
    ..aOB(37, _omitFieldNames ? '' : 'applyLanIpv4')
    ..aOB(39, _omitFieldNames ? '' : 'applyDynamicKeys')
    ..aOB(42, _omitFieldNames ? '' : 'dfsEnabled')
    ..a<$fixnum.Int64>(43, _omitFieldNames ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<WifiConfig_WirelessMode>(44, _omitFieldNames ? '' : 'wirelessMode2ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_2ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_WirelessMode>(45, _omitFieldNames ? '' : 'wirelessMode5ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(46, _omitFieldNames ? '' : 'htBandwidth2ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_2ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_HTBandwidth>(47, _omitFieldNames ? '' : 'htBandwidth5ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(48, _omitFieldNames ? '' : 'vhtBandwidth', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(49, _omitFieldNames ? '' : 'isAviation')
    ..aOB(50, _omitFieldNames ? '' : 'secureDns')
    ..aOB(51, _omitFieldNames ? '' : 'apMode')
    ..aOB(52, _omitFieldNames ? '' : 'disableMeshOnboarding')
    ..aOB(53, _omitFieldNames ? '' : 'pinCountryCode')
    ..aOB(54, _omitFieldNames ? '' : 'customPowerTable')
    ..aOB(55, _omitFieldNames ? '' : 'usePublicServices')
    ..aOB(56, _omitFieldNames ? '' : 'disableAutomatedSpeedtests')
    ..a<$core.int>(57, _omitFieldNames ? '' : 'channel5ghzHigh', $pb.PbFieldType.OU3, protoName: 'channel_5ghz_high')
    ..e<WifiConfig_WirelessMode>(58, _omitFieldNames ? '' : 'wirelessMode5ghzHigh', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz_high', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(59, _omitFieldNames ? '' : 'htBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(60, _omitFieldNames ? '' : 'vhtBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'vht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(61, _omitFieldNames ? '' : 'enableUmbilicalVlan')
    ..pc<ClientName>(62, _omitFieldNames ? '' : 'clientNames', $pb.PbFieldType.PM, subBuilder: ClientName.create)
    ..aOB(63, _omitFieldNames ? '' : 'outdoorMode')
    ..aOB(64, _omitFieldNames ? '' : 'disable2ghz', protoName: 'disable_2ghz')
    ..aOB(65, _omitFieldNames ? '' : 'disable5ghz', protoName: 'disable_5ghz')
    ..aOB(66, _omitFieldNames ? '' : 'disable5ghzHigh', protoName: 'disable_5ghz_high')
    ..aOB(67, _omitFieldNames ? '' : 'disableXMeshBackhaul')
    ..aOS(68, _omitFieldNames ? '' : 'goldenBssid')
    ..e<IfaceType>(69, _omitFieldNames ? '' : 'goldenIfaceType', $pb.PbFieldType.OE, defaultOrMaker: IfaceType.IFACE_TYPE_UNKNOWN, valueOf: IfaceType.valueOf, enumValues: IfaceType.values)
    ..e<TxPowerLevel>(70, _omitFieldNames ? '' : 'txPowerLevel2ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_2ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(71, _omitFieldNames ? '' : 'txPowerLevel5ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(72, _omitFieldNames ? '' : 'txPowerLevel5ghzHigh', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz_high', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..aOB(73, _omitFieldNames ? '' : 'disablePendingUpdateReboot')
    ..pc<ClientConfig>(74, _omitFieldNames ? '' : 'clientConfigs', $pb.PbFieldType.PM, subBuilder: ClientConfig.create)
    ..aOB(75, _omitFieldNames ? '' : 'disableSetWifiConfigFromController')
    ..aOB(1001, _omitFieldNames ? '' : 'applyNetworkName')
    ..aOB(1002, _omitFieldNames ? '' : 'applyNetworkPassword')
    ..aOB(1004, _omitFieldNames ? '' : 'applyWifiSecurity')
    ..aOB(1005, _omitFieldNames ? '' : 'applyNetworkName5ghz', protoName: 'apply_network_name_5ghz')
    ..aOB(1010, _omitFieldNames ? '' : 'applySetupComplete')
    ..aOB(1013, _omitFieldNames ? '' : 'applyChannel2ghz', protoName: 'apply_channel_2ghz')
    ..aOB(1014, _omitFieldNames ? '' : 'applyChannel5ghz', protoName: 'apply_channel_5ghz')
    ..aOB(1016, _omitFieldNames ? '' : 'applyChannel5ghzHigh', protoName: 'apply_channel_5ghz_high')
    ..aOB(1031, _omitFieldNames ? '' : 'applyIsRepeater')
    ..aOB(1033, _omitFieldNames ? '' : 'applyMeshConfigs')
    ..aOB(1054, _omitFieldNames ? '' : 'applyNameservers')
    ..aOB(1055, _omitFieldNames ? '' : 'applyBypassMode')
    ..aOB(1057, _omitFieldNames ? '' : 'applyEnableRemoteSsh')
    ..aOB(1058, _omitFieldNames ? '' : 'applyDfsEnabled')
    ..aOB(1059, _omitFieldNames ? '' : 'applyWirelessMode2ghz', protoName: 'apply_wireless_mode_2ghz')
    ..aOB(1060, _omitFieldNames ? '' : 'applyWirelessMode5ghz', protoName: 'apply_wireless_mode_5ghz')
    ..aOB(1061, _omitFieldNames ? '' : 'applyHtBandwidth2ghz', protoName: 'apply_ht_bandwidth_2ghz')
    ..aOB(1062, _omitFieldNames ? '' : 'applyHtBandwidth5ghz', protoName: 'apply_ht_bandwidth_5ghz')
    ..aOB(1063, _omitFieldNames ? '' : 'applyVhtBandwidth')
    ..aOB(1064, _omitFieldNames ? '' : 'applyIsAviation')
    ..aOB(1065, _omitFieldNames ? '' : 'applySecureDns')
    ..aOB(1066, _omitFieldNames ? '' : 'applyApMode')
    ..aOB(1067, _omitFieldNames ? '' : 'applyDisableMeshOnboarding')
    ..aOB(1068, _omitFieldNames ? '' : 'applyUsePublicServices')
    ..aOB(1069, _omitFieldNames ? '' : 'applyDisableAutomatedSpeedtests')
    ..aOB(1070, _omitFieldNames ? '' : 'applyWirelessMode5ghzHigh', protoName: 'apply_wireless_mode_5ghz_high')
    ..aOB(1071, _omitFieldNames ? '' : 'applyHtBandwidth5ghzHigh', protoName: 'apply_ht_bandwidth_5ghz_high')
    ..aOB(1072, _omitFieldNames ? '' : 'applyVhtBandwidth5ghzHigh', protoName: 'apply_vht_bandwidth_5ghz_high')
    ..aOB(1073, _omitFieldNames ? '' : 'applyEnableUmbilicalVlan')
    ..aOB(1074, _omitFieldNames ? '' : 'applyClientNames')
    ..aOB(1075, _omitFieldNames ? '' : 'applyOutdoorMode')
    ..aOB(1076, _omitFieldNames ? '' : 'applyDisable2ghz', protoName: 'apply_disable_2ghz')
    ..aOB(1077, _omitFieldNames ? '' : 'applyDisable5ghz', protoName: 'apply_disable_5ghz')
    ..aOB(1078, _omitFieldNames ? '' : 'applyDisable5ghzHigh', protoName: 'apply_disable_5ghz_high')
    ..aOB(1079, _omitFieldNames ? '' : 'applyDisableXMeshBackhaul')
    ..aOB(1080, _omitFieldNames ? '' : 'applyGoldenBssid')
    ..aOB(1081, _omitFieldNames ? '' : 'applyGoldenIfaceType')
    ..aOB(1082, _omitFieldNames ? '' : 'applyTxPowerLevel2ghz', protoName: 'apply_tx_power_level_2ghz')
    ..aOB(1083, _omitFieldNames ? '' : 'applyTxPowerLevel5ghz', protoName: 'apply_tx_power_level_5ghz')
    ..aOB(1084, _omitFieldNames ? '' : 'applyTxPowerLevel5ghzHigh', protoName: 'apply_tx_power_level_5ghz_high')
    ..aOB(1085, _omitFieldNames ? '' : 'applyCountryCode')
    ..aOB(1086, _omitFieldNames ? '' : 'applyPinCountryCode')
    ..aOB(1087, _omitFieldNames ? '' : 'applyCustomPowerTable')
    ..aOB(1088, _omitFieldNames ? '' : 'applyDisablePendingUpdateReboot')
    ..aOB(1089, _omitFieldNames ? '' : 'applyClientConfigs')
    ..aOB(1090, _omitFieldNames ? '' : 'applyDisableSetWifiConfigFromController')
    ..pc<WifiConfig_Network>(1100, _omitFieldNames ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiConfig_Network.create)
    ..aOB(1101, _omitFieldNames ? '' : 'applyNetworks')
    ..aOM<BootInfo>(3001, _omitFieldNames ? '' : 'boot', subBuilder: BootInfo.create)
    ..m<$core.String, MeshConfig>(3033, _omitFieldNames ? '' : 'meshConfigsUpdates', entryClassName: 'WifiConfig.MeshConfigsUpdatesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, valueDefaultOrMaker: MeshConfig.getDefault, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig clone() => WifiConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig copyWith(void Function(WifiConfig) updates) => super.copyWith((message) => updates(message as WifiConfig)) as WifiConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiConfig create() => WifiConfig._();
  WifiConfig createEmptyInstance() => create();
  static $pb.PbList<WifiConfig> createRepeated() => $pb.PbList<WifiConfig>();
  @$core.pragma('dart2js:noInline')
  static WifiConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiConfig>(create);
  static WifiConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get networkName => $_getSZ(0);
  @$pb.TagNumber(1)
  set networkName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkName() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get networkPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set networkPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetworkPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get countryCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set countryCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountryCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountryCode() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get lanIpv4 => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set lanIpv4($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanIpv4() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanIpv4() => clearField(5);

  @$pb.TagNumber(7)
  $core.bool get setupComplete => $_getBF(4);
  @$pb.TagNumber(7)
  set setupComplete($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasSetupComplete() => $_has(4);
  @$pb.TagNumber(7)
  void clearSetupComplete() => clearField(7);

  @$pb.TagNumber(9)
  $core.int get version => $_getIZ(5);
  @$pb.TagNumber(9)
  set version($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(5);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  WifiConfig_Security get wifiSecurity => $_getN(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set wifiSecurity(WifiConfig_Security v) { setField(10, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasWifiSecurity() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearWifiSecurity() => clearField(10);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.String get networkName5ghz => $_getSZ(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set networkName5ghz($core.String v) { $_setString(7, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasNetworkName5ghz() => $_has(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearNetworkName5ghz() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get macWan => $_getSZ(8);
  @$pb.TagNumber(12)
  set macWan($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasMacWan() => $_has(8);
  @$pb.TagNumber(12)
  void clearMacWan() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get macLan => $_getSZ(9);
  @$pb.TagNumber(13)
  set macLan($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasMacLan() => $_has(9);
  @$pb.TagNumber(13)
  void clearMacLan() => clearField(13);

  @$pb.TagNumber(19)
  $core.int get channel2ghz => $_getIZ(10);
  @$pb.TagNumber(19)
  set channel2ghz($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(19)
  $core.bool hasChannel2ghz() => $_has(10);
  @$pb.TagNumber(19)
  void clearChannel2ghz() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get channel5ghz => $_getIZ(11);
  @$pb.TagNumber(20)
  set channel5ghz($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(20)
  $core.bool hasChannel5ghz() => $_has(11);
  @$pb.TagNumber(20)
  void clearChannel5ghz() => clearField(20);

  @$pb.TagNumber(22)
  $core.List<PublicKey> get dynamicKeys => $_getList(12);

  @$pb.TagNumber(23)
  $core.bool get isRepeater => $_getBF(13);
  @$pb.TagNumber(23)
  set isRepeater($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(23)
  $core.bool hasIsRepeater() => $_has(13);
  @$pb.TagNumber(23)
  void clearIsRepeater() => clearField(23);

  @$pb.TagNumber(26)
  $core.int get bootCount => $_getIZ(14);
  @$pb.TagNumber(26)
  set bootCount($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(26)
  $core.bool hasBootCount() => $_has(14);
  @$pb.TagNumber(26)
  void clearBootCount() => clearField(26);

  @$pb.TagNumber(30)
  $core.List<$core.String> get nameservers => $_getList(15);

  @$pb.TagNumber(31)
  $core.bool get bypassMode => $_getBF(16);
  @$pb.TagNumber(31)
  set bypassMode($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(31)
  $core.bool hasBypassMode() => $_has(16);
  @$pb.TagNumber(31)
  void clearBypassMode() => clearField(31);

  @$pb.TagNumber(33)
  $core.Map<$core.String, MeshConfig> get meshConfigs => $_getMap(17);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  $core.bool get enableRemoteSsh => $_getBF(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  set enableRemoteSsh($core.bool v) { $_setBool(18, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  $core.bool hasEnableRemoteSsh() => $_has(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(34)
  void clearEnableRemoteSsh() => clearField(34);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $fixnum.Int64 get lastRemoteSshAccess => $_getI64(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  set lastRemoteSshAccess($fixnum.Int64 v) { $_setInt64(19, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $core.bool hasLastRemoteSshAccess() => $_has(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  void clearLastRemoteSshAccess() => clearField(35);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  $core.bool get applyLanIpv4 => $_getBF(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  set applyLanIpv4($core.bool v) { $_setBool(20, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  $core.bool hasApplyLanIpv4() => $_has(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(37)
  void clearApplyLanIpv4() => clearField(37);

  @$pb.TagNumber(39)
  $core.bool get applyDynamicKeys => $_getBF(21);
  @$pb.TagNumber(39)
  set applyDynamicKeys($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(39)
  $core.bool hasApplyDynamicKeys() => $_has(21);
  @$pb.TagNumber(39)
  void clearApplyDynamicKeys() => clearField(39);

  @$pb.TagNumber(42)
  $core.bool get dfsEnabled => $_getBF(22);
  @$pb.TagNumber(42)
  set dfsEnabled($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(42)
  $core.bool hasDfsEnabled() => $_has(22);
  @$pb.TagNumber(42)
  void clearDfsEnabled() => clearField(42);

  @$pb.TagNumber(43)
  $fixnum.Int64 get incarnation => $_getI64(23);
  @$pb.TagNumber(43)
  set incarnation($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(43)
  $core.bool hasIncarnation() => $_has(23);
  @$pb.TagNumber(43)
  void clearIncarnation() => clearField(43);

  @$pb.TagNumber(44)
  WifiConfig_WirelessMode get wirelessMode2ghz => $_getN(24);
  @$pb.TagNumber(44)
  set wirelessMode2ghz(WifiConfig_WirelessMode v) { setField(44, v); }
  @$pb.TagNumber(44)
  $core.bool hasWirelessMode2ghz() => $_has(24);
  @$pb.TagNumber(44)
  void clearWirelessMode2ghz() => clearField(44);

  @$pb.TagNumber(45)
  WifiConfig_WirelessMode get wirelessMode5ghz => $_getN(25);
  @$pb.TagNumber(45)
  set wirelessMode5ghz(WifiConfig_WirelessMode v) { setField(45, v); }
  @$pb.TagNumber(45)
  $core.bool hasWirelessMode5ghz() => $_has(25);
  @$pb.TagNumber(45)
  void clearWirelessMode5ghz() => clearField(45);

  @$pb.TagNumber(46)
  WifiConfig_HTBandwidth get htBandwidth2ghz => $_getN(26);
  @$pb.TagNumber(46)
  set htBandwidth2ghz(WifiConfig_HTBandwidth v) { setField(46, v); }
  @$pb.TagNumber(46)
  $core.bool hasHtBandwidth2ghz() => $_has(26);
  @$pb.TagNumber(46)
  void clearHtBandwidth2ghz() => clearField(46);

  @$pb.TagNumber(47)
  WifiConfig_HTBandwidth get htBandwidth5ghz => $_getN(27);
  @$pb.TagNumber(47)
  set htBandwidth5ghz(WifiConfig_HTBandwidth v) { setField(47, v); }
  @$pb.TagNumber(47)
  $core.bool hasHtBandwidth5ghz() => $_has(27);
  @$pb.TagNumber(47)
  void clearHtBandwidth5ghz() => clearField(47);

  @$pb.TagNumber(48)
  WifiConfig_VHTBandwidth get vhtBandwidth => $_getN(28);
  @$pb.TagNumber(48)
  set vhtBandwidth(WifiConfig_VHTBandwidth v) { setField(48, v); }
  @$pb.TagNumber(48)
  $core.bool hasVhtBandwidth() => $_has(28);
  @$pb.TagNumber(48)
  void clearVhtBandwidth() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get isAviation => $_getBF(29);
  @$pb.TagNumber(49)
  set isAviation($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(49)
  $core.bool hasIsAviation() => $_has(29);
  @$pb.TagNumber(49)
  void clearIsAviation() => clearField(49);

  @$pb.TagNumber(50)
  $core.bool get secureDns => $_getBF(30);
  @$pb.TagNumber(50)
  set secureDns($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(50)
  $core.bool hasSecureDns() => $_has(30);
  @$pb.TagNumber(50)
  void clearSecureDns() => clearField(50);

  @$pb.TagNumber(51)
  $core.bool get apMode => $_getBF(31);
  @$pb.TagNumber(51)
  set apMode($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(51)
  $core.bool hasApMode() => $_has(31);
  @$pb.TagNumber(51)
  void clearApMode() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get disableMeshOnboarding => $_getBF(32);
  @$pb.TagNumber(52)
  set disableMeshOnboarding($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(52)
  $core.bool hasDisableMeshOnboarding() => $_has(32);
  @$pb.TagNumber(52)
  void clearDisableMeshOnboarding() => clearField(52);

  @$pb.TagNumber(53)
  $core.bool get pinCountryCode => $_getBF(33);
  @$pb.TagNumber(53)
  set pinCountryCode($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(53)
  $core.bool hasPinCountryCode() => $_has(33);
  @$pb.TagNumber(53)
  void clearPinCountryCode() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get customPowerTable => $_getBF(34);
  @$pb.TagNumber(54)
  set customPowerTable($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(54)
  $core.bool hasCustomPowerTable() => $_has(34);
  @$pb.TagNumber(54)
  void clearCustomPowerTable() => clearField(54);

  @$pb.TagNumber(55)
  $core.bool get usePublicServices => $_getBF(35);
  @$pb.TagNumber(55)
  set usePublicServices($core.bool v) { $_setBool(35, v); }
  @$pb.TagNumber(55)
  $core.bool hasUsePublicServices() => $_has(35);
  @$pb.TagNumber(55)
  void clearUsePublicServices() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get disableAutomatedSpeedtests => $_getBF(36);
  @$pb.TagNumber(56)
  set disableAutomatedSpeedtests($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(56)
  $core.bool hasDisableAutomatedSpeedtests() => $_has(36);
  @$pb.TagNumber(56)
  void clearDisableAutomatedSpeedtests() => clearField(56);

  @$pb.TagNumber(57)
  $core.int get channel5ghzHigh => $_getIZ(37);
  @$pb.TagNumber(57)
  set channel5ghzHigh($core.int v) { $_setUnsignedInt32(37, v); }
  @$pb.TagNumber(57)
  $core.bool hasChannel5ghzHigh() => $_has(37);
  @$pb.TagNumber(57)
  void clearChannel5ghzHigh() => clearField(57);

  @$pb.TagNumber(58)
  WifiConfig_WirelessMode get wirelessMode5ghzHigh => $_getN(38);
  @$pb.TagNumber(58)
  set wirelessMode5ghzHigh(WifiConfig_WirelessMode v) { setField(58, v); }
  @$pb.TagNumber(58)
  $core.bool hasWirelessMode5ghzHigh() => $_has(38);
  @$pb.TagNumber(58)
  void clearWirelessMode5ghzHigh() => clearField(58);

  @$pb.TagNumber(59)
  WifiConfig_HTBandwidth get htBandwidth5ghzHigh => $_getN(39);
  @$pb.TagNumber(59)
  set htBandwidth5ghzHigh(WifiConfig_HTBandwidth v) { setField(59, v); }
  @$pb.TagNumber(59)
  $core.bool hasHtBandwidth5ghzHigh() => $_has(39);
  @$pb.TagNumber(59)
  void clearHtBandwidth5ghzHigh() => clearField(59);

  @$pb.TagNumber(60)
  WifiConfig_VHTBandwidth get vhtBandwidth5ghzHigh => $_getN(40);
  @$pb.TagNumber(60)
  set vhtBandwidth5ghzHigh(WifiConfig_VHTBandwidth v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasVhtBandwidth5ghzHigh() => $_has(40);
  @$pb.TagNumber(60)
  void clearVhtBandwidth5ghzHigh() => clearField(60);

  @$pb.TagNumber(61)
  $core.bool get enableUmbilicalVlan => $_getBF(41);
  @$pb.TagNumber(61)
  set enableUmbilicalVlan($core.bool v) { $_setBool(41, v); }
  @$pb.TagNumber(61)
  $core.bool hasEnableUmbilicalVlan() => $_has(41);
  @$pb.TagNumber(61)
  void clearEnableUmbilicalVlan() => clearField(61);

  @$pb.TagNumber(62)
  $core.List<ClientName> get clientNames => $_getList(42);

  @$pb.TagNumber(63)
  $core.bool get outdoorMode => $_getBF(43);
  @$pb.TagNumber(63)
  set outdoorMode($core.bool v) { $_setBool(43, v); }
  @$pb.TagNumber(63)
  $core.bool hasOutdoorMode() => $_has(43);
  @$pb.TagNumber(63)
  void clearOutdoorMode() => clearField(63);

  @$pb.TagNumber(64)
  $core.bool get disable2ghz => $_getBF(44);
  @$pb.TagNumber(64)
  set disable2ghz($core.bool v) { $_setBool(44, v); }
  @$pb.TagNumber(64)
  $core.bool hasDisable2ghz() => $_has(44);
  @$pb.TagNumber(64)
  void clearDisable2ghz() => clearField(64);

  @$pb.TagNumber(65)
  $core.bool get disable5ghz => $_getBF(45);
  @$pb.TagNumber(65)
  set disable5ghz($core.bool v) { $_setBool(45, v); }
  @$pb.TagNumber(65)
  $core.bool hasDisable5ghz() => $_has(45);
  @$pb.TagNumber(65)
  void clearDisable5ghz() => clearField(65);

  @$pb.TagNumber(66)
  $core.bool get disable5ghzHigh => $_getBF(46);
  @$pb.TagNumber(66)
  set disable5ghzHigh($core.bool v) { $_setBool(46, v); }
  @$pb.TagNumber(66)
  $core.bool hasDisable5ghzHigh() => $_has(46);
  @$pb.TagNumber(66)
  void clearDisable5ghzHigh() => clearField(66);

  @$pb.TagNumber(67)
  $core.bool get disableXMeshBackhaul => $_getBF(47);
  @$pb.TagNumber(67)
  set disableXMeshBackhaul($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(67)
  $core.bool hasDisableXMeshBackhaul() => $_has(47);
  @$pb.TagNumber(67)
  void clearDisableXMeshBackhaul() => clearField(67);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  $core.String get goldenBssid => $_getSZ(48);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  set goldenBssid($core.String v) { $_setString(48, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  $core.bool hasGoldenBssid() => $_has(48);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(68)
  void clearGoldenBssid() => clearField(68);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  IfaceType get goldenIfaceType => $_getN(49);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  set goldenIfaceType(IfaceType v) { setField(69, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  $core.bool hasGoldenIfaceType() => $_has(49);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(69)
  void clearGoldenIfaceType() => clearField(69);

  @$pb.TagNumber(70)
  TxPowerLevel get txPowerLevel2ghz => $_getN(50);
  @$pb.TagNumber(70)
  set txPowerLevel2ghz(TxPowerLevel v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasTxPowerLevel2ghz() => $_has(50);
  @$pb.TagNumber(70)
  void clearTxPowerLevel2ghz() => clearField(70);

  @$pb.TagNumber(71)
  TxPowerLevel get txPowerLevel5ghz => $_getN(51);
  @$pb.TagNumber(71)
  set txPowerLevel5ghz(TxPowerLevel v) { setField(71, v); }
  @$pb.TagNumber(71)
  $core.bool hasTxPowerLevel5ghz() => $_has(51);
  @$pb.TagNumber(71)
  void clearTxPowerLevel5ghz() => clearField(71);

  @$pb.TagNumber(72)
  TxPowerLevel get txPowerLevel5ghzHigh => $_getN(52);
  @$pb.TagNumber(72)
  set txPowerLevel5ghzHigh(TxPowerLevel v) { setField(72, v); }
  @$pb.TagNumber(72)
  $core.bool hasTxPowerLevel5ghzHigh() => $_has(52);
  @$pb.TagNumber(72)
  void clearTxPowerLevel5ghzHigh() => clearField(72);

  @$pb.TagNumber(73)
  $core.bool get disablePendingUpdateReboot => $_getBF(53);
  @$pb.TagNumber(73)
  set disablePendingUpdateReboot($core.bool v) { $_setBool(53, v); }
  @$pb.TagNumber(73)
  $core.bool hasDisablePendingUpdateReboot() => $_has(53);
  @$pb.TagNumber(73)
  void clearDisablePendingUpdateReboot() => clearField(73);

  @$pb.TagNumber(74)
  $core.List<ClientConfig> get clientConfigs => $_getList(54);

  @$pb.TagNumber(75)
  $core.bool get disableSetWifiConfigFromController => $_getBF(55);
  @$pb.TagNumber(75)
  set disableSetWifiConfigFromController($core.bool v) { $_setBool(55, v); }
  @$pb.TagNumber(75)
  $core.bool hasDisableSetWifiConfigFromController() => $_has(55);
  @$pb.TagNumber(75)
  void clearDisableSetWifiConfigFromController() => clearField(75);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool get applyNetworkName => $_getBF(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  set applyNetworkName($core.bool v) { $_setBool(56, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool hasApplyNetworkName() => $_has(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  void clearApplyNetworkName() => clearField(1001);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool get applyNetworkPassword => $_getBF(57);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  set applyNetworkPassword($core.bool v) { $_setBool(57, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool hasApplyNetworkPassword() => $_has(57);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  void clearApplyNetworkPassword() => clearField(1002);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool get applyWifiSecurity => $_getBF(58);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  set applyWifiSecurity($core.bool v) { $_setBool(58, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool hasApplyWifiSecurity() => $_has(58);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  void clearApplyWifiSecurity() => clearField(1004);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool get applyNetworkName5ghz => $_getBF(59);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  set applyNetworkName5ghz($core.bool v) { $_setBool(59, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool hasApplyNetworkName5ghz() => $_has(59);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  void clearApplyNetworkName5ghz() => clearField(1005);

  @$pb.TagNumber(1010)
  $core.bool get applySetupComplete => $_getBF(60);
  @$pb.TagNumber(1010)
  set applySetupComplete($core.bool v) { $_setBool(60, v); }
  @$pb.TagNumber(1010)
  $core.bool hasApplySetupComplete() => $_has(60);
  @$pb.TagNumber(1010)
  void clearApplySetupComplete() => clearField(1010);

  @$pb.TagNumber(1013)
  $core.bool get applyChannel2ghz => $_getBF(61);
  @$pb.TagNumber(1013)
  set applyChannel2ghz($core.bool v) { $_setBool(61, v); }
  @$pb.TagNumber(1013)
  $core.bool hasApplyChannel2ghz() => $_has(61);
  @$pb.TagNumber(1013)
  void clearApplyChannel2ghz() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.bool get applyChannel5ghz => $_getBF(62);
  @$pb.TagNumber(1014)
  set applyChannel5ghz($core.bool v) { $_setBool(62, v); }
  @$pb.TagNumber(1014)
  $core.bool hasApplyChannel5ghz() => $_has(62);
  @$pb.TagNumber(1014)
  void clearApplyChannel5ghz() => clearField(1014);

  @$pb.TagNumber(1016)
  $core.bool get applyChannel5ghzHigh => $_getBF(63);
  @$pb.TagNumber(1016)
  set applyChannel5ghzHigh($core.bool v) { $_setBool(63, v); }
  @$pb.TagNumber(1016)
  $core.bool hasApplyChannel5ghzHigh() => $_has(63);
  @$pb.TagNumber(1016)
  void clearApplyChannel5ghzHigh() => clearField(1016);

  @$pb.TagNumber(1031)
  $core.bool get applyIsRepeater => $_getBF(64);
  @$pb.TagNumber(1031)
  set applyIsRepeater($core.bool v) { $_setBool(64, v); }
  @$pb.TagNumber(1031)
  $core.bool hasApplyIsRepeater() => $_has(64);
  @$pb.TagNumber(1031)
  void clearApplyIsRepeater() => clearField(1031);

  @$pb.TagNumber(1033)
  $core.bool get applyMeshConfigs => $_getBF(65);
  @$pb.TagNumber(1033)
  set applyMeshConfigs($core.bool v) { $_setBool(65, v); }
  @$pb.TagNumber(1033)
  $core.bool hasApplyMeshConfigs() => $_has(65);
  @$pb.TagNumber(1033)
  void clearApplyMeshConfigs() => clearField(1033);

  @$pb.TagNumber(1054)
  $core.bool get applyNameservers => $_getBF(66);
  @$pb.TagNumber(1054)
  set applyNameservers($core.bool v) { $_setBool(66, v); }
  @$pb.TagNumber(1054)
  $core.bool hasApplyNameservers() => $_has(66);
  @$pb.TagNumber(1054)
  void clearApplyNameservers() => clearField(1054);

  @$pb.TagNumber(1055)
  $core.bool get applyBypassMode => $_getBF(67);
  @$pb.TagNumber(1055)
  set applyBypassMode($core.bool v) { $_setBool(67, v); }
  @$pb.TagNumber(1055)
  $core.bool hasApplyBypassMode() => $_has(67);
  @$pb.TagNumber(1055)
  void clearApplyBypassMode() => clearField(1055);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool get applyEnableRemoteSsh => $_getBF(68);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  set applyEnableRemoteSsh($core.bool v) { $_setBool(68, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool hasApplyEnableRemoteSsh() => $_has(68);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  void clearApplyEnableRemoteSsh() => clearField(1057);

  @$pb.TagNumber(1058)
  $core.bool get applyDfsEnabled => $_getBF(69);
  @$pb.TagNumber(1058)
  set applyDfsEnabled($core.bool v) { $_setBool(69, v); }
  @$pb.TagNumber(1058)
  $core.bool hasApplyDfsEnabled() => $_has(69);
  @$pb.TagNumber(1058)
  void clearApplyDfsEnabled() => clearField(1058);

  @$pb.TagNumber(1059)
  $core.bool get applyWirelessMode2ghz => $_getBF(70);
  @$pb.TagNumber(1059)
  set applyWirelessMode2ghz($core.bool v) { $_setBool(70, v); }
  @$pb.TagNumber(1059)
  $core.bool hasApplyWirelessMode2ghz() => $_has(70);
  @$pb.TagNumber(1059)
  void clearApplyWirelessMode2ghz() => clearField(1059);

  @$pb.TagNumber(1060)
  $core.bool get applyWirelessMode5ghz => $_getBF(71);
  @$pb.TagNumber(1060)
  set applyWirelessMode5ghz($core.bool v) { $_setBool(71, v); }
  @$pb.TagNumber(1060)
  $core.bool hasApplyWirelessMode5ghz() => $_has(71);
  @$pb.TagNumber(1060)
  void clearApplyWirelessMode5ghz() => clearField(1060);

  @$pb.TagNumber(1061)
  $core.bool get applyHtBandwidth2ghz => $_getBF(72);
  @$pb.TagNumber(1061)
  set applyHtBandwidth2ghz($core.bool v) { $_setBool(72, v); }
  @$pb.TagNumber(1061)
  $core.bool hasApplyHtBandwidth2ghz() => $_has(72);
  @$pb.TagNumber(1061)
  void clearApplyHtBandwidth2ghz() => clearField(1061);

  @$pb.TagNumber(1062)
  $core.bool get applyHtBandwidth5ghz => $_getBF(73);
  @$pb.TagNumber(1062)
  set applyHtBandwidth5ghz($core.bool v) { $_setBool(73, v); }
  @$pb.TagNumber(1062)
  $core.bool hasApplyHtBandwidth5ghz() => $_has(73);
  @$pb.TagNumber(1062)
  void clearApplyHtBandwidth5ghz() => clearField(1062);

  @$pb.TagNumber(1063)
  $core.bool get applyVhtBandwidth => $_getBF(74);
  @$pb.TagNumber(1063)
  set applyVhtBandwidth($core.bool v) { $_setBool(74, v); }
  @$pb.TagNumber(1063)
  $core.bool hasApplyVhtBandwidth() => $_has(74);
  @$pb.TagNumber(1063)
  void clearApplyVhtBandwidth() => clearField(1063);

  @$pb.TagNumber(1064)
  $core.bool get applyIsAviation => $_getBF(75);
  @$pb.TagNumber(1064)
  set applyIsAviation($core.bool v) { $_setBool(75, v); }
  @$pb.TagNumber(1064)
  $core.bool hasApplyIsAviation() => $_has(75);
  @$pb.TagNumber(1064)
  void clearApplyIsAviation() => clearField(1064);

  @$pb.TagNumber(1065)
  $core.bool get applySecureDns => $_getBF(76);
  @$pb.TagNumber(1065)
  set applySecureDns($core.bool v) { $_setBool(76, v); }
  @$pb.TagNumber(1065)
  $core.bool hasApplySecureDns() => $_has(76);
  @$pb.TagNumber(1065)
  void clearApplySecureDns() => clearField(1065);

  @$pb.TagNumber(1066)
  $core.bool get applyApMode => $_getBF(77);
  @$pb.TagNumber(1066)
  set applyApMode($core.bool v) { $_setBool(77, v); }
  @$pb.TagNumber(1066)
  $core.bool hasApplyApMode() => $_has(77);
  @$pb.TagNumber(1066)
  void clearApplyApMode() => clearField(1066);

  @$pb.TagNumber(1067)
  $core.bool get applyDisableMeshOnboarding => $_getBF(78);
  @$pb.TagNumber(1067)
  set applyDisableMeshOnboarding($core.bool v) { $_setBool(78, v); }
  @$pb.TagNumber(1067)
  $core.bool hasApplyDisableMeshOnboarding() => $_has(78);
  @$pb.TagNumber(1067)
  void clearApplyDisableMeshOnboarding() => clearField(1067);

  @$pb.TagNumber(1068)
  $core.bool get applyUsePublicServices => $_getBF(79);
  @$pb.TagNumber(1068)
  set applyUsePublicServices($core.bool v) { $_setBool(79, v); }
  @$pb.TagNumber(1068)
  $core.bool hasApplyUsePublicServices() => $_has(79);
  @$pb.TagNumber(1068)
  void clearApplyUsePublicServices() => clearField(1068);

  @$pb.TagNumber(1069)
  $core.bool get applyDisableAutomatedSpeedtests => $_getBF(80);
  @$pb.TagNumber(1069)
  set applyDisableAutomatedSpeedtests($core.bool v) { $_setBool(80, v); }
  @$pb.TagNumber(1069)
  $core.bool hasApplyDisableAutomatedSpeedtests() => $_has(80);
  @$pb.TagNumber(1069)
  void clearApplyDisableAutomatedSpeedtests() => clearField(1069);

  @$pb.TagNumber(1070)
  $core.bool get applyWirelessMode5ghzHigh => $_getBF(81);
  @$pb.TagNumber(1070)
  set applyWirelessMode5ghzHigh($core.bool v) { $_setBool(81, v); }
  @$pb.TagNumber(1070)
  $core.bool hasApplyWirelessMode5ghzHigh() => $_has(81);
  @$pb.TagNumber(1070)
  void clearApplyWirelessMode5ghzHigh() => clearField(1070);

  @$pb.TagNumber(1071)
  $core.bool get applyHtBandwidth5ghzHigh => $_getBF(82);
  @$pb.TagNumber(1071)
  set applyHtBandwidth5ghzHigh($core.bool v) { $_setBool(82, v); }
  @$pb.TagNumber(1071)
  $core.bool hasApplyHtBandwidth5ghzHigh() => $_has(82);
  @$pb.TagNumber(1071)
  void clearApplyHtBandwidth5ghzHigh() => clearField(1071);

  @$pb.TagNumber(1072)
  $core.bool get applyVhtBandwidth5ghzHigh => $_getBF(83);
  @$pb.TagNumber(1072)
  set applyVhtBandwidth5ghzHigh($core.bool v) { $_setBool(83, v); }
  @$pb.TagNumber(1072)
  $core.bool hasApplyVhtBandwidth5ghzHigh() => $_has(83);
  @$pb.TagNumber(1072)
  void clearApplyVhtBandwidth5ghzHigh() => clearField(1072);

  @$pb.TagNumber(1073)
  $core.bool get applyEnableUmbilicalVlan => $_getBF(84);
  @$pb.TagNumber(1073)
  set applyEnableUmbilicalVlan($core.bool v) { $_setBool(84, v); }
  @$pb.TagNumber(1073)
  $core.bool hasApplyEnableUmbilicalVlan() => $_has(84);
  @$pb.TagNumber(1073)
  void clearApplyEnableUmbilicalVlan() => clearField(1073);

  @$pb.TagNumber(1074)
  $core.bool get applyClientNames => $_getBF(85);
  @$pb.TagNumber(1074)
  set applyClientNames($core.bool v) { $_setBool(85, v); }
  @$pb.TagNumber(1074)
  $core.bool hasApplyClientNames() => $_has(85);
  @$pb.TagNumber(1074)
  void clearApplyClientNames() => clearField(1074);

  @$pb.TagNumber(1075)
  $core.bool get applyOutdoorMode => $_getBF(86);
  @$pb.TagNumber(1075)
  set applyOutdoorMode($core.bool v) { $_setBool(86, v); }
  @$pb.TagNumber(1075)
  $core.bool hasApplyOutdoorMode() => $_has(86);
  @$pb.TagNumber(1075)
  void clearApplyOutdoorMode() => clearField(1075);

  @$pb.TagNumber(1076)
  $core.bool get applyDisable2ghz => $_getBF(87);
  @$pb.TagNumber(1076)
  set applyDisable2ghz($core.bool v) { $_setBool(87, v); }
  @$pb.TagNumber(1076)
  $core.bool hasApplyDisable2ghz() => $_has(87);
  @$pb.TagNumber(1076)
  void clearApplyDisable2ghz() => clearField(1076);

  @$pb.TagNumber(1077)
  $core.bool get applyDisable5ghz => $_getBF(88);
  @$pb.TagNumber(1077)
  set applyDisable5ghz($core.bool v) { $_setBool(88, v); }
  @$pb.TagNumber(1077)
  $core.bool hasApplyDisable5ghz() => $_has(88);
  @$pb.TagNumber(1077)
  void clearApplyDisable5ghz() => clearField(1077);

  @$pb.TagNumber(1078)
  $core.bool get applyDisable5ghzHigh => $_getBF(89);
  @$pb.TagNumber(1078)
  set applyDisable5ghzHigh($core.bool v) { $_setBool(89, v); }
  @$pb.TagNumber(1078)
  $core.bool hasApplyDisable5ghzHigh() => $_has(89);
  @$pb.TagNumber(1078)
  void clearApplyDisable5ghzHigh() => clearField(1078);

  @$pb.TagNumber(1079)
  $core.bool get applyDisableXMeshBackhaul => $_getBF(90);
  @$pb.TagNumber(1079)
  set applyDisableXMeshBackhaul($core.bool v) { $_setBool(90, v); }
  @$pb.TagNumber(1079)
  $core.bool hasApplyDisableXMeshBackhaul() => $_has(90);
  @$pb.TagNumber(1079)
  void clearApplyDisableXMeshBackhaul() => clearField(1079);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool get applyGoldenBssid => $_getBF(91);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  set applyGoldenBssid($core.bool v) { $_setBool(91, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool hasApplyGoldenBssid() => $_has(91);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  void clearApplyGoldenBssid() => clearField(1080);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool get applyGoldenIfaceType => $_getBF(92);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  set applyGoldenIfaceType($core.bool v) { $_setBool(92, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool hasApplyGoldenIfaceType() => $_has(92);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  void clearApplyGoldenIfaceType() => clearField(1081);

  @$pb.TagNumber(1082)
  $core.bool get applyTxPowerLevel2ghz => $_getBF(93);
  @$pb.TagNumber(1082)
  set applyTxPowerLevel2ghz($core.bool v) { $_setBool(93, v); }
  @$pb.TagNumber(1082)
  $core.bool hasApplyTxPowerLevel2ghz() => $_has(93);
  @$pb.TagNumber(1082)
  void clearApplyTxPowerLevel2ghz() => clearField(1082);

  @$pb.TagNumber(1083)
  $core.bool get applyTxPowerLevel5ghz => $_getBF(94);
  @$pb.TagNumber(1083)
  set applyTxPowerLevel5ghz($core.bool v) { $_setBool(94, v); }
  @$pb.TagNumber(1083)
  $core.bool hasApplyTxPowerLevel5ghz() => $_has(94);
  @$pb.TagNumber(1083)
  void clearApplyTxPowerLevel5ghz() => clearField(1083);

  @$pb.TagNumber(1084)
  $core.bool get applyTxPowerLevel5ghzHigh => $_getBF(95);
  @$pb.TagNumber(1084)
  set applyTxPowerLevel5ghzHigh($core.bool v) { $_setBool(95, v); }
  @$pb.TagNumber(1084)
  $core.bool hasApplyTxPowerLevel5ghzHigh() => $_has(95);
  @$pb.TagNumber(1084)
  void clearApplyTxPowerLevel5ghzHigh() => clearField(1084);

  @$pb.TagNumber(1085)
  $core.bool get applyCountryCode => $_getBF(96);
  @$pb.TagNumber(1085)
  set applyCountryCode($core.bool v) { $_setBool(96, v); }
  @$pb.TagNumber(1085)
  $core.bool hasApplyCountryCode() => $_has(96);
  @$pb.TagNumber(1085)
  void clearApplyCountryCode() => clearField(1085);

  @$pb.TagNumber(1086)
  $core.bool get applyPinCountryCode => $_getBF(97);
  @$pb.TagNumber(1086)
  set applyPinCountryCode($core.bool v) { $_setBool(97, v); }
  @$pb.TagNumber(1086)
  $core.bool hasApplyPinCountryCode() => $_has(97);
  @$pb.TagNumber(1086)
  void clearApplyPinCountryCode() => clearField(1086);

  @$pb.TagNumber(1087)
  $core.bool get applyCustomPowerTable => $_getBF(98);
  @$pb.TagNumber(1087)
  set applyCustomPowerTable($core.bool v) { $_setBool(98, v); }
  @$pb.TagNumber(1087)
  $core.bool hasApplyCustomPowerTable() => $_has(98);
  @$pb.TagNumber(1087)
  void clearApplyCustomPowerTable() => clearField(1087);

  @$pb.TagNumber(1088)
  $core.bool get applyDisablePendingUpdateReboot => $_getBF(99);
  @$pb.TagNumber(1088)
  set applyDisablePendingUpdateReboot($core.bool v) { $_setBool(99, v); }
  @$pb.TagNumber(1088)
  $core.bool hasApplyDisablePendingUpdateReboot() => $_has(99);
  @$pb.TagNumber(1088)
  void clearApplyDisablePendingUpdateReboot() => clearField(1088);

  @$pb.TagNumber(1089)
  $core.bool get applyClientConfigs => $_getBF(100);
  @$pb.TagNumber(1089)
  set applyClientConfigs($core.bool v) { $_setBool(100, v); }
  @$pb.TagNumber(1089)
  $core.bool hasApplyClientConfigs() => $_has(100);
  @$pb.TagNumber(1089)
  void clearApplyClientConfigs() => clearField(1089);

  @$pb.TagNumber(1090)
  $core.bool get applyDisableSetWifiConfigFromController => $_getBF(101);
  @$pb.TagNumber(1090)
  set applyDisableSetWifiConfigFromController($core.bool v) { $_setBool(101, v); }
  @$pb.TagNumber(1090)
  $core.bool hasApplyDisableSetWifiConfigFromController() => $_has(101);
  @$pb.TagNumber(1090)
  void clearApplyDisableSetWifiConfigFromController() => clearField(1090);

  @$pb.TagNumber(1100)
  $core.List<WifiConfig_Network> get networks => $_getList(102);

  @$pb.TagNumber(1101)
  $core.bool get applyNetworks => $_getBF(103);
  @$pb.TagNumber(1101)
  set applyNetworks($core.bool v) { $_setBool(103, v); }
  @$pb.TagNumber(1101)
  $core.bool hasApplyNetworks() => $_has(103);
  @$pb.TagNumber(1101)
  void clearApplyNetworks() => clearField(1101);

  @$pb.TagNumber(3001)
  BootInfo get boot => $_getN(104);
  @$pb.TagNumber(3001)
  set boot(BootInfo v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasBoot() => $_has(104);
  @$pb.TagNumber(3001)
  void clearBoot() => clearField(3001);
  @$pb.TagNumber(3001)
  BootInfo ensureBoot() => $_ensure(104);

  @$pb.TagNumber(3033)
  $core.Map<$core.String, MeshConfig> get meshConfigsUpdates => $_getMap(105);
}

/// SpaceX.API.Device.MeshConfig is a message:
class MeshConfig extends $pb.GeneratedMessage {
  factory MeshConfig({
    $core.String? displayName,
    $core.bool? applyDisplayName,
    MeshAuth? auth,
    $core.bool? applyAuth,
    $fixnum.Int64? lastConnected,
    $fixnum.Int64? incarnation,
    $core.String? hardwareVersion,
    $core.bool? supports5ghzHigh,
  }) {
    final $result = create();
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (applyDisplayName != null) {
      $result.applyDisplayName = applyDisplayName;
    }
    if (auth != null) {
      $result.auth = auth;
    }
    if (applyAuth != null) {
      $result.applyAuth = applyAuth;
    }
    if (lastConnected != null) {
      $result.lastConnected = lastConnected;
    }
    if (incarnation != null) {
      $result.incarnation = incarnation;
    }
    if (hardwareVersion != null) {
      $result.hardwareVersion = hardwareVersion;
    }
    if (supports5ghzHigh != null) {
      $result.supports5ghzHigh = supports5ghzHigh;
    }
    return $result;
  }
  MeshConfig._() : super();
  factory MeshConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeshConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MeshConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayName')
    ..aOB(2, _omitFieldNames ? '' : 'applyDisplayName')
    ..e<MeshAuth>(3, _omitFieldNames ? '' : 'auth', $pb.PbFieldType.OE, defaultOrMaker: MeshAuth.MESH_AUTH_UNKNOWN, valueOf: MeshAuth.valueOf, enumValues: MeshAuth.values)
    ..aOB(4, _omitFieldNames ? '' : 'applyAuth')
    ..aInt64(5, _omitFieldNames ? '' : 'lastConnected')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(9, _omitFieldNames ? '' : 'hardwareVersion')
    ..aOB(10, _omitFieldNames ? '' : 'supports5ghzHigh', protoName: 'supports_5ghz_high')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeshConfig clone() => MeshConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeshConfig copyWith(void Function(MeshConfig) updates) => super.copyWith((message) => updates(message as MeshConfig)) as MeshConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MeshConfig create() => MeshConfig._();
  MeshConfig createEmptyInstance() => create();
  static $pb.PbList<MeshConfig> createRepeated() => $pb.PbList<MeshConfig>();
  @$core.pragma('dart2js:noInline')
  static MeshConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MeshConfig>(create);
  static MeshConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get applyDisplayName => $_getBF(1);
  @$pb.TagNumber(2)
  set applyDisplayName($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplyDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplyDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  MeshAuth get auth => $_getN(2);
  @$pb.TagNumber(3)
  set auth(MeshAuth v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuth() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuth() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get applyAuth => $_getBF(3);
  @$pb.TagNumber(4)
  set applyAuth($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasApplyAuth() => $_has(3);
  @$pb.TagNumber(4)
  void clearApplyAuth() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get lastConnected => $_getI64(4);
  @$pb.TagNumber(5)
  set lastConnected($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastConnected() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastConnected() => clearField(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get incarnation => $_getI64(5);
  @$pb.TagNumber(7)
  set incarnation($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasIncarnation() => $_has(5);
  @$pb.TagNumber(7)
  void clearIncarnation() => clearField(7);

  @$pb.TagNumber(9)
  $core.String get hardwareVersion => $_getSZ(6);
  @$pb.TagNumber(9)
  set hardwareVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasHardwareVersion() => $_has(6);
  @$pb.TagNumber(9)
  void clearHardwareVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get supports5ghzHigh => $_getBF(7);
  @$pb.TagNumber(10)
  set supports5ghzHigh($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasSupports5ghzHigh() => $_has(7);
  @$pb.TagNumber(10)
  void clearSupports5ghzHigh() => clearField(10);
}

/// SpaceX.API.Device.ClientName is a message:
class ClientName extends $pb.GeneratedMessage {
  factory ClientName({
    $core.String? macAddress,
    $core.String? givenName,
  }) {
    final $result = create();
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (givenName != null) {
      $result.givenName = givenName;
    }
    return $result;
  }
  ClientName._() : super();
  factory ClientName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientName', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'macAddress')
    ..aOS(2, _omitFieldNames ? '' : 'givenName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientName clone() => ClientName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientName copyWith(void Function(ClientName) updates) => super.copyWith((message) => updates(message as ClientName)) as ClientName;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientName create() => ClientName._();
  ClientName createEmptyInstance() => create();
  static $pb.PbList<ClientName> createRepeated() => $pb.PbList<ClientName>();
  @$core.pragma('dart2js:noInline')
  static ClientName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientName>(create);
  static ClientName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set macAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get givenName => $_getSZ(1);
  @$pb.TagNumber(2)
  set givenName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGivenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGivenName() => clearField(2);
}

/// SpaceX.API.Device.ClientConfig is a message:
class ClientConfig extends $pb.GeneratedMessage {
  factory ClientConfig({
    $core.int? clientId,
    $core.String? macAddress,
    $core.String? givenName,
    $core.Iterable<WeeklyBlockSchedule>? weeklyBlockSchedules,
    $core.String? groupId,
  }) {
    final $result = create();
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (givenName != null) {
      $result.givenName = givenName;
    }
    if (weeklyBlockSchedules != null) {
      $result.weeklyBlockSchedules.addAll(weeklyBlockSchedules);
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  ClientConfig._() : super();
  factory ClientConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clientId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'macAddress')
    ..aOS(3, _omitFieldNames ? '' : 'givenName')
    ..pc<WeeklyBlockSchedule>(5, _omitFieldNames ? '' : 'weeklyBlockSchedules', $pb.PbFieldType.PM, subBuilder: WeeklyBlockSchedule.create)
    ..aOS(6, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientConfig clone() => ClientConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientConfig copyWith(void Function(ClientConfig) updates) => super.copyWith((message) => updates(message as ClientConfig)) as ClientConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientConfig create() => ClientConfig._();
  ClientConfig createEmptyInstance() => create();
  static $pb.PbList<ClientConfig> createRepeated() => $pb.PbList<ClientConfig>();
  @$core.pragma('dart2js:noInline')
  static ClientConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientConfig>(create);
  static ClientConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clientId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clientId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get givenName => $_getSZ(2);
  @$pb.TagNumber(3)
  set givenName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGivenName() => $_has(2);
  @$pb.TagNumber(3)
  void clearGivenName() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<WeeklyBlockSchedule> get weeklyBlockSchedules => $_getList(3);

  @$pb.TagNumber(6)
  $core.String get groupId => $_getSZ(4);
  @$pb.TagNumber(6)
  set groupId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasGroupId() => $_has(4);
  @$pb.TagNumber(6)
  void clearGroupId() => clearField(6);
}

class WeeklyBlockSchedule_BlockRange extends $pb.GeneratedMessage {
  factory WeeklyBlockSchedule_BlockRange({
    $core.int? startMinutes,
    $core.int? endMinutes,
  }) {
    final $result = create();
    if (startMinutes != null) {
      $result.startMinutes = startMinutes;
    }
    if (endMinutes != null) {
      $result.endMinutes = endMinutes;
    }
    return $result;
  }
  WeeklyBlockSchedule_BlockRange._() : super();
  factory WeeklyBlockSchedule_BlockRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeeklyBlockSchedule_BlockRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeeklyBlockSchedule.BlockRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'startMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'endMinutes', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeeklyBlockSchedule_BlockRange clone() => WeeklyBlockSchedule_BlockRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeeklyBlockSchedule_BlockRange copyWith(void Function(WeeklyBlockSchedule_BlockRange) updates) => super.copyWith((message) => updates(message as WeeklyBlockSchedule_BlockRange)) as WeeklyBlockSchedule_BlockRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeeklyBlockSchedule_BlockRange create() => WeeklyBlockSchedule_BlockRange._();
  WeeklyBlockSchedule_BlockRange createEmptyInstance() => create();
  static $pb.PbList<WeeklyBlockSchedule_BlockRange> createRepeated() => $pb.PbList<WeeklyBlockSchedule_BlockRange>();
  @$core.pragma('dart2js:noInline')
  static WeeklyBlockSchedule_BlockRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeeklyBlockSchedule_BlockRange>(create);
  static WeeklyBlockSchedule_BlockRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startMinutes => $_getIZ(0);
  @$pb.TagNumber(1)
  set startMinutes($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartMinutes() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartMinutes() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endMinutes => $_getIZ(1);
  @$pb.TagNumber(2)
  set endMinutes($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndMinutes() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndMinutes() => clearField(2);
}

/// SpaceX.API.Device.WeeklyBlockSchedule is a message:
class WeeklyBlockSchedule extends $pb.GeneratedMessage {
  factory WeeklyBlockSchedule({
    $core.Iterable<WeeklyBlockSchedule_BlockRange>? blockRanges,
    $core.String? groupId,
  }) {
    final $result = create();
    if (blockRanges != null) {
      $result.blockRanges.addAll(blockRanges);
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  WeeklyBlockSchedule._() : super();
  factory WeeklyBlockSchedule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeeklyBlockSchedule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeeklyBlockSchedule', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WeeklyBlockSchedule_BlockRange>(1, _omitFieldNames ? '' : 'blockRanges', $pb.PbFieldType.PM, subBuilder: WeeklyBlockSchedule_BlockRange.create)
    ..aOS(2, _omitFieldNames ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeeklyBlockSchedule clone() => WeeklyBlockSchedule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeeklyBlockSchedule copyWith(void Function(WeeklyBlockSchedule) updates) => super.copyWith((message) => updates(message as WeeklyBlockSchedule)) as WeeklyBlockSchedule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeeklyBlockSchedule create() => WeeklyBlockSchedule._();
  WeeklyBlockSchedule createEmptyInstance() => create();
  static $pb.PbList<WeeklyBlockSchedule> createRepeated() => $pb.PbList<WeeklyBlockSchedule>();
  @$core.pragma('dart2js:noInline')
  static WeeklyBlockSchedule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeeklyBlockSchedule>(create);
  static WeeklyBlockSchedule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WeeklyBlockSchedule_BlockRange> get blockRanges => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

/// SpaceX.API.Device.BootInfo is a message:
class BootInfo extends $pb.GeneratedMessage {
  factory BootInfo({
    $core.Map<$core.int, $core.int>? countByReason,
    BootReason? lastReason,
    $core.int? lastCount,
    $core.Map<$core.int, $core.int>? countByReasonDelta,
    $core.bool? crashBoot,
    $core.int? crashBootCount,
  }) {
    final $result = create();
    if (countByReason != null) {
      $result.countByReason.addAll(countByReason);
    }
    if (lastReason != null) {
      $result.lastReason = lastReason;
    }
    if (lastCount != null) {
      $result.lastCount = lastCount;
    }
    if (countByReasonDelta != null) {
      $result.countByReasonDelta.addAll(countByReasonDelta);
    }
    if (crashBoot != null) {
      $result.crashBoot = crashBoot;
    }
    if (crashBootCount != null) {
      $result.crashBootCount = crashBootCount;
    }
    return $result;
  }
  BootInfo._() : super();
  factory BootInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BootInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BootInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'countByReason', entryClassName: 'BootInfo.CountByReasonEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..e<BootReason>(2, _omitFieldNames ? '' : 'lastReason', $pb.PbFieldType.OE, defaultOrMaker: BootReason.BOOT_REASON_UNKNOWN, valueOf: BootReason.valueOf, enumValues: BootReason.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'lastCount', $pb.PbFieldType.O3)
    ..m<$core.int, $core.int>(4, _omitFieldNames ? '' : 'countByReasonDelta', entryClassName: 'BootInfo.CountByReasonDeltaEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..aOB(5, _omitFieldNames ? '' : 'crashBoot')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'crashBootCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BootInfo clone() => BootInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BootInfo copyWith(void Function(BootInfo) updates) => super.copyWith((message) => updates(message as BootInfo)) as BootInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BootInfo create() => BootInfo._();
  BootInfo createEmptyInstance() => create();
  static $pb.PbList<BootInfo> createRepeated() => $pb.PbList<BootInfo>();
  @$core.pragma('dart2js:noInline')
  static BootInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BootInfo>(create);
  static BootInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.int> get countByReason => $_getMap(0);

  @$pb.TagNumber(2)
  BootReason get lastReason => $_getN(1);
  @$pb.TagNumber(2)
  set lastReason(BootReason v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastReason() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get lastCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set lastCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.int, $core.int> get countByReasonDelta => $_getMap(3);

  @$pb.TagNumber(5)
  $core.bool get crashBoot => $_getBF(4);
  @$pb.TagNumber(5)
  set crashBoot($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCrashBoot() => $_has(4);
  @$pb.TagNumber(5)
  void clearCrashBoot() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get crashBootCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set crashBootCount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCrashBootCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearCrashBootCount() => clearField(6);
}

/// SpaceX.API.Device.AuthOpen is a message:
class AuthOpen extends $pb.GeneratedMessage {
  factory AuthOpen() => create();
  AuthOpen._() : super();
  factory AuthOpen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthOpen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthOpen', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthOpen clone() => AuthOpen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthOpen copyWith(void Function(AuthOpen) updates) => super.copyWith((message) => updates(message as AuthOpen)) as AuthOpen;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthOpen create() => AuthOpen._();
  AuthOpen createEmptyInstance() => create();
  static $pb.PbList<AuthOpen> createRepeated() => $pb.PbList<AuthOpen>();
  @$core.pragma('dart2js:noInline')
  static AuthOpen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthOpen>(create);
  static AuthOpen? _defaultInstance;
}

/// SpaceX.API.Device.AuthWpa2 is a message:
class AuthWpa2 extends $pb.GeneratedMessage {
  factory AuthWpa2({
    $core.String? password,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AuthWpa2._() : super();
  factory AuthWpa2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthWpa2', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2 clone() => AuthWpa2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2 copyWith(void Function(AuthWpa2) updates) => super.copyWith((message) => updates(message as AuthWpa2)) as AuthWpa2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthWpa2 create() => AuthWpa2._();
  AuthWpa2 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa2> createRepeated() => $pb.PbList<AuthWpa2>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa2>(create);
  static AuthWpa2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

/// SpaceX.API.Device.AuthWpa3 is a message:
class AuthWpa3 extends $pb.GeneratedMessage {
  factory AuthWpa3({
    $core.String? password,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AuthWpa3._() : super();
  factory AuthWpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthWpa3', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa3 clone() => AuthWpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa3 copyWith(void Function(AuthWpa3) updates) => super.copyWith((message) => updates(message as AuthWpa3)) as AuthWpa3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthWpa3 create() => AuthWpa3._();
  AuthWpa3 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa3> createRepeated() => $pb.PbList<AuthWpa3>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa3>(create);
  static AuthWpa3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

/// SpaceX.API.Device.AuthWpa2Wpa3 is a message:
class AuthWpa2Wpa3 extends $pb.GeneratedMessage {
  factory AuthWpa2Wpa3({
    $core.String? password,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AuthWpa2Wpa3._() : super();
  factory AuthWpa2Wpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2Wpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthWpa2Wpa3', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 clone() => AuthWpa2Wpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 copyWith(void Function(AuthWpa2Wpa3) updates) => super.copyWith((message) => updates(message as AuthWpa2Wpa3)) as AuthWpa2Wpa3;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthWpa2Wpa3 create() => AuthWpa2Wpa3._();
  AuthWpa2Wpa3 createEmptyInstance() => create();
  static $pb.PbList<AuthWpa2Wpa3> createRepeated() => $pb.PbList<AuthWpa2Wpa3>();
  @$core.pragma('dart2js:noInline')
  static AuthWpa2Wpa3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthWpa2Wpa3>(create);
  static AuthWpa2Wpa3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

/// SpaceX.API.Device.AuthRadius is a message:
class AuthRadius extends $pb.GeneratedMessage {
  factory AuthRadius({
    $core.String? server,
    $core.String? password,
  @$core.Deprecated('This field is deprecated.')
    $core.String? serverCa,
    $core.String? serverCaBase64,
  }) {
    final $result = create();
    if (server != null) {
      $result.server = server;
    }
    if (password != null) {
      $result.password = password;
    }
    if (serverCa != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.serverCa = serverCa;
    }
    if (serverCaBase64 != null) {
      $result.serverCaBase64 = serverCaBase64;
    }
    return $result;
  }
  AuthRadius._() : super();
  factory AuthRadius.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRadius.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRadius', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'server')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'serverCa')
    ..aOS(4, _omitFieldNames ? '' : 'serverCaBase64', protoName: 'server_ca_base_64')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRadius clone() => AuthRadius()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRadius copyWith(void Function(AuthRadius) updates) => super.copyWith((message) => updates(message as AuthRadius)) as AuthRadius;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRadius create() => AuthRadius._();
  AuthRadius createEmptyInstance() => create();
  static $pb.PbList<AuthRadius> createRepeated() => $pb.PbList<AuthRadius>();
  @$core.pragma('dart2js:noInline')
  static AuthRadius getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRadius>(create);
  static AuthRadius? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get server => $_getSZ(0);
  @$pb.TagNumber(1)
  set server($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServer() => $_has(0);
  @$pb.TagNumber(1)
  void clearServer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get serverCa => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set serverCa($core.String v) { $_setString(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasServerCa() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearServerCa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serverCaBase64 => $_getSZ(3);
  @$pb.TagNumber(4)
  set serverCaBase64($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServerCaBase64() => $_has(3);
  @$pb.TagNumber(4)
  void clearServerCaBase64() => clearField(4);
}

/// SpaceX.API.Device.WifiGetClientsRequest is a message:
class WifiGetClientsRequest extends $pb.GeneratedMessage {
  factory WifiGetClientsRequest() => create();
  WifiGetClientsRequest._() : super();
  factory WifiGetClientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetClientsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest clone() => WifiGetClientsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest copyWith(void Function(WifiGetClientsRequest) updates) => super.copyWith((message) => updates(message as WifiGetClientsRequest)) as WifiGetClientsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest create() => WifiGetClientsRequest._();
  WifiGetClientsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientsRequest> createRepeated() => $pb.PbList<WifiGetClientsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientsRequest>(create);
  static WifiGetClientsRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiSetupRequest is a message:
class WifiSetupRequest extends $pb.GeneratedMessage {
  factory WifiSetupRequest({
    $core.bool? skip,
    $core.String? networkName,
    $core.String? networkPassword,
  }) {
    final $result = create();
    if (skip != null) {
      $result.skip = skip;
    }
    if (networkName != null) {
      $result.networkName = networkName;
    }
    if (networkPassword != null) {
      $result.networkPassword = networkPassword;
    }
    return $result;
  }
  WifiSetupRequest._() : super();
  factory WifiSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'skip')
    ..aOS(2, _omitFieldNames ? '' : 'networkName')
    ..aOS(3, _omitFieldNames ? '' : 'networkPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetupRequest clone() => WifiSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetupRequest copyWith(void Function(WifiSetupRequest) updates) => super.copyWith((message) => updates(message as WifiSetupRequest)) as WifiSetupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetupRequest create() => WifiSetupRequest._();
  WifiSetupRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetupRequest> createRepeated() => $pb.PbList<WifiSetupRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetupRequest>(create);
  static WifiSetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get skip => $_getBF(0);
  @$pb.TagNumber(1)
  set skip($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkip() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkip() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get networkName => $_getSZ(1);
  @$pb.TagNumber(2)
  set networkName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetworkName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get networkPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set networkPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNetworkPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearNetworkPassword() => clearField(3);
}

/// SpaceX.API.Device.WifiGetPingMetricsRequest is a message:
class WifiGetPingMetricsRequest extends $pb.GeneratedMessage {
  factory WifiGetPingMetricsRequest() => create();
  WifiGetPingMetricsRequest._() : super();
  factory WifiGetPingMetricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPingMetricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetPingMetricsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsRequest clone() => WifiGetPingMetricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsRequest copyWith(void Function(WifiGetPingMetricsRequest) updates) => super.copyWith((message) => updates(message as WifiGetPingMetricsRequest)) as WifiGetPingMetricsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsRequest create() => WifiGetPingMetricsRequest._();
  WifiGetPingMetricsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetPingMetricsRequest> createRepeated() => $pb.PbList<WifiGetPingMetricsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetPingMetricsRequest>(create);
  static WifiGetPingMetricsRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiGetDiagnosticsRequest is a message:
class WifiGetDiagnosticsRequest extends $pb.GeneratedMessage {
  factory WifiGetDiagnosticsRequest() => create();
  WifiGetDiagnosticsRequest._() : super();
  factory WifiGetDiagnosticsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetDiagnosticsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest clone() => WifiGetDiagnosticsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest copyWith(void Function(WifiGetDiagnosticsRequest) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsRequest)) as WifiGetDiagnosticsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest create() => WifiGetDiagnosticsRequest._();
  WifiGetDiagnosticsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetDiagnosticsRequest> createRepeated() => $pb.PbList<WifiGetDiagnosticsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetDiagnosticsRequest>(create);
  static WifiGetDiagnosticsRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiGetConfigRequest is a message:
class WifiGetConfigRequest extends $pb.GeneratedMessage {
  factory WifiGetConfigRequest() => create();
  WifiGetConfigRequest._() : super();
  factory WifiGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest clone() => WifiGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest copyWith(void Function(WifiGetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiGetConfigRequest)) as WifiGetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest create() => WifiGetConfigRequest._();
  WifiGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetConfigRequest> createRepeated() => $pb.PbList<WifiGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetConfigRequest>(create);
  static WifiGetConfigRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiSetMeshDeviceTrustRequest is a message:
class WifiSetMeshDeviceTrustRequest extends $pb.GeneratedMessage {
  factory WifiSetMeshDeviceTrustRequest({
    $core.String? deviceId,
    MeshAuth? auth,
  }) {
    final $result = create();
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (auth != null) {
      $result.auth = auth;
    }
    return $result;
  }
  WifiSetMeshDeviceTrustRequest._() : super();
  factory WifiSetMeshDeviceTrustRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshDeviceTrustRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetMeshDeviceTrustRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceId')
    ..e<MeshAuth>(2, _omitFieldNames ? '' : 'auth', $pb.PbFieldType.OE, defaultOrMaker: MeshAuth.MESH_AUTH_UNKNOWN, valueOf: MeshAuth.valueOf, enumValues: MeshAuth.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustRequest clone() => WifiSetMeshDeviceTrustRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustRequest copyWith(void Function(WifiSetMeshDeviceTrustRequest) updates) => super.copyWith((message) => updates(message as WifiSetMeshDeviceTrustRequest)) as WifiSetMeshDeviceTrustRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustRequest create() => WifiSetMeshDeviceTrustRequest._();
  WifiSetMeshDeviceTrustRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshDeviceTrustRequest> createRepeated() => $pb.PbList<WifiSetMeshDeviceTrustRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshDeviceTrustRequest>(create);
  static WifiSetMeshDeviceTrustRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  MeshAuth get auth => $_getN(1);
  @$pb.TagNumber(2)
  set auth(MeshAuth v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuth() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuth() => clearField(2);
}

/// SpaceX.API.Device.WifiSetMeshConfigRequest is a message:
class WifiSetMeshConfigRequest extends $pb.GeneratedMessage {
  factory WifiSetMeshConfigRequest({
    MeshConfig? meshConfig,
    $core.String? deviceId,
  }) {
    final $result = create();
    if (meshConfig != null) {
      $result.meshConfig = meshConfig;
    }
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    return $result;
  }
  WifiSetMeshConfigRequest._() : super();
  factory WifiSetMeshConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetMeshConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<MeshConfig>(1, _omitFieldNames ? '' : 'meshConfig', subBuilder: MeshConfig.create)
    ..aOS(2, _omitFieldNames ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigRequest clone() => WifiSetMeshConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigRequest copyWith(void Function(WifiSetMeshConfigRequest) updates) => super.copyWith((message) => updates(message as WifiSetMeshConfigRequest)) as WifiSetMeshConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigRequest create() => WifiSetMeshConfigRequest._();
  WifiSetMeshConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshConfigRequest> createRepeated() => $pb.PbList<WifiSetMeshConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshConfigRequest>(create);
  static WifiSetMeshConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MeshConfig get meshConfig => $_getN(0);
  @$pb.TagNumber(1)
  set meshConfig(MeshConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMeshConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeshConfig() => clearField(1);
  @$pb.TagNumber(1)
  MeshConfig ensureMeshConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get deviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);
}

/// SpaceX.API.Device.WifiGetClientHistoryRequest is a message:
class WifiGetClientHistoryRequest extends $pb.GeneratedMessage {
  factory WifiGetClientHistoryRequest({
  @$core.Deprecated('This field is deprecated.')
    $core.String? macAddress,
    $core.int? clientId,
  }) {
    final $result = create();
    if (macAddress != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.macAddress = macAddress;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    return $result;
  }
  WifiGetClientHistoryRequest._() : super();
  factory WifiGetClientHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetClientHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'macAddress')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'clientId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryRequest clone() => WifiGetClientHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryRequest copyWith(void Function(WifiGetClientHistoryRequest) updates) => super.copyWith((message) => updates(message as WifiGetClientHistoryRequest)) as WifiGetClientHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryRequest create() => WifiGetClientHistoryRequest._();
  WifiGetClientHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientHistoryRequest> createRepeated() => $pb.PbList<WifiGetClientHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientHistoryRequest>(create);
  static WifiGetClientHistoryRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get macAddress => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set macAddress($core.String v) { $_setString(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasMacAddress() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearMacAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get clientId => $_getIZ(1);
  @$pb.TagNumber(2)
  set clientId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientId() => clearField(2);
}

/// SpaceX.API.Device.WifiSetAviationConformedRequest is a message:
class WifiSetAviationConformedRequest extends $pb.GeneratedMessage {
  factory WifiSetAviationConformedRequest() => create();
  WifiSetAviationConformedRequest._() : super();
  factory WifiSetAviationConformedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetAviationConformedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetAviationConformedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetAviationConformedRequest clone() => WifiSetAviationConformedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetAviationConformedRequest copyWith(void Function(WifiSetAviationConformedRequest) updates) => super.copyWith((message) => updates(message as WifiSetAviationConformedRequest)) as WifiSetAviationConformedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetAviationConformedRequest create() => WifiSetAviationConformedRequest._();
  WifiSetAviationConformedRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetAviationConformedRequest> createRepeated() => $pb.PbList<WifiSetAviationConformedRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetAviationConformedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetAviationConformedRequest>(create);
  static WifiSetAviationConformedRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiSetClientGivenNameRequest is a message:
class WifiSetClientGivenNameRequest extends $pb.GeneratedMessage {
  factory WifiSetClientGivenNameRequest({
  @$core.Deprecated('This field is deprecated.')
    ClientName? clientName,
    ClientConfig? clientConfig,
  }) {
    final $result = create();
    if (clientName != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.clientName = clientName;
    }
    if (clientConfig != null) {
      $result.clientConfig = clientConfig;
    }
    return $result;
  }
  WifiSetClientGivenNameRequest._() : super();
  factory WifiSetClientGivenNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetClientGivenNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetClientGivenNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ClientName>(1, _omitFieldNames ? '' : 'clientName', subBuilder: ClientName.create)
    ..aOM<ClientConfig>(2, _omitFieldNames ? '' : 'clientConfig', subBuilder: ClientConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetClientGivenNameRequest clone() => WifiSetClientGivenNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetClientGivenNameRequest copyWith(void Function(WifiSetClientGivenNameRequest) updates) => super.copyWith((message) => updates(message as WifiSetClientGivenNameRequest)) as WifiSetClientGivenNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetClientGivenNameRequest create() => WifiSetClientGivenNameRequest._();
  WifiSetClientGivenNameRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetClientGivenNameRequest> createRepeated() => $pb.PbList<WifiSetClientGivenNameRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetClientGivenNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetClientGivenNameRequest>(create);
  static WifiSetClientGivenNameRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  ClientName get clientName => $_getN(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set clientName(ClientName v) { setField(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasClientName() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearClientName() => clearField(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  ClientName ensureClientName() => $_ensure(0);

  @$pb.TagNumber(2)
  ClientConfig get clientConfig => $_getN(1);
  @$pb.TagNumber(2)
  set clientConfig(ClientConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientConfig() => clearField(2);
  @$pb.TagNumber(2)
  ClientConfig ensureClientConfig() => $_ensure(1);
}

/// SpaceX.API.Device.WifiSelfTestRequest is a message:
class WifiSelfTestRequest extends $pb.GeneratedMessage {
  factory WifiSelfTestRequest() => create();
  WifiSelfTestRequest._() : super();
  factory WifiSelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSelfTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTestRequest clone() => WifiSelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTestRequest copyWith(void Function(WifiSelfTestRequest) updates) => super.copyWith((message) => updates(message as WifiSelfTestRequest)) as WifiSelfTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSelfTestRequest create() => WifiSelfTestRequest._();
  WifiSelfTestRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSelfTestRequest> createRepeated() => $pb.PbList<WifiSelfTestRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSelfTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSelfTestRequest>(create);
  static WifiSelfTestRequest? _defaultInstance;
}

/// SpaceX.API.Device.WifiCalibrationModeRequest is a message:
class WifiCalibrationModeRequest extends $pb.GeneratedMessage {
  factory WifiCalibrationModeRequest() => create();
  WifiCalibrationModeRequest._() : super();
  factory WifiCalibrationModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCalibrationModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiCalibrationModeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCalibrationModeRequest clone() => WifiCalibrationModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCalibrationModeRequest copyWith(void Function(WifiCalibrationModeRequest) updates) => super.copyWith((message) => updates(message as WifiCalibrationModeRequest)) as WifiCalibrationModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiCalibrationModeRequest create() => WifiCalibrationModeRequest._();
  WifiCalibrationModeRequest createEmptyInstance() => create();
  static $pb.PbList<WifiCalibrationModeRequest> createRepeated() => $pb.PbList<WifiCalibrationModeRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiCalibrationModeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCalibrationModeRequest>(create);
  static WifiCalibrationModeRequest? _defaultInstance;
}

/// SpaceX.API.Device.TransceiverIFLoopbackTestRequest is a message:
class TransceiverIFLoopbackTestRequest extends $pb.GeneratedMessage {
  factory TransceiverIFLoopbackTestRequest({
    $core.bool? enableIfLoopback,
  }) {
    final $result = create();
    if (enableIfLoopback != null) {
      $result.enableIfLoopback = enableIfLoopback;
    }
    return $result;
  }
  TransceiverIFLoopbackTestRequest._() : super();
  factory TransceiverIFLoopbackTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverIFLoopbackTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverIFLoopbackTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enableIfLoopback')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestRequest clone() => TransceiverIFLoopbackTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestRequest copyWith(void Function(TransceiverIFLoopbackTestRequest) updates) => super.copyWith((message) => updates(message as TransceiverIFLoopbackTestRequest)) as TransceiverIFLoopbackTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverIFLoopbackTestRequest create() => TransceiverIFLoopbackTestRequest._();
  TransceiverIFLoopbackTestRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverIFLoopbackTestRequest> createRepeated() => $pb.PbList<TransceiverIFLoopbackTestRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverIFLoopbackTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverIFLoopbackTestRequest>(create);
  static TransceiverIFLoopbackTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enableIfLoopback => $_getBF(0);
  @$pb.TagNumber(1)
  set enableIfLoopback($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnableIfLoopback() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnableIfLoopback() => clearField(1);
}

/// SpaceX.API.Device.TransceiverGetStatusRequest is a message:
class TransceiverGetStatusRequest extends $pb.GeneratedMessage {
  factory TransceiverGetStatusRequest() => create();
  TransceiverGetStatusRequest._() : super();
  factory TransceiverGetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverGetStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest clone() => TransceiverGetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest copyWith(void Function(TransceiverGetStatusRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusRequest)) as TransceiverGetStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest create() => TransceiverGetStatusRequest._();
  TransceiverGetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetStatusRequest> createRepeated() => $pb.PbList<TransceiverGetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetStatusRequest>(create);
  static TransceiverGetStatusRequest? _defaultInstance;
}

/// SpaceX.API.Device.TransceiverGetTelemetryRequest is a message:
class TransceiverGetTelemetryRequest extends $pb.GeneratedMessage {
  factory TransceiverGetTelemetryRequest() => create();
  TransceiverGetTelemetryRequest._() : super();
  factory TransceiverGetTelemetryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverGetTelemetryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest clone() => TransceiverGetTelemetryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest copyWith(void Function(TransceiverGetTelemetryRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryRequest)) as TransceiverGetTelemetryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryRequest create() => TransceiverGetTelemetryRequest._();
  TransceiverGetTelemetryRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetTelemetryRequest> createRepeated() => $pb.PbList<TransceiverGetTelemetryRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetTelemetryRequest>(create);
  static TransceiverGetTelemetryRequest? _defaultInstance;
}

enum Response_Response {
  reboot, 
  speedTest, 
  getDeviceInfo, 
  getNextId, 
  getPing, 
  setTrustedKeys, 
  factoryReset, 
  getLog, 
  setSku, 
  update, 
  getNetworkInterfaces, 
  pingHost, 
  getLocation, 
  getHeapDump, 
  restartControl, 
  fuse, 
  getConnections, 
  startSpeedtest, 
  getSpeedtestStatus, 
  reportClientSpeedtest, 
  initiateRemoteSsh, 
  selfTest, 
  setTestMode, 
  softwareUpdate, 
  enableDebugTelem, 
  dishStow, 
  dishGetContext, 
  dishGetStatus, 
  dishAuthenticate, 
  dishGetHistory, 
  dishSetEmc, 
  dishGetObstructionMap, 
  dishGetEmc, 
  dishSetConfig, 
  dishGetConfig, 
  startDishSelfTest, 
  dishInhibitGps, 
  wifiSetConfig, 
  wifiGetClients, 
  wifiSetup, 
  wifiGetStatus, 
  wifiAuthenticate, 
  wifiGetHistory, 
  wifiGetPingMetrics, 
  wifiGetDiagnostics, 
  wifiGetConfig, 
  wifiSetMeshDeviceTrust, 
  wifiSetMeshConfig, 
  wifiGetClientHistory, 
  wifiSelfTest, 
  wifiGetPersistentStats, 
  transceiverIfLoopbackTest, 
  transceiverGetStatus, 
  transceiverGetTelemetry, 
  notSet
}

/// SpaceX.API.Device.Response is a message:
class Response extends $pb.GeneratedMessage {
  factory Response({
    $fixnum.Int64? id,
    $1.Status? status,
    $fixnum.Int64? apiVersion,
    RebootResponse? reboot,
    SpeedTestResponse? speedTest,
    GetDeviceInfoResponse? getDeviceInfo,
    GetNextIdResponse? getNextId,
    GetPingResponse? getPing,
    SetTrustedKeysResponse? setTrustedKeys,
    FactoryResetResponse? factoryReset,
    GetLogResponse? getLog,
    SetSkuResponse? setSku,
    UpdateResponse? update,
    GetNetworkInterfacesResponse? getNetworkInterfaces,
    PingHostResponse? pingHost,
    GetLocationResponse? getLocation,
    GetHeapDumpResponse? getHeapDump,
    RestartControlResponse? restartControl,
    FuseResponse? fuse,
    GetConnectionsResponse? getConnections,
    StartSpeedtestResponse? startSpeedtest,
    GetSpeedtestStatusResponse? getSpeedtestStatus,
    ReportClientSpeedtestResponse? reportClientSpeedtest,
  @$core.Deprecated('This field is deprecated.')
    InitiateRemoteSshResponse? initiateRemoteSsh,
    SelfTestResponse? selfTest,
    SetTestModeResponse? setTestMode,
    SoftwareUpdateResponse? softwareUpdate,
    EnableDebugTelemResponse? enableDebugTelem,
    DishStowResponse? dishStow,
    DishGetContextResponse? dishGetContext,
    DishGetStatusResponse? dishGetStatus,
    DishAuthenticateResponse? dishAuthenticate,
    DishGetHistoryResponse? dishGetHistory,
    DishSetEmcResponse? dishSetEmc,
    DishGetObstructionMapResponse? dishGetObstructionMap,
    DishGetEmcResponse? dishGetEmc,
    DishSetConfigResponse? dishSetConfig,
    DishGetConfigResponse? dishGetConfig,
    StartDishSelfTestResponse? startDishSelfTest,
    DishInhibitGpsResponse? dishInhibitGps,
    WifiSetConfigResponse? wifiSetConfig,
    WifiGetClientsResponse? wifiGetClients,
    WifiSetupResponse? wifiSetup,
    WifiGetStatusResponse? wifiGetStatus,
    WifiAuthenticateResponse? wifiAuthenticate,
    WifiGetHistoryResponse? wifiGetHistory,
    WifiGetPingMetricsResponse? wifiGetPingMetrics,
    WifiGetDiagnosticsResponse? wifiGetDiagnostics,
    WifiGetConfigResponse? wifiGetConfig,
    WifiSetMeshDeviceTrustResponse? wifiSetMeshDeviceTrust,
  @$core.Deprecated('This field is deprecated.')
    WifiSetMeshConfigResponse? wifiSetMeshConfig,
    WifiGetClientHistoryResponse? wifiGetClientHistory,
    WifiSelfTestResponse? wifiSelfTest,
    WifiGetPersistentStatsResponse? wifiGetPersistentStats,
    TransceiverIFLoopbackTestResponse? transceiverIfLoopbackTest,
    TransceiverGetStatusResponse? transceiverGetStatus,
    TransceiverGetTelemetryResponse? transceiverGetTelemetry,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (status != null) {
      $result.status = status;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (reboot != null) {
      $result.reboot = reboot;
    }
    if (speedTest != null) {
      $result.speedTest = speedTest;
    }
    if (getDeviceInfo != null) {
      $result.getDeviceInfo = getDeviceInfo;
    }
    if (getNextId != null) {
      $result.getNextId = getNextId;
    }
    if (getPing != null) {
      $result.getPing = getPing;
    }
    if (setTrustedKeys != null) {
      $result.setTrustedKeys = setTrustedKeys;
    }
    if (factoryReset != null) {
      $result.factoryReset = factoryReset;
    }
    if (getLog != null) {
      $result.getLog = getLog;
    }
    if (setSku != null) {
      $result.setSku = setSku;
    }
    if (update != null) {
      $result.update = update;
    }
    if (getNetworkInterfaces != null) {
      $result.getNetworkInterfaces = getNetworkInterfaces;
    }
    if (pingHost != null) {
      $result.pingHost = pingHost;
    }
    if (getLocation != null) {
      $result.getLocation = getLocation;
    }
    if (getHeapDump != null) {
      $result.getHeapDump = getHeapDump;
    }
    if (restartControl != null) {
      $result.restartControl = restartControl;
    }
    if (fuse != null) {
      $result.fuse = fuse;
    }
    if (getConnections != null) {
      $result.getConnections = getConnections;
    }
    if (startSpeedtest != null) {
      $result.startSpeedtest = startSpeedtest;
    }
    if (getSpeedtestStatus != null) {
      $result.getSpeedtestStatus = getSpeedtestStatus;
    }
    if (reportClientSpeedtest != null) {
      $result.reportClientSpeedtest = reportClientSpeedtest;
    }
    if (initiateRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.initiateRemoteSsh = initiateRemoteSsh;
    }
    if (selfTest != null) {
      $result.selfTest = selfTest;
    }
    if (setTestMode != null) {
      $result.setTestMode = setTestMode;
    }
    if (softwareUpdate != null) {
      $result.softwareUpdate = softwareUpdate;
    }
    if (enableDebugTelem != null) {
      $result.enableDebugTelem = enableDebugTelem;
    }
    if (dishStow != null) {
      $result.dishStow = dishStow;
    }
    if (dishGetContext != null) {
      $result.dishGetContext = dishGetContext;
    }
    if (dishGetStatus != null) {
      $result.dishGetStatus = dishGetStatus;
    }
    if (dishAuthenticate != null) {
      $result.dishAuthenticate = dishAuthenticate;
    }
    if (dishGetHistory != null) {
      $result.dishGetHistory = dishGetHistory;
    }
    if (dishSetEmc != null) {
      $result.dishSetEmc = dishSetEmc;
    }
    if (dishGetObstructionMap != null) {
      $result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishGetEmc != null) {
      $result.dishGetEmc = dishGetEmc;
    }
    if (dishSetConfig != null) {
      $result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      $result.dishGetConfig = dishGetConfig;
    }
    if (startDishSelfTest != null) {
      $result.startDishSelfTest = startDishSelfTest;
    }
    if (dishInhibitGps != null) {
      $result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      $result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      $result.wifiGetClients = wifiGetClients;
    }
    if (wifiSetup != null) {
      $result.wifiSetup = wifiSetup;
    }
    if (wifiGetStatus != null) {
      $result.wifiGetStatus = wifiGetStatus;
    }
    if (wifiAuthenticate != null) {
      $result.wifiAuthenticate = wifiAuthenticate;
    }
    if (wifiGetHistory != null) {
      $result.wifiGetHistory = wifiGetHistory;
    }
    if (wifiGetPingMetrics != null) {
      $result.wifiGetPingMetrics = wifiGetPingMetrics;
    }
    if (wifiGetDiagnostics != null) {
      $result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      $result.wifiGetConfig = wifiGetConfig;
    }
    if (wifiSetMeshDeviceTrust != null) {
      $result.wifiSetMeshDeviceTrust = wifiSetMeshDeviceTrust;
    }
    if (wifiSetMeshConfig != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.wifiSetMeshConfig = wifiSetMeshConfig;
    }
    if (wifiGetClientHistory != null) {
      $result.wifiGetClientHistory = wifiGetClientHistory;
    }
    if (wifiSelfTest != null) {
      $result.wifiSelfTest = wifiSelfTest;
    }
    if (wifiGetPersistentStats != null) {
      $result.wifiGetPersistentStats = wifiGetPersistentStats;
    }
    if (transceiverIfLoopbackTest != null) {
      $result.transceiverIfLoopbackTest = transceiverIfLoopbackTest;
    }
    if (transceiverGetStatus != null) {
      $result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      $result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return $result;
  }
  Response._() : super();
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Response_Response> _Response_ResponseByTag = {
    1001 : Response_Response.reboot,
    1003 : Response_Response.speedTest,
    1004 : Response_Response.getDeviceInfo,
    1006 : Response_Response.getNextId,
    1009 : Response_Response.getPing,
    1010 : Response_Response.setTrustedKeys,
    1011 : Response_Response.factoryReset,
    1012 : Response_Response.getLog,
    1013 : Response_Response.setSku,
    1014 : Response_Response.update,
    1015 : Response_Response.getNetworkInterfaces,
    1016 : Response_Response.pingHost,
    1017 : Response_Response.getLocation,
    1019 : Response_Response.getHeapDump,
    1020 : Response_Response.restartControl,
    1021 : Response_Response.fuse,
    1023 : Response_Response.getConnections,
    1027 : Response_Response.startSpeedtest,
    1028 : Response_Response.getSpeedtestStatus,
    1029 : Response_Response.reportClientSpeedtest,
    1030 : Response_Response.initiateRemoteSsh,
    1031 : Response_Response.selfTest,
    1032 : Response_Response.setTestMode,
    1033 : Response_Response.softwareUpdate,
    1034 : Response_Response.enableDebugTelem,
    2002 : Response_Response.dishStow,
    2003 : Response_Response.dishGetContext,
    2004 : Response_Response.dishGetStatus,
    2005 : Response_Response.dishAuthenticate,
    2006 : Response_Response.dishGetHistory,
    2007 : Response_Response.dishSetEmc,
    2008 : Response_Response.dishGetObstructionMap,
    2009 : Response_Response.dishGetEmc,
    2010 : Response_Response.dishSetConfig,
    2011 : Response_Response.dishGetConfig,
    2012 : Response_Response.startDishSelfTest,
    2013 : Response_Response.dishInhibitGps,
    3001 : Response_Response.wifiSetConfig,
    3002 : Response_Response.wifiGetClients,
    3003 : Response_Response.wifiSetup,
    3004 : Response_Response.wifiGetStatus,
    3005 : Response_Response.wifiAuthenticate,
    3006 : Response_Response.wifiGetHistory,
    3007 : Response_Response.wifiGetPingMetrics,
    3008 : Response_Response.wifiGetDiagnostics,
    3009 : Response_Response.wifiGetConfig,
    3012 : Response_Response.wifiSetMeshDeviceTrust,
    3013 : Response_Response.wifiSetMeshConfig,
    3015 : Response_Response.wifiGetClientHistory,
    3016 : Response_Response.wifiSelfTest,
    3022 : Response_Response.wifiGetPersistentStats,
    4001 : Response_Response.transceiverIfLoopbackTest,
    4003 : Response_Response.transceiverGetStatus,
    4004 : Response_Response.transceiverGetTelemetry,
    0 : Response_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1001, 1003, 1004, 1006, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1023, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3012, 3013, 3015, 3016, 3022, 4001, 4003, 4004])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Status>(2, _omitFieldNames ? '' : 'status', subBuilder: $1.Status.create)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'apiVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RebootResponse>(1001, _omitFieldNames ? '' : 'reboot', subBuilder: RebootResponse.create)
    ..aOM<SpeedTestResponse>(1003, _omitFieldNames ? '' : 'speedTest', subBuilder: SpeedTestResponse.create)
    ..aOM<GetDeviceInfoResponse>(1004, _omitFieldNames ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoResponse.create)
    ..aOM<GetNextIdResponse>(1006, _omitFieldNames ? '' : 'getNextId', subBuilder: GetNextIdResponse.create)
    ..aOM<GetPingResponse>(1009, _omitFieldNames ? '' : 'getPing', subBuilder: GetPingResponse.create)
    ..aOM<SetTrustedKeysResponse>(1010, _omitFieldNames ? '' : 'setTrustedKeys', subBuilder: SetTrustedKeysResponse.create)
    ..aOM<FactoryResetResponse>(1011, _omitFieldNames ? '' : 'factoryReset', subBuilder: FactoryResetResponse.create)
    ..aOM<GetLogResponse>(1012, _omitFieldNames ? '' : 'getLog', subBuilder: GetLogResponse.create)
    ..aOM<SetSkuResponse>(1013, _omitFieldNames ? '' : 'setSku', subBuilder: SetSkuResponse.create)
    ..aOM<UpdateResponse>(1014, _omitFieldNames ? '' : 'update', subBuilder: UpdateResponse.create)
    ..aOM<GetNetworkInterfacesResponse>(1015, _omitFieldNames ? '' : 'getNetworkInterfaces', subBuilder: GetNetworkInterfacesResponse.create)
    ..aOM<PingHostResponse>(1016, _omitFieldNames ? '' : 'pingHost', subBuilder: PingHostResponse.create)
    ..aOM<GetLocationResponse>(1017, _omitFieldNames ? '' : 'getLocation', subBuilder: GetLocationResponse.create)
    ..aOM<GetHeapDumpResponse>(1019, _omitFieldNames ? '' : 'getHeapDump', subBuilder: GetHeapDumpResponse.create)
    ..aOM<RestartControlResponse>(1020, _omitFieldNames ? '' : 'restartControl', subBuilder: RestartControlResponse.create)
    ..aOM<FuseResponse>(1021, _omitFieldNames ? '' : 'fuse', subBuilder: FuseResponse.create)
    ..aOM<GetConnectionsResponse>(1023, _omitFieldNames ? '' : 'getConnections', subBuilder: GetConnectionsResponse.create)
    ..aOM<StartSpeedtestResponse>(1027, _omitFieldNames ? '' : 'startSpeedtest', subBuilder: StartSpeedtestResponse.create)
    ..aOM<GetSpeedtestStatusResponse>(1028, _omitFieldNames ? '' : 'getSpeedtestStatus', subBuilder: GetSpeedtestStatusResponse.create)
    ..aOM<ReportClientSpeedtestResponse>(1029, _omitFieldNames ? '' : 'reportClientSpeedtest', subBuilder: ReportClientSpeedtestResponse.create)
    ..aOM<InitiateRemoteSshResponse>(1030, _omitFieldNames ? '' : 'initiateRemoteSsh', subBuilder: InitiateRemoteSshResponse.create)
    ..aOM<SelfTestResponse>(1031, _omitFieldNames ? '' : 'selfTest', subBuilder: SelfTestResponse.create)
    ..aOM<SetTestModeResponse>(1032, _omitFieldNames ? '' : 'setTestMode', subBuilder: SetTestModeResponse.create)
    ..aOM<SoftwareUpdateResponse>(1033, _omitFieldNames ? '' : 'softwareUpdate', subBuilder: SoftwareUpdateResponse.create)
    ..aOM<EnableDebugTelemResponse>(1034, _omitFieldNames ? '' : 'enableDebugTelem', subBuilder: EnableDebugTelemResponse.create)
    ..aOM<DishStowResponse>(2002, _omitFieldNames ? '' : 'dishStow', subBuilder: DishStowResponse.create)
    ..aOM<DishGetContextResponse>(2003, _omitFieldNames ? '' : 'dishGetContext', subBuilder: DishGetContextResponse.create)
    ..aOM<DishGetStatusResponse>(2004, _omitFieldNames ? '' : 'dishGetStatus', subBuilder: DishGetStatusResponse.create)
    ..aOM<DishAuthenticateResponse>(2005, _omitFieldNames ? '' : 'dishAuthenticate', subBuilder: DishAuthenticateResponse.create)
    ..aOM<DishGetHistoryResponse>(2006, _omitFieldNames ? '' : 'dishGetHistory', subBuilder: DishGetHistoryResponse.create)
    ..aOM<DishSetEmcResponse>(2007, _omitFieldNames ? '' : 'dishSetEmc', subBuilder: DishSetEmcResponse.create)
    ..aOM<DishGetObstructionMapResponse>(2008, _omitFieldNames ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapResponse.create)
    ..aOM<DishGetEmcResponse>(2009, _omitFieldNames ? '' : 'dishGetEmc', subBuilder: DishGetEmcResponse.create)
    ..aOM<DishSetConfigResponse>(2010, _omitFieldNames ? '' : 'dishSetConfig', subBuilder: DishSetConfigResponse.create)
    ..aOM<DishGetConfigResponse>(2011, _omitFieldNames ? '' : 'dishGetConfig', subBuilder: DishGetConfigResponse.create)
    ..aOM<StartDishSelfTestResponse>(2012, _omitFieldNames ? '' : 'startDishSelfTest', subBuilder: StartDishSelfTestResponse.create)
    ..aOM<DishInhibitGpsResponse>(2013, _omitFieldNames ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsResponse.create)
    ..aOM<WifiSetConfigResponse>(3001, _omitFieldNames ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigResponse.create)
    ..aOM<WifiGetClientsResponse>(3002, _omitFieldNames ? '' : 'wifiGetClients', subBuilder: WifiGetClientsResponse.create)
    ..aOM<WifiSetupResponse>(3003, _omitFieldNames ? '' : 'wifiSetup', subBuilder: WifiSetupResponse.create)
    ..aOM<WifiGetStatusResponse>(3004, _omitFieldNames ? '' : 'wifiGetStatus', subBuilder: WifiGetStatusResponse.create)
    ..aOM<WifiAuthenticateResponse>(3005, _omitFieldNames ? '' : 'wifiAuthenticate', subBuilder: WifiAuthenticateResponse.create)
    ..aOM<WifiGetHistoryResponse>(3006, _omitFieldNames ? '' : 'wifiGetHistory', subBuilder: WifiGetHistoryResponse.create)
    ..aOM<WifiGetPingMetricsResponse>(3007, _omitFieldNames ? '' : 'wifiGetPingMetrics', subBuilder: WifiGetPingMetricsResponse.create)
    ..aOM<WifiGetDiagnosticsResponse>(3008, _omitFieldNames ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsResponse.create)
    ..aOM<WifiGetConfigResponse>(3009, _omitFieldNames ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigResponse.create)
    ..aOM<WifiSetMeshDeviceTrustResponse>(3012, _omitFieldNames ? '' : 'wifiSetMeshDeviceTrust', subBuilder: WifiSetMeshDeviceTrustResponse.create)
    ..aOM<WifiSetMeshConfigResponse>(3013, _omitFieldNames ? '' : 'wifiSetMeshConfig', subBuilder: WifiSetMeshConfigResponse.create)
    ..aOM<WifiGetClientHistoryResponse>(3015, _omitFieldNames ? '' : 'wifiGetClientHistory', subBuilder: WifiGetClientHistoryResponse.create)
    ..aOM<WifiSelfTestResponse>(3016, _omitFieldNames ? '' : 'wifiSelfTest', subBuilder: WifiSelfTestResponse.create)
    ..aOM<WifiGetPersistentStatsResponse>(3022, _omitFieldNames ? '' : 'wifiGetPersistentStats', subBuilder: WifiGetPersistentStatsResponse.create)
    ..aOM<TransceiverIFLoopbackTestResponse>(4001, _omitFieldNames ? '' : 'transceiverIfLoopbackTest', subBuilder: TransceiverIFLoopbackTestResponse.create)
    ..aOM<TransceiverGetStatusResponse>(4003, _omitFieldNames ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusResponse.create)
    ..aOM<TransceiverGetTelemetryResponse>(4004, _omitFieldNames ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  Response_Response whichResponse() => _Response_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($1.Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  $1.Status ensureStatus() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get apiVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set apiVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApiVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearApiVersion() => clearField(3);

  @$pb.TagNumber(1001)
  RebootResponse get reboot => $_getN(3);
  @$pb.TagNumber(1001)
  set reboot(RebootResponse v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasReboot() => $_has(3);
  @$pb.TagNumber(1001)
  void clearReboot() => clearField(1001);
  @$pb.TagNumber(1001)
  RebootResponse ensureReboot() => $_ensure(3);

  @$pb.TagNumber(1003)
  SpeedTestResponse get speedTest => $_getN(4);
  @$pb.TagNumber(1003)
  set speedTest(SpeedTestResponse v) { setField(1003, v); }
  @$pb.TagNumber(1003)
  $core.bool hasSpeedTest() => $_has(4);
  @$pb.TagNumber(1003)
  void clearSpeedTest() => clearField(1003);
  @$pb.TagNumber(1003)
  SpeedTestResponse ensureSpeedTest() => $_ensure(4);

  @$pb.TagNumber(1004)
  GetDeviceInfoResponse get getDeviceInfo => $_getN(5);
  @$pb.TagNumber(1004)
  set getDeviceInfo(GetDeviceInfoResponse v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasGetDeviceInfo() => $_has(5);
  @$pb.TagNumber(1004)
  void clearGetDeviceInfo() => clearField(1004);
  @$pb.TagNumber(1004)
  GetDeviceInfoResponse ensureGetDeviceInfo() => $_ensure(5);

  @$pb.TagNumber(1006)
  GetNextIdResponse get getNextId => $_getN(6);
  @$pb.TagNumber(1006)
  set getNextId(GetNextIdResponse v) { setField(1006, v); }
  @$pb.TagNumber(1006)
  $core.bool hasGetNextId() => $_has(6);
  @$pb.TagNumber(1006)
  void clearGetNextId() => clearField(1006);
  @$pb.TagNumber(1006)
  GetNextIdResponse ensureGetNextId() => $_ensure(6);

  @$pb.TagNumber(1009)
  GetPingResponse get getPing => $_getN(7);
  @$pb.TagNumber(1009)
  set getPing(GetPingResponse v) { setField(1009, v); }
  @$pb.TagNumber(1009)
  $core.bool hasGetPing() => $_has(7);
  @$pb.TagNumber(1009)
  void clearGetPing() => clearField(1009);
  @$pb.TagNumber(1009)
  GetPingResponse ensureGetPing() => $_ensure(7);

  @$pb.TagNumber(1010)
  SetTrustedKeysResponse get setTrustedKeys => $_getN(8);
  @$pb.TagNumber(1010)
  set setTrustedKeys(SetTrustedKeysResponse v) { setField(1010, v); }
  @$pb.TagNumber(1010)
  $core.bool hasSetTrustedKeys() => $_has(8);
  @$pb.TagNumber(1010)
  void clearSetTrustedKeys() => clearField(1010);
  @$pb.TagNumber(1010)
  SetTrustedKeysResponse ensureSetTrustedKeys() => $_ensure(8);

  @$pb.TagNumber(1011)
  FactoryResetResponse get factoryReset => $_getN(9);
  @$pb.TagNumber(1011)
  set factoryReset(FactoryResetResponse v) { setField(1011, v); }
  @$pb.TagNumber(1011)
  $core.bool hasFactoryReset() => $_has(9);
  @$pb.TagNumber(1011)
  void clearFactoryReset() => clearField(1011);
  @$pb.TagNumber(1011)
  FactoryResetResponse ensureFactoryReset() => $_ensure(9);

  @$pb.TagNumber(1012)
  GetLogResponse get getLog => $_getN(10);
  @$pb.TagNumber(1012)
  set getLog(GetLogResponse v) { setField(1012, v); }
  @$pb.TagNumber(1012)
  $core.bool hasGetLog() => $_has(10);
  @$pb.TagNumber(1012)
  void clearGetLog() => clearField(1012);
  @$pb.TagNumber(1012)
  GetLogResponse ensureGetLog() => $_ensure(10);

  @$pb.TagNumber(1013)
  SetSkuResponse get setSku => $_getN(11);
  @$pb.TagNumber(1013)
  set setSku(SetSkuResponse v) { setField(1013, v); }
  @$pb.TagNumber(1013)
  $core.bool hasSetSku() => $_has(11);
  @$pb.TagNumber(1013)
  void clearSetSku() => clearField(1013);
  @$pb.TagNumber(1013)
  SetSkuResponse ensureSetSku() => $_ensure(11);

  @$pb.TagNumber(1014)
  UpdateResponse get update => $_getN(12);
  @$pb.TagNumber(1014)
  set update(UpdateResponse v) { setField(1014, v); }
  @$pb.TagNumber(1014)
  $core.bool hasUpdate() => $_has(12);
  @$pb.TagNumber(1014)
  void clearUpdate() => clearField(1014);
  @$pb.TagNumber(1014)
  UpdateResponse ensureUpdate() => $_ensure(12);

  @$pb.TagNumber(1015)
  GetNetworkInterfacesResponse get getNetworkInterfaces => $_getN(13);
  @$pb.TagNumber(1015)
  set getNetworkInterfaces(GetNetworkInterfacesResponse v) { setField(1015, v); }
  @$pb.TagNumber(1015)
  $core.bool hasGetNetworkInterfaces() => $_has(13);
  @$pb.TagNumber(1015)
  void clearGetNetworkInterfaces() => clearField(1015);
  @$pb.TagNumber(1015)
  GetNetworkInterfacesResponse ensureGetNetworkInterfaces() => $_ensure(13);

  @$pb.TagNumber(1016)
  PingHostResponse get pingHost => $_getN(14);
  @$pb.TagNumber(1016)
  set pingHost(PingHostResponse v) { setField(1016, v); }
  @$pb.TagNumber(1016)
  $core.bool hasPingHost() => $_has(14);
  @$pb.TagNumber(1016)
  void clearPingHost() => clearField(1016);
  @$pb.TagNumber(1016)
  PingHostResponse ensurePingHost() => $_ensure(14);

  @$pb.TagNumber(1017)
  GetLocationResponse get getLocation => $_getN(15);
  @$pb.TagNumber(1017)
  set getLocation(GetLocationResponse v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGetLocation() => $_has(15);
  @$pb.TagNumber(1017)
  void clearGetLocation() => clearField(1017);
  @$pb.TagNumber(1017)
  GetLocationResponse ensureGetLocation() => $_ensure(15);

  @$pb.TagNumber(1019)
  GetHeapDumpResponse get getHeapDump => $_getN(16);
  @$pb.TagNumber(1019)
  set getHeapDump(GetHeapDumpResponse v) { setField(1019, v); }
  @$pb.TagNumber(1019)
  $core.bool hasGetHeapDump() => $_has(16);
  @$pb.TagNumber(1019)
  void clearGetHeapDump() => clearField(1019);
  @$pb.TagNumber(1019)
  GetHeapDumpResponse ensureGetHeapDump() => $_ensure(16);

  @$pb.TagNumber(1020)
  RestartControlResponse get restartControl => $_getN(17);
  @$pb.TagNumber(1020)
  set restartControl(RestartControlResponse v) { setField(1020, v); }
  @$pb.TagNumber(1020)
  $core.bool hasRestartControl() => $_has(17);
  @$pb.TagNumber(1020)
  void clearRestartControl() => clearField(1020);
  @$pb.TagNumber(1020)
  RestartControlResponse ensureRestartControl() => $_ensure(17);

  @$pb.TagNumber(1021)
  FuseResponse get fuse => $_getN(18);
  @$pb.TagNumber(1021)
  set fuse(FuseResponse v) { setField(1021, v); }
  @$pb.TagNumber(1021)
  $core.bool hasFuse() => $_has(18);
  @$pb.TagNumber(1021)
  void clearFuse() => clearField(1021);
  @$pb.TagNumber(1021)
  FuseResponse ensureFuse() => $_ensure(18);

  @$pb.TagNumber(1023)
  GetConnectionsResponse get getConnections => $_getN(19);
  @$pb.TagNumber(1023)
  set getConnections(GetConnectionsResponse v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasGetConnections() => $_has(19);
  @$pb.TagNumber(1023)
  void clearGetConnections() => clearField(1023);
  @$pb.TagNumber(1023)
  GetConnectionsResponse ensureGetConnections() => $_ensure(19);

  @$pb.TagNumber(1027)
  StartSpeedtestResponse get startSpeedtest => $_getN(20);
  @$pb.TagNumber(1027)
  set startSpeedtest(StartSpeedtestResponse v) { setField(1027, v); }
  @$pb.TagNumber(1027)
  $core.bool hasStartSpeedtest() => $_has(20);
  @$pb.TagNumber(1027)
  void clearStartSpeedtest() => clearField(1027);
  @$pb.TagNumber(1027)
  StartSpeedtestResponse ensureStartSpeedtest() => $_ensure(20);

  @$pb.TagNumber(1028)
  GetSpeedtestStatusResponse get getSpeedtestStatus => $_getN(21);
  @$pb.TagNumber(1028)
  set getSpeedtestStatus(GetSpeedtestStatusResponse v) { setField(1028, v); }
  @$pb.TagNumber(1028)
  $core.bool hasGetSpeedtestStatus() => $_has(21);
  @$pb.TagNumber(1028)
  void clearGetSpeedtestStatus() => clearField(1028);
  @$pb.TagNumber(1028)
  GetSpeedtestStatusResponse ensureGetSpeedtestStatus() => $_ensure(21);

  @$pb.TagNumber(1029)
  ReportClientSpeedtestResponse get reportClientSpeedtest => $_getN(22);
  @$pb.TagNumber(1029)
  set reportClientSpeedtest(ReportClientSpeedtestResponse v) { setField(1029, v); }
  @$pb.TagNumber(1029)
  $core.bool hasReportClientSpeedtest() => $_has(22);
  @$pb.TagNumber(1029)
  void clearReportClientSpeedtest() => clearField(1029);
  @$pb.TagNumber(1029)
  ReportClientSpeedtestResponse ensureReportClientSpeedtest() => $_ensure(22);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  InitiateRemoteSshResponse get initiateRemoteSsh => $_getN(23);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  set initiateRemoteSsh(InitiateRemoteSshResponse v) { setField(1030, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  $core.bool hasInitiateRemoteSsh() => $_has(23);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  void clearInitiateRemoteSsh() => clearField(1030);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1030)
  InitiateRemoteSshResponse ensureInitiateRemoteSsh() => $_ensure(23);

  @$pb.TagNumber(1031)
  SelfTestResponse get selfTest => $_getN(24);
  @$pb.TagNumber(1031)
  set selfTest(SelfTestResponse v) { setField(1031, v); }
  @$pb.TagNumber(1031)
  $core.bool hasSelfTest() => $_has(24);
  @$pb.TagNumber(1031)
  void clearSelfTest() => clearField(1031);
  @$pb.TagNumber(1031)
  SelfTestResponse ensureSelfTest() => $_ensure(24);

  @$pb.TagNumber(1032)
  SetTestModeResponse get setTestMode => $_getN(25);
  @$pb.TagNumber(1032)
  set setTestMode(SetTestModeResponse v) { setField(1032, v); }
  @$pb.TagNumber(1032)
  $core.bool hasSetTestMode() => $_has(25);
  @$pb.TagNumber(1032)
  void clearSetTestMode() => clearField(1032);
  @$pb.TagNumber(1032)
  SetTestModeResponse ensureSetTestMode() => $_ensure(25);

  @$pb.TagNumber(1033)
  SoftwareUpdateResponse get softwareUpdate => $_getN(26);
  @$pb.TagNumber(1033)
  set softwareUpdate(SoftwareUpdateResponse v) { setField(1033, v); }
  @$pb.TagNumber(1033)
  $core.bool hasSoftwareUpdate() => $_has(26);
  @$pb.TagNumber(1033)
  void clearSoftwareUpdate() => clearField(1033);
  @$pb.TagNumber(1033)
  SoftwareUpdateResponse ensureSoftwareUpdate() => $_ensure(26);

  @$pb.TagNumber(1034)
  EnableDebugTelemResponse get enableDebugTelem => $_getN(27);
  @$pb.TagNumber(1034)
  set enableDebugTelem(EnableDebugTelemResponse v) { setField(1034, v); }
  @$pb.TagNumber(1034)
  $core.bool hasEnableDebugTelem() => $_has(27);
  @$pb.TagNumber(1034)
  void clearEnableDebugTelem() => clearField(1034);
  @$pb.TagNumber(1034)
  EnableDebugTelemResponse ensureEnableDebugTelem() => $_ensure(27);

  @$pb.TagNumber(2002)
  DishStowResponse get dishStow => $_getN(28);
  @$pb.TagNumber(2002)
  set dishStow(DishStowResponse v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasDishStow() => $_has(28);
  @$pb.TagNumber(2002)
  void clearDishStow() => clearField(2002);
  @$pb.TagNumber(2002)
  DishStowResponse ensureDishStow() => $_ensure(28);

  @$pb.TagNumber(2003)
  DishGetContextResponse get dishGetContext => $_getN(29);
  @$pb.TagNumber(2003)
  set dishGetContext(DishGetContextResponse v) { setField(2003, v); }
  @$pb.TagNumber(2003)
  $core.bool hasDishGetContext() => $_has(29);
  @$pb.TagNumber(2003)
  void clearDishGetContext() => clearField(2003);
  @$pb.TagNumber(2003)
  DishGetContextResponse ensureDishGetContext() => $_ensure(29);

  @$pb.TagNumber(2004)
  DishGetStatusResponse get dishGetStatus => $_getN(30);
  @$pb.TagNumber(2004)
  set dishGetStatus(DishGetStatusResponse v) { setField(2004, v); }
  @$pb.TagNumber(2004)
  $core.bool hasDishGetStatus() => $_has(30);
  @$pb.TagNumber(2004)
  void clearDishGetStatus() => clearField(2004);
  @$pb.TagNumber(2004)
  DishGetStatusResponse ensureDishGetStatus() => $_ensure(30);

  @$pb.TagNumber(2005)
  DishAuthenticateResponse get dishAuthenticate => $_getN(31);
  @$pb.TagNumber(2005)
  set dishAuthenticate(DishAuthenticateResponse v) { setField(2005, v); }
  @$pb.TagNumber(2005)
  $core.bool hasDishAuthenticate() => $_has(31);
  @$pb.TagNumber(2005)
  void clearDishAuthenticate() => clearField(2005);
  @$pb.TagNumber(2005)
  DishAuthenticateResponse ensureDishAuthenticate() => $_ensure(31);

  @$pb.TagNumber(2006)
  DishGetHistoryResponse get dishGetHistory => $_getN(32);
  @$pb.TagNumber(2006)
  set dishGetHistory(DishGetHistoryResponse v) { setField(2006, v); }
  @$pb.TagNumber(2006)
  $core.bool hasDishGetHistory() => $_has(32);
  @$pb.TagNumber(2006)
  void clearDishGetHistory() => clearField(2006);
  @$pb.TagNumber(2006)
  DishGetHistoryResponse ensureDishGetHistory() => $_ensure(32);

  @$pb.TagNumber(2007)
  DishSetEmcResponse get dishSetEmc => $_getN(33);
  @$pb.TagNumber(2007)
  set dishSetEmc(DishSetEmcResponse v) { setField(2007, v); }
  @$pb.TagNumber(2007)
  $core.bool hasDishSetEmc() => $_has(33);
  @$pb.TagNumber(2007)
  void clearDishSetEmc() => clearField(2007);
  @$pb.TagNumber(2007)
  DishSetEmcResponse ensureDishSetEmc() => $_ensure(33);

  @$pb.TagNumber(2008)
  DishGetObstructionMapResponse get dishGetObstructionMap => $_getN(34);
  @$pb.TagNumber(2008)
  set dishGetObstructionMap(DishGetObstructionMapResponse v) { setField(2008, v); }
  @$pb.TagNumber(2008)
  $core.bool hasDishGetObstructionMap() => $_has(34);
  @$pb.TagNumber(2008)
  void clearDishGetObstructionMap() => clearField(2008);
  @$pb.TagNumber(2008)
  DishGetObstructionMapResponse ensureDishGetObstructionMap() => $_ensure(34);

  @$pb.TagNumber(2009)
  DishGetEmcResponse get dishGetEmc => $_getN(35);
  @$pb.TagNumber(2009)
  set dishGetEmc(DishGetEmcResponse v) { setField(2009, v); }
  @$pb.TagNumber(2009)
  $core.bool hasDishGetEmc() => $_has(35);
  @$pb.TagNumber(2009)
  void clearDishGetEmc() => clearField(2009);
  @$pb.TagNumber(2009)
  DishGetEmcResponse ensureDishGetEmc() => $_ensure(35);

  @$pb.TagNumber(2010)
  DishSetConfigResponse get dishSetConfig => $_getN(36);
  @$pb.TagNumber(2010)
  set dishSetConfig(DishSetConfigResponse v) { setField(2010, v); }
  @$pb.TagNumber(2010)
  $core.bool hasDishSetConfig() => $_has(36);
  @$pb.TagNumber(2010)
  void clearDishSetConfig() => clearField(2010);
  @$pb.TagNumber(2010)
  DishSetConfigResponse ensureDishSetConfig() => $_ensure(36);

  @$pb.TagNumber(2011)
  DishGetConfigResponse get dishGetConfig => $_getN(37);
  @$pb.TagNumber(2011)
  set dishGetConfig(DishGetConfigResponse v) { setField(2011, v); }
  @$pb.TagNumber(2011)
  $core.bool hasDishGetConfig() => $_has(37);
  @$pb.TagNumber(2011)
  void clearDishGetConfig() => clearField(2011);
  @$pb.TagNumber(2011)
  DishGetConfigResponse ensureDishGetConfig() => $_ensure(37);

  @$pb.TagNumber(2012)
  StartDishSelfTestResponse get startDishSelfTest => $_getN(38);
  @$pb.TagNumber(2012)
  set startDishSelfTest(StartDishSelfTestResponse v) { setField(2012, v); }
  @$pb.TagNumber(2012)
  $core.bool hasStartDishSelfTest() => $_has(38);
  @$pb.TagNumber(2012)
  void clearStartDishSelfTest() => clearField(2012);
  @$pb.TagNumber(2012)
  StartDishSelfTestResponse ensureStartDishSelfTest() => $_ensure(38);

  @$pb.TagNumber(2013)
  DishInhibitGpsResponse get dishInhibitGps => $_getN(39);
  @$pb.TagNumber(2013)
  set dishInhibitGps(DishInhibitGpsResponse v) { setField(2013, v); }
  @$pb.TagNumber(2013)
  $core.bool hasDishInhibitGps() => $_has(39);
  @$pb.TagNumber(2013)
  void clearDishInhibitGps() => clearField(2013);
  @$pb.TagNumber(2013)
  DishInhibitGpsResponse ensureDishInhibitGps() => $_ensure(39);

  @$pb.TagNumber(3001)
  WifiSetConfigResponse get wifiSetConfig => $_getN(40);
  @$pb.TagNumber(3001)
  set wifiSetConfig(WifiSetConfigResponse v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiSetConfig() => $_has(40);
  @$pb.TagNumber(3001)
  void clearWifiSetConfig() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiSetConfigResponse ensureWifiSetConfig() => $_ensure(40);

  @$pb.TagNumber(3002)
  WifiGetClientsResponse get wifiGetClients => $_getN(41);
  @$pb.TagNumber(3002)
  set wifiGetClients(WifiGetClientsResponse v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiGetClients() => $_has(41);
  @$pb.TagNumber(3002)
  void clearWifiGetClients() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiGetClientsResponse ensureWifiGetClients() => $_ensure(41);

  @$pb.TagNumber(3003)
  WifiSetupResponse get wifiSetup => $_getN(42);
  @$pb.TagNumber(3003)
  set wifiSetup(WifiSetupResponse v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasWifiSetup() => $_has(42);
  @$pb.TagNumber(3003)
  void clearWifiSetup() => clearField(3003);
  @$pb.TagNumber(3003)
  WifiSetupResponse ensureWifiSetup() => $_ensure(42);

  @$pb.TagNumber(3004)
  WifiGetStatusResponse get wifiGetStatus => $_getN(43);
  @$pb.TagNumber(3004)
  set wifiGetStatus(WifiGetStatusResponse v) { setField(3004, v); }
  @$pb.TagNumber(3004)
  $core.bool hasWifiGetStatus() => $_has(43);
  @$pb.TagNumber(3004)
  void clearWifiGetStatus() => clearField(3004);
  @$pb.TagNumber(3004)
  WifiGetStatusResponse ensureWifiGetStatus() => $_ensure(43);

  @$pb.TagNumber(3005)
  WifiAuthenticateResponse get wifiAuthenticate => $_getN(44);
  @$pb.TagNumber(3005)
  set wifiAuthenticate(WifiAuthenticateResponse v) { setField(3005, v); }
  @$pb.TagNumber(3005)
  $core.bool hasWifiAuthenticate() => $_has(44);
  @$pb.TagNumber(3005)
  void clearWifiAuthenticate() => clearField(3005);
  @$pb.TagNumber(3005)
  WifiAuthenticateResponse ensureWifiAuthenticate() => $_ensure(44);

  @$pb.TagNumber(3006)
  WifiGetHistoryResponse get wifiGetHistory => $_getN(45);
  @$pb.TagNumber(3006)
  set wifiGetHistory(WifiGetHistoryResponse v) { setField(3006, v); }
  @$pb.TagNumber(3006)
  $core.bool hasWifiGetHistory() => $_has(45);
  @$pb.TagNumber(3006)
  void clearWifiGetHistory() => clearField(3006);
  @$pb.TagNumber(3006)
  WifiGetHistoryResponse ensureWifiGetHistory() => $_ensure(45);

  @$pb.TagNumber(3007)
  WifiGetPingMetricsResponse get wifiGetPingMetrics => $_getN(46);
  @$pb.TagNumber(3007)
  set wifiGetPingMetrics(WifiGetPingMetricsResponse v) { setField(3007, v); }
  @$pb.TagNumber(3007)
  $core.bool hasWifiGetPingMetrics() => $_has(46);
  @$pb.TagNumber(3007)
  void clearWifiGetPingMetrics() => clearField(3007);
  @$pb.TagNumber(3007)
  WifiGetPingMetricsResponse ensureWifiGetPingMetrics() => $_ensure(46);

  @$pb.TagNumber(3008)
  WifiGetDiagnosticsResponse get wifiGetDiagnostics => $_getN(47);
  @$pb.TagNumber(3008)
  set wifiGetDiagnostics(WifiGetDiagnosticsResponse v) { setField(3008, v); }
  @$pb.TagNumber(3008)
  $core.bool hasWifiGetDiagnostics() => $_has(47);
  @$pb.TagNumber(3008)
  void clearWifiGetDiagnostics() => clearField(3008);
  @$pb.TagNumber(3008)
  WifiGetDiagnosticsResponse ensureWifiGetDiagnostics() => $_ensure(47);

  @$pb.TagNumber(3009)
  WifiGetConfigResponse get wifiGetConfig => $_getN(48);
  @$pb.TagNumber(3009)
  set wifiGetConfig(WifiGetConfigResponse v) { setField(3009, v); }
  @$pb.TagNumber(3009)
  $core.bool hasWifiGetConfig() => $_has(48);
  @$pb.TagNumber(3009)
  void clearWifiGetConfig() => clearField(3009);
  @$pb.TagNumber(3009)
  WifiGetConfigResponse ensureWifiGetConfig() => $_ensure(48);

  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustResponse get wifiSetMeshDeviceTrust => $_getN(49);
  @$pb.TagNumber(3012)
  set wifiSetMeshDeviceTrust(WifiSetMeshDeviceTrustResponse v) { setField(3012, v); }
  @$pb.TagNumber(3012)
  $core.bool hasWifiSetMeshDeviceTrust() => $_has(49);
  @$pb.TagNumber(3012)
  void clearWifiSetMeshDeviceTrust() => clearField(3012);
  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustResponse ensureWifiSetMeshDeviceTrust() => $_ensure(49);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigResponse get wifiSetMeshConfig => $_getN(50);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  set wifiSetMeshConfig(WifiSetMeshConfigResponse v) { setField(3013, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  $core.bool hasWifiSetMeshConfig() => $_has(50);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  void clearWifiSetMeshConfig() => clearField(3013);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigResponse ensureWifiSetMeshConfig() => $_ensure(50);

  @$pb.TagNumber(3015)
  WifiGetClientHistoryResponse get wifiGetClientHistory => $_getN(51);
  @$pb.TagNumber(3015)
  set wifiGetClientHistory(WifiGetClientHistoryResponse v) { setField(3015, v); }
  @$pb.TagNumber(3015)
  $core.bool hasWifiGetClientHistory() => $_has(51);
  @$pb.TagNumber(3015)
  void clearWifiGetClientHistory() => clearField(3015);
  @$pb.TagNumber(3015)
  WifiGetClientHistoryResponse ensureWifiGetClientHistory() => $_ensure(51);

  @$pb.TagNumber(3016)
  WifiSelfTestResponse get wifiSelfTest => $_getN(52);
  @$pb.TagNumber(3016)
  set wifiSelfTest(WifiSelfTestResponse v) { setField(3016, v); }
  @$pb.TagNumber(3016)
  $core.bool hasWifiSelfTest() => $_has(52);
  @$pb.TagNumber(3016)
  void clearWifiSelfTest() => clearField(3016);
  @$pb.TagNumber(3016)
  WifiSelfTestResponse ensureWifiSelfTest() => $_ensure(52);

  @$pb.TagNumber(3022)
  WifiGetPersistentStatsResponse get wifiGetPersistentStats => $_getN(53);
  @$pb.TagNumber(3022)
  set wifiGetPersistentStats(WifiGetPersistentStatsResponse v) { setField(3022, v); }
  @$pb.TagNumber(3022)
  $core.bool hasWifiGetPersistentStats() => $_has(53);
  @$pb.TagNumber(3022)
  void clearWifiGetPersistentStats() => clearField(3022);
  @$pb.TagNumber(3022)
  WifiGetPersistentStatsResponse ensureWifiGetPersistentStats() => $_ensure(53);

  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestResponse get transceiverIfLoopbackTest => $_getN(54);
  @$pb.TagNumber(4001)
  set transceiverIfLoopbackTest(TransceiverIFLoopbackTestResponse v) { setField(4001, v); }
  @$pb.TagNumber(4001)
  $core.bool hasTransceiverIfLoopbackTest() => $_has(54);
  @$pb.TagNumber(4001)
  void clearTransceiverIfLoopbackTest() => clearField(4001);
  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestResponse ensureTransceiverIfLoopbackTest() => $_ensure(54);

  @$pb.TagNumber(4003)
  TransceiverGetStatusResponse get transceiverGetStatus => $_getN(55);
  @$pb.TagNumber(4003)
  set transceiverGetStatus(TransceiverGetStatusResponse v) { setField(4003, v); }
  @$pb.TagNumber(4003)
  $core.bool hasTransceiverGetStatus() => $_has(55);
  @$pb.TagNumber(4003)
  void clearTransceiverGetStatus() => clearField(4003);
  @$pb.TagNumber(4003)
  TransceiverGetStatusResponse ensureTransceiverGetStatus() => $_ensure(55);

  @$pb.TagNumber(4004)
  TransceiverGetTelemetryResponse get transceiverGetTelemetry => $_getN(56);
  @$pb.TagNumber(4004)
  set transceiverGetTelemetry(TransceiverGetTelemetryResponse v) { setField(4004, v); }
  @$pb.TagNumber(4004)
  $core.bool hasTransceiverGetTelemetry() => $_has(56);
  @$pb.TagNumber(4004)
  void clearTransceiverGetTelemetry() => clearField(4004);
  @$pb.TagNumber(4004)
  TransceiverGetTelemetryResponse ensureTransceiverGetTelemetry() => $_ensure(56);
}

/// SpaceX.API.Status.Status is a message:
class Status extends $pb.GeneratedMessage {
  factory Status({
    $core.int? code,
    $core.String? message,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  Status._() : super();
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Status', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

/// SpaceX.API.Device.RebootResponse is a message:
class RebootResponse extends $pb.GeneratedMessage {
  factory RebootResponse() => create();
  RebootResponse._() : super();
  factory RebootResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RebootResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootResponse clone() => RebootResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootResponse copyWith(void Function(RebootResponse) updates) => super.copyWith((message) => updates(message as RebootResponse)) as RebootResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RebootResponse create() => RebootResponse._();
  RebootResponse createEmptyInstance() => create();
  static $pb.PbList<RebootResponse> createRepeated() => $pb.PbList<RebootResponse>();
  @$core.pragma('dart2js:noInline')
  static RebootResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootResponse>(create);
  static RebootResponse? _defaultInstance;
}

/// SpaceX.API.Device.SpeedTestResponse is a message:
class SpeedTestResponse extends $pb.GeneratedMessage {
  factory SpeedTestResponse({
  @$core.Deprecated('This field is deprecated.')
    $core.double? downloadBps,
  @$core.Deprecated('This field is deprecated.')
    $core.double? uploadBps,
  @$core.Deprecated('This field is deprecated.')
    $core.double? latencyS,
  @$core.Deprecated('This field is deprecated.')
    $core.double? downloadMbps,
  @$core.Deprecated('This field is deprecated.')
    $core.double? uploadMbps,
  @$core.Deprecated('This field is deprecated.')
    $core.double? latencyMs,
    $core.double? downloadMbps1TcpConn,
    $core.double? uploadMbps1TcpConn,
    $core.double? downloadMbps4TcpConn,
    $core.double? uploadMbps4TcpConn,
    $core.double? downloadMbps16TcpConn,
    $core.double? uploadMbps16TcpConn,
    $core.double? downloadMbps64TcpConn,
    $core.double? uploadMbps64TcpConn,
    SpeedTestStats? routerSpeedtest,
  }) {
    final $result = create();
    if (downloadBps != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.downloadBps = downloadBps;
    }
    if (uploadBps != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.uploadBps = uploadBps;
    }
    if (latencyS != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.latencyS = latencyS;
    }
    if (downloadMbps != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.downloadMbps = downloadMbps;
    }
    if (uploadMbps != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.uploadMbps = uploadMbps;
    }
    if (latencyMs != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.latencyMs = latencyMs;
    }
    if (downloadMbps1TcpConn != null) {
      $result.downloadMbps1TcpConn = downloadMbps1TcpConn;
    }
    if (uploadMbps1TcpConn != null) {
      $result.uploadMbps1TcpConn = uploadMbps1TcpConn;
    }
    if (downloadMbps4TcpConn != null) {
      $result.downloadMbps4TcpConn = downloadMbps4TcpConn;
    }
    if (uploadMbps4TcpConn != null) {
      $result.uploadMbps4TcpConn = uploadMbps4TcpConn;
    }
    if (downloadMbps16TcpConn != null) {
      $result.downloadMbps16TcpConn = downloadMbps16TcpConn;
    }
    if (uploadMbps16TcpConn != null) {
      $result.uploadMbps16TcpConn = uploadMbps16TcpConn;
    }
    if (downloadMbps64TcpConn != null) {
      $result.downloadMbps64TcpConn = downloadMbps64TcpConn;
    }
    if (uploadMbps64TcpConn != null) {
      $result.uploadMbps64TcpConn = uploadMbps64TcpConn;
    }
    if (routerSpeedtest != null) {
      $result.routerSpeedtest = routerSpeedtest;
    }
    return $result;
  }
  SpeedTestResponse._() : super();
  factory SpeedTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'downloadBps', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'uploadBps', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'latencyS', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'downloadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'uploadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'latencyMs', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'downloadMbps1TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_1_tcp_conn')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'uploadMbps1TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_1_tcp_conn')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'downloadMbps4TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_4_tcp_conn')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'uploadMbps4TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_4_tcp_conn')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'downloadMbps16TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_16_tcp_conn')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'uploadMbps16TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_16_tcp_conn')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'downloadMbps64TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_64_tcp_conn')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'uploadMbps64TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_64_tcp_conn')
    ..aOM<SpeedTestStats>(15, _omitFieldNames ? '' : 'routerSpeedtest', subBuilder: SpeedTestStats.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestResponse clone() => SpeedTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestResponse copyWith(void Function(SpeedTestResponse) updates) => super.copyWith((message) => updates(message as SpeedTestResponse)) as SpeedTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedTestResponse create() => SpeedTestResponse._();
  SpeedTestResponse createEmptyInstance() => create();
  static $pb.PbList<SpeedTestResponse> createRepeated() => $pb.PbList<SpeedTestResponse>();
  @$core.pragma('dart2js:noInline')
  static SpeedTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedTestResponse>(create);
  static SpeedTestResponse? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.double get downloadBps => $_getN(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set downloadBps($core.double v) { $_setFloat(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasDownloadBps() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearDownloadBps() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.double get uploadBps => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set uploadBps($core.double v) { $_setFloat(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasUploadBps() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearUploadBps() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.double get latencyS => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set latencyS($core.double v) { $_setFloat(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasLatencyS() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearLatencyS() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.double get downloadMbps => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set downloadMbps($core.double v) { $_setFloat(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasDownloadMbps() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearDownloadMbps() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.double get uploadMbps => $_getN(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set uploadMbps($core.double v) { $_setFloat(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasUploadMbps() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearUploadMbps() => clearField(5);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.double get latencyMs => $_getN(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set latencyMs($core.double v) { $_setFloat(5, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasLatencyMs() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearLatencyMs() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get downloadMbps1TcpConn => $_getN(6);
  @$pb.TagNumber(7)
  set downloadMbps1TcpConn($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDownloadMbps1TcpConn() => $_has(6);
  @$pb.TagNumber(7)
  void clearDownloadMbps1TcpConn() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get uploadMbps1TcpConn => $_getN(7);
  @$pb.TagNumber(8)
  set uploadMbps1TcpConn($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUploadMbps1TcpConn() => $_has(7);
  @$pb.TagNumber(8)
  void clearUploadMbps1TcpConn() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get downloadMbps4TcpConn => $_getN(8);
  @$pb.TagNumber(9)
  set downloadMbps4TcpConn($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDownloadMbps4TcpConn() => $_has(8);
  @$pb.TagNumber(9)
  void clearDownloadMbps4TcpConn() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get uploadMbps4TcpConn => $_getN(9);
  @$pb.TagNumber(10)
  set uploadMbps4TcpConn($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUploadMbps4TcpConn() => $_has(9);
  @$pb.TagNumber(10)
  void clearUploadMbps4TcpConn() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get downloadMbps16TcpConn => $_getN(10);
  @$pb.TagNumber(11)
  set downloadMbps16TcpConn($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDownloadMbps16TcpConn() => $_has(10);
  @$pb.TagNumber(11)
  void clearDownloadMbps16TcpConn() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get uploadMbps16TcpConn => $_getN(11);
  @$pb.TagNumber(12)
  set uploadMbps16TcpConn($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUploadMbps16TcpConn() => $_has(11);
  @$pb.TagNumber(12)
  void clearUploadMbps16TcpConn() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get downloadMbps64TcpConn => $_getN(12);
  @$pb.TagNumber(13)
  set downloadMbps64TcpConn($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDownloadMbps64TcpConn() => $_has(12);
  @$pb.TagNumber(13)
  void clearDownloadMbps64TcpConn() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get uploadMbps64TcpConn => $_getN(13);
  @$pb.TagNumber(14)
  set uploadMbps64TcpConn($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUploadMbps64TcpConn() => $_has(13);
  @$pb.TagNumber(14)
  void clearUploadMbps64TcpConn() => clearField(14);

  @$pb.TagNumber(15)
  SpeedTestStats get routerSpeedtest => $_getN(14);
  @$pb.TagNumber(15)
  set routerSpeedtest(SpeedTestStats v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasRouterSpeedtest() => $_has(14);
  @$pb.TagNumber(15)
  void clearRouterSpeedtest() => clearField(15);
  @$pb.TagNumber(15)
  SpeedTestStats ensureRouterSpeedtest() => $_ensure(14);
}

/// SpaceX.API.Device.GetDeviceInfoResponse is a message:
class GetDeviceInfoResponse extends $pb.GeneratedMessage {
  factory GetDeviceInfoResponse({
    DeviceInfo? deviceInfo,
  }) {
    final $result = create();
    if (deviceInfo != null) {
      $result.deviceInfo = deviceInfo;
    }
    return $result;
  }
  GetDeviceInfoResponse._() : super();
  factory GetDeviceInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, _omitFieldNames ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse clone() => GetDeviceInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse copyWith(void Function(GetDeviceInfoResponse) updates) => super.copyWith((message) => updates(message as GetDeviceInfoResponse)) as GetDeviceInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoResponse create() => GetDeviceInfoResponse._();
  GetDeviceInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetDeviceInfoResponse> createRepeated() => $pb.PbList<GetDeviceInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceInfoResponse>(create);
  static GetDeviceInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfo get deviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set deviceInfo(DeviceInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => clearField(1);
  @$pb.TagNumber(1)
  DeviceInfo ensureDeviceInfo() => $_ensure(0);
}

/// SpaceX.API.Device.DeviceInfo is a message:
class DeviceInfo extends $pb.GeneratedMessage {
  factory DeviceInfo({
    $core.String? id,
    $core.String? hardwareVersion,
    $core.String? softwareVersion,
    $core.String? countryCode,
    $core.int? utcOffsetS,
    $core.bool? softwarePartitionsEqual,
    $core.bool? isDev,
    $core.int? bootcount,
    $core.int? antiRollbackVersion,
    $core.bool? isHitl,
    $core.String? manufacturedVersion,
    $fixnum.Int64? generationNumber,
    $core.bool? dishCohoused,
    BootInfo? boot,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (hardwareVersion != null) {
      $result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      $result.softwareVersion = softwareVersion;
    }
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    if (utcOffsetS != null) {
      $result.utcOffsetS = utcOffsetS;
    }
    if (softwarePartitionsEqual != null) {
      $result.softwarePartitionsEqual = softwarePartitionsEqual;
    }
    if (isDev != null) {
      $result.isDev = isDev;
    }
    if (bootcount != null) {
      $result.bootcount = bootcount;
    }
    if (antiRollbackVersion != null) {
      $result.antiRollbackVersion = antiRollbackVersion;
    }
    if (isHitl != null) {
      $result.isHitl = isHitl;
    }
    if (manufacturedVersion != null) {
      $result.manufacturedVersion = manufacturedVersion;
    }
    if (generationNumber != null) {
      $result.generationNumber = generationNumber;
    }
    if (dishCohoused != null) {
      $result.dishCohoused = dishCohoused;
    }
    if (boot != null) {
      $result.boot = boot;
    }
    return $result;
  }
  DeviceInfo._() : super();
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'hardwareVersion')
    ..aOS(3, _omitFieldNames ? '' : 'softwareVersion')
    ..aOS(4, _omitFieldNames ? '' : 'countryCode')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'utcOffsetS', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'softwarePartitionsEqual')
    ..aOB(7, _omitFieldNames ? '' : 'isDev')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'bootcount', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'antiRollbackVersion', $pb.PbFieldType.O3)
    ..aOB(10, _omitFieldNames ? '' : 'isHitl')
    ..aOS(11, _omitFieldNames ? '' : 'manufacturedVersion')
    ..aInt64(12, _omitFieldNames ? '' : 'generationNumber')
    ..aOB(13, _omitFieldNames ? '' : 'dishCohoused')
    ..aOM<BootInfo>(1001, _omitFieldNames ? '' : 'boot', subBuilder: BootInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  DeviceInfo createEmptyInstance() => create();
  static $pb.PbList<DeviceInfo> createRepeated() => $pb.PbList<DeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hardwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set hardwareVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHardwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearHardwareVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get softwareVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set softwareVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoftwareVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoftwareVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get countryCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set countryCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountryCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountryCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get utcOffsetS => $_getIZ(4);
  @$pb.TagNumber(5)
  set utcOffsetS($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUtcOffsetS() => $_has(4);
  @$pb.TagNumber(5)
  void clearUtcOffsetS() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get softwarePartitionsEqual => $_getBF(5);
  @$pb.TagNumber(6)
  set softwarePartitionsEqual($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSoftwarePartitionsEqual() => $_has(5);
  @$pb.TagNumber(6)
  void clearSoftwarePartitionsEqual() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isDev => $_getBF(6);
  @$pb.TagNumber(7)
  set isDev($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsDev() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsDev() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bootcount => $_getIZ(7);
  @$pb.TagNumber(8)
  set bootcount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBootcount() => $_has(7);
  @$pb.TagNumber(8)
  void clearBootcount() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get antiRollbackVersion => $_getIZ(8);
  @$pb.TagNumber(9)
  set antiRollbackVersion($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAntiRollbackVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearAntiRollbackVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isHitl => $_getBF(9);
  @$pb.TagNumber(10)
  set isHitl($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsHitl() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsHitl() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get manufacturedVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set manufacturedVersion($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasManufacturedVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearManufacturedVersion() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get generationNumber => $_getI64(11);
  @$pb.TagNumber(12)
  set generationNumber($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGenerationNumber() => $_has(11);
  @$pb.TagNumber(12)
  void clearGenerationNumber() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get dishCohoused => $_getBF(12);
  @$pb.TagNumber(13)
  set dishCohoused($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDishCohoused() => $_has(12);
  @$pb.TagNumber(13)
  void clearDishCohoused() => clearField(13);

  @$pb.TagNumber(1001)
  BootInfo get boot => $_getN(13);
  @$pb.TagNumber(1001)
  set boot(BootInfo v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasBoot() => $_has(13);
  @$pb.TagNumber(1001)
  void clearBoot() => clearField(1001);
  @$pb.TagNumber(1001)
  BootInfo ensureBoot() => $_ensure(13);
}

/// SpaceX.API.Device.GetNextIdResponse is a message:
class GetNextIdResponse extends $pb.GeneratedMessage {
  factory GetNextIdResponse({
    $fixnum.Int64? id,
    $fixnum.Int64? epochId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (epochId != null) {
      $result.epochId = epochId;
    }
    return $result;
  }
  GetNextIdResponse._() : super();
  factory GetNextIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNextIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNextIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNextIdResponse clone() => GetNextIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNextIdResponse copyWith(void Function(GetNextIdResponse) updates) => super.copyWith((message) => updates(message as GetNextIdResponse)) as GetNextIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNextIdResponse create() => GetNextIdResponse._();
  GetNextIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetNextIdResponse> createRepeated() => $pb.PbList<GetNextIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNextIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNextIdResponse>(create);
  static GetNextIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get epochId => $_getI64(1);
  @$pb.TagNumber(2)
  set epochId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpochId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpochId() => clearField(2);
}

/// SpaceX.API.Device.GetPingResponse is a message:
class GetPingResponse extends $pb.GeneratedMessage {
  factory GetPingResponse({
    $core.Map<$core.String, PingResult>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  GetPingResponse._() : super();
  factory GetPingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, PingResult>(1, _omitFieldNames ? '' : 'results', entryClassName: 'GetPingResponse.ResultsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: PingResult.create, valueDefaultOrMaker: PingResult.getDefault, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPingResponse clone() => GetPingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPingResponse copyWith(void Function(GetPingResponse) updates) => super.copyWith((message) => updates(message as GetPingResponse)) as GetPingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPingResponse create() => GetPingResponse._();
  GetPingResponse createEmptyInstance() => create();
  static $pb.PbList<GetPingResponse> createRepeated() => $pb.PbList<GetPingResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPingResponse>(create);
  static GetPingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, PingResult> get results => $_getMap(0);
}

/// SpaceX.API.Device.PingResult is a message:
class PingResult extends $pb.GeneratedMessage {
  factory PingResult({
    $core.double? dropRate,
    $core.double? latencyMs,
    PingTarget? target,
  }) {
    final $result = create();
    if (dropRate != null) {
      $result.dropRate = dropRate;
    }
    if (latencyMs != null) {
      $result.latencyMs = latencyMs;
    }
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  PingResult._() : super();
  factory PingResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'dropRate', $pb.PbFieldType.OF, protoName: 'dropRate')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'latencyMs', $pb.PbFieldType.OF, protoName: 'latencyMs')
    ..aOM<PingTarget>(3, _omitFieldNames ? '' : 'target', subBuilder: PingTarget.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResult clone() => PingResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResult copyWith(void Function(PingResult) updates) => super.copyWith((message) => updates(message as PingResult)) as PingResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResult create() => PingResult._();
  PingResult createEmptyInstance() => create();
  static $pb.PbList<PingResult> createRepeated() => $pb.PbList<PingResult>();
  @$core.pragma('dart2js:noInline')
  static PingResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResult>(create);
  static PingResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get dropRate => $_getN(0);
  @$pb.TagNumber(1)
  set dropRate($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDropRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDropRate() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latencyMs => $_getN(1);
  @$pb.TagNumber(2)
  set latencyMs($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatencyMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatencyMs() => clearField(2);

  @$pb.TagNumber(3)
  PingTarget get target => $_getN(2);
  @$pb.TagNumber(3)
  set target(PingTarget v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearTarget() => clearField(3);
  @$pb.TagNumber(3)
  PingTarget ensureTarget() => $_ensure(2);
}

/// SpaceX.API.Device.PingTarget is a message:
class PingTarget extends $pb.GeneratedMessage {
  factory PingTarget({
    $core.String? service,
    $core.String? location,
    $core.String? address,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    if (location != null) {
      $result.location = location;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  PingTarget._() : super();
  factory PingTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingTarget', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..aOS(2, _omitFieldNames ? '' : 'location')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingTarget clone() => PingTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingTarget copyWith(void Function(PingTarget) updates) => super.copyWith((message) => updates(message as PingTarget)) as PingTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingTarget create() => PingTarget._();
  PingTarget createEmptyInstance() => create();
  static $pb.PbList<PingTarget> createRepeated() => $pb.PbList<PingTarget>();
  @$core.pragma('dart2js:noInline')
  static PingTarget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingTarget>(create);
  static PingTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

/// SpaceX.API.Device.SetTrustedKeysResponse is a message:
class SetTrustedKeysResponse extends $pb.GeneratedMessage {
  factory SetTrustedKeysResponse() => create();
  SetTrustedKeysResponse._() : super();
  factory SetTrustedKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTrustedKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTrustedKeysResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTrustedKeysResponse clone() => SetTrustedKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTrustedKeysResponse copyWith(void Function(SetTrustedKeysResponse) updates) => super.copyWith((message) => updates(message as SetTrustedKeysResponse)) as SetTrustedKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysResponse create() => SetTrustedKeysResponse._();
  SetTrustedKeysResponse createEmptyInstance() => create();
  static $pb.PbList<SetTrustedKeysResponse> createRepeated() => $pb.PbList<SetTrustedKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTrustedKeysResponse>(create);
  static SetTrustedKeysResponse? _defaultInstance;
}

/// SpaceX.API.Device.FactoryResetResponse is a message:
class FactoryResetResponse extends $pb.GeneratedMessage {
  factory FactoryResetResponse() => create();
  FactoryResetResponse._() : super();
  factory FactoryResetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FactoryResetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FactoryResetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FactoryResetResponse clone() => FactoryResetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FactoryResetResponse copyWith(void Function(FactoryResetResponse) updates) => super.copyWith((message) => updates(message as FactoryResetResponse)) as FactoryResetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FactoryResetResponse create() => FactoryResetResponse._();
  FactoryResetResponse createEmptyInstance() => create();
  static $pb.PbList<FactoryResetResponse> createRepeated() => $pb.PbList<FactoryResetResponse>();
  @$core.pragma('dart2js:noInline')
  static FactoryResetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FactoryResetResponse>(create);
  static FactoryResetResponse? _defaultInstance;
}

/// SpaceX.API.Device.GetLogResponse is a message:
class GetLogResponse extends $pb.GeneratedMessage {
  factory GetLogResponse({
    $core.String? syslog,
    $core.String? offlineLog,
    $core.String? persistentLog,
  }) {
    final $result = create();
    if (syslog != null) {
      $result.syslog = syslog;
    }
    if (offlineLog != null) {
      $result.offlineLog = offlineLog;
    }
    if (persistentLog != null) {
      $result.persistentLog = persistentLog;
    }
    return $result;
  }
  GetLogResponse._() : super();
  factory GetLogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLogResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'syslog')
    ..aOS(2, _omitFieldNames ? '' : 'offlineLog')
    ..aOS(3, _omitFieldNames ? '' : 'persistentLog')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLogResponse clone() => GetLogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLogResponse copyWith(void Function(GetLogResponse) updates) => super.copyWith((message) => updates(message as GetLogResponse)) as GetLogResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLogResponse create() => GetLogResponse._();
  GetLogResponse createEmptyInstance() => create();
  static $pb.PbList<GetLogResponse> createRepeated() => $pb.PbList<GetLogResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLogResponse>(create);
  static GetLogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get syslog => $_getSZ(0);
  @$pb.TagNumber(1)
  set syslog($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyslog() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyslog() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get offlineLog => $_getSZ(1);
  @$pb.TagNumber(2)
  set offlineLog($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOfflineLog() => $_has(1);
  @$pb.TagNumber(2)
  void clearOfflineLog() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get persistentLog => $_getSZ(2);
  @$pb.TagNumber(3)
  set persistentLog($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPersistentLog() => $_has(2);
  @$pb.TagNumber(3)
  void clearPersistentLog() => clearField(3);
}

/// SpaceX.API.Device.SetSkuResponse is a message:
class SetSkuResponse extends $pb.GeneratedMessage {
  factory SetSkuResponse() => create();
  SetSkuResponse._() : super();
  factory SetSkuResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSkuResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSkuResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSkuResponse clone() => SetSkuResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSkuResponse copyWith(void Function(SetSkuResponse) updates) => super.copyWith((message) => updates(message as SetSkuResponse)) as SetSkuResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSkuResponse create() => SetSkuResponse._();
  SetSkuResponse createEmptyInstance() => create();
  static $pb.PbList<SetSkuResponse> createRepeated() => $pb.PbList<SetSkuResponse>();
  @$core.pragma('dart2js:noInline')
  static SetSkuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSkuResponse>(create);
  static SetSkuResponse? _defaultInstance;
}

/// SpaceX.API.Device.UpdateResponse is a message:
class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse() => create();
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;
}

/// SpaceX.API.Device.GetNetworkInterfacesResponse is a message:
class GetNetworkInterfacesResponse extends $pb.GeneratedMessage {
  factory GetNetworkInterfacesResponse({
    $core.Iterable<NetworkInterface>? networkInterfaces,
  }) {
    final $result = create();
    if (networkInterfaces != null) {
      $result.networkInterfaces.addAll(networkInterfaces);
    }
    return $result;
  }
  GetNetworkInterfacesResponse._() : super();
  factory GetNetworkInterfacesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkInterfacesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNetworkInterfacesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<NetworkInterface>(1006, _omitFieldNames ? '' : 'networkInterfaces', $pb.PbFieldType.PM, subBuilder: NetworkInterface.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesResponse clone() => GetNetworkInterfacesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesResponse copyWith(void Function(GetNetworkInterfacesResponse) updates) => super.copyWith((message) => updates(message as GetNetworkInterfacesResponse)) as GetNetworkInterfacesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesResponse create() => GetNetworkInterfacesResponse._();
  GetNetworkInterfacesResponse createEmptyInstance() => create();
  static $pb.PbList<GetNetworkInterfacesResponse> createRepeated() => $pb.PbList<GetNetworkInterfacesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNetworkInterfacesResponse>(create);
  static GetNetworkInterfacesResponse? _defaultInstance;

  @$pb.TagNumber(1006)
  $core.List<NetworkInterface> get networkInterfaces => $_getList(0);
}

class NetworkInterface_RxStats extends $pb.GeneratedMessage {
  factory NetworkInterface_RxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? packets,
    $fixnum.Int64? frameErrors,
  }) {
    final $result = create();
    if (bytes != null) {
      $result.bytes = bytes;
    }
    if (packets != null) {
      $result.packets = packets;
    }
    if (frameErrors != null) {
      $result.frameErrors = frameErrors;
    }
    return $result;
  }
  NetworkInterface_RxStats._() : super();
  factory NetworkInterface_RxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface_RxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkInterface.RxStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'packets', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'frameErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface_RxStats clone() => NetworkInterface_RxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface_RxStats copyWith(void Function(NetworkInterface_RxStats) updates) => super.copyWith((message) => updates(message as NetworkInterface_RxStats)) as NetworkInterface_RxStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkInterface_RxStats create() => NetworkInterface_RxStats._();
  NetworkInterface_RxStats createEmptyInstance() => create();
  static $pb.PbList<NetworkInterface_RxStats> createRepeated() => $pb.PbList<NetworkInterface_RxStats>();
  @$core.pragma('dart2js:noInline')
  static NetworkInterface_RxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkInterface_RxStats>(create);
  static NetworkInterface_RxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get packets => $_getI64(1);
  @$pb.TagNumber(2)
  set packets($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPackets() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackets() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get frameErrors => $_getI64(2);
  @$pb.TagNumber(3)
  set frameErrors($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrameErrors() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrameErrors() => clearField(3);
}

class NetworkInterface_TxStats extends $pb.GeneratedMessage {
  factory NetworkInterface_TxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? packets,
  }) {
    final $result = create();
    if (bytes != null) {
      $result.bytes = bytes;
    }
    if (packets != null) {
      $result.packets = packets;
    }
    return $result;
  }
  NetworkInterface_TxStats._() : super();
  factory NetworkInterface_TxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface_TxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkInterface.TxStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'packets', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface_TxStats clone() => NetworkInterface_TxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface_TxStats copyWith(void Function(NetworkInterface_TxStats) updates) => super.copyWith((message) => updates(message as NetworkInterface_TxStats)) as NetworkInterface_TxStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkInterface_TxStats create() => NetworkInterface_TxStats._();
  NetworkInterface_TxStats createEmptyInstance() => create();
  static $pb.PbList<NetworkInterface_TxStats> createRepeated() => $pb.PbList<NetworkInterface_TxStats>();
  @$core.pragma('dart2js:noInline')
  static NetworkInterface_TxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkInterface_TxStats>(create);
  static NetworkInterface_TxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get packets => $_getI64(1);
  @$pb.TagNumber(2)
  set packets($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPackets() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackets() => clearField(2);
}

enum NetworkInterface_Interface {
  ethernet, 
  wifi, 
  bridge, 
  notSet
}

/// SpaceX.API.Device.NetworkInterface is a message:
class NetworkInterface extends $pb.GeneratedMessage {
  factory NetworkInterface({
    $core.String? name,
    NetworkInterface_RxStats? rxStats,
    NetworkInterface_TxStats? txStats,
    $core.bool? up,
    $core.String? macAddress,
    $core.Iterable<$core.String>? ipv4Addresses,
    $core.Iterable<$core.String>? ipv6Addresses,
    EthernetNetworkInterface? ethernet,
    WifiNetworkInterface? wifi,
    BridgeNetworkInterface? bridge,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (rxStats != null) {
      $result.rxStats = rxStats;
    }
    if (txStats != null) {
      $result.txStats = txStats;
    }
    if (up != null) {
      $result.up = up;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (ipv4Addresses != null) {
      $result.ipv4Addresses.addAll(ipv4Addresses);
    }
    if (ipv6Addresses != null) {
      $result.ipv6Addresses.addAll(ipv6Addresses);
    }
    if (ethernet != null) {
      $result.ethernet = ethernet;
    }
    if (wifi != null) {
      $result.wifi = wifi;
    }
    if (bridge != null) {
      $result.bridge = bridge;
    }
    return $result;
  }
  NetworkInterface._() : super();
  factory NetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, NetworkInterface_Interface> _NetworkInterface_InterfaceByTag = {
    1000 : NetworkInterface_Interface.ethernet,
    1001 : NetworkInterface_Interface.wifi,
    1002 : NetworkInterface_Interface.bridge,
    0 : NetworkInterface_Interface.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkInterface', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1000, 1001, 1002])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<NetworkInterface_RxStats>(2, _omitFieldNames ? '' : 'rxStats', subBuilder: NetworkInterface_RxStats.create)
    ..aOM<NetworkInterface_TxStats>(3, _omitFieldNames ? '' : 'txStats', subBuilder: NetworkInterface_TxStats.create)
    ..aOB(4, _omitFieldNames ? '' : 'up')
    ..aOS(5, _omitFieldNames ? '' : 'macAddress')
    ..pPS(6, _omitFieldNames ? '' : 'ipv4Addresses')
    ..pPS(7, _omitFieldNames ? '' : 'ipv6Addresses')
    ..aOM<EthernetNetworkInterface>(1000, _omitFieldNames ? '' : 'ethernet', subBuilder: EthernetNetworkInterface.create)
    ..aOM<WifiNetworkInterface>(1001, _omitFieldNames ? '' : 'wifi', subBuilder: WifiNetworkInterface.create)
    ..aOM<BridgeNetworkInterface>(1002, _omitFieldNames ? '' : 'bridge', subBuilder: BridgeNetworkInterface.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface clone() => NetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface copyWith(void Function(NetworkInterface) updates) => super.copyWith((message) => updates(message as NetworkInterface)) as NetworkInterface;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkInterface create() => NetworkInterface._();
  NetworkInterface createEmptyInstance() => create();
  static $pb.PbList<NetworkInterface> createRepeated() => $pb.PbList<NetworkInterface>();
  @$core.pragma('dart2js:noInline')
  static NetworkInterface getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkInterface>(create);
  static NetworkInterface? _defaultInstance;

  NetworkInterface_Interface whichInterface() => _NetworkInterface_InterfaceByTag[$_whichOneof(0)]!;
  void clearInterface() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  NetworkInterface_RxStats get rxStats => $_getN(1);
  @$pb.TagNumber(2)
  set rxStats(NetworkInterface_RxStats v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRxStats() => $_has(1);
  @$pb.TagNumber(2)
  void clearRxStats() => clearField(2);
  @$pb.TagNumber(2)
  NetworkInterface_RxStats ensureRxStats() => $_ensure(1);

  @$pb.TagNumber(3)
  NetworkInterface_TxStats get txStats => $_getN(2);
  @$pb.TagNumber(3)
  set txStats(NetworkInterface_TxStats v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxStats() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxStats() => clearField(3);
  @$pb.TagNumber(3)
  NetworkInterface_TxStats ensureTxStats() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get up => $_getBF(3);
  @$pb.TagNumber(4)
  set up($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUp() => $_has(3);
  @$pb.TagNumber(4)
  void clearUp() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get macAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set macAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMacAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearMacAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get ipv4Addresses => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get ipv6Addresses => $_getList(6);

  @$pb.TagNumber(1000)
  EthernetNetworkInterface get ethernet => $_getN(7);
  @$pb.TagNumber(1000)
  set ethernet(EthernetNetworkInterface v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasEthernet() => $_has(7);
  @$pb.TagNumber(1000)
  void clearEthernet() => clearField(1000);
  @$pb.TagNumber(1000)
  EthernetNetworkInterface ensureEthernet() => $_ensure(7);

  @$pb.TagNumber(1001)
  WifiNetworkInterface get wifi => $_getN(8);
  @$pb.TagNumber(1001)
  set wifi(WifiNetworkInterface v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasWifi() => $_has(8);
  @$pb.TagNumber(1001)
  void clearWifi() => clearField(1001);
  @$pb.TagNumber(1001)
  WifiNetworkInterface ensureWifi() => $_ensure(8);

  @$pb.TagNumber(1002)
  BridgeNetworkInterface get bridge => $_getN(9);
  @$pb.TagNumber(1002)
  set bridge(BridgeNetworkInterface v) { setField(1002, v); }
  @$pb.TagNumber(1002)
  $core.bool hasBridge() => $_has(9);
  @$pb.TagNumber(1002)
  void clearBridge() => clearField(1002);
  @$pb.TagNumber(1002)
  BridgeNetworkInterface ensureBridge() => $_ensure(9);
}

/// SpaceX.API.Device.EthernetNetworkInterface is a message:
class EthernetNetworkInterface extends $pb.GeneratedMessage {
  factory EthernetNetworkInterface({
    $core.bool? linkDetected,
    $core.int? speedMbps,
    $core.bool? autonegotiationOn,
    EthernetNetworkInterface_Duplex? duplex,
  }) {
    final $result = create();
    if (linkDetected != null) {
      $result.linkDetected = linkDetected;
    }
    if (speedMbps != null) {
      $result.speedMbps = speedMbps;
    }
    if (autonegotiationOn != null) {
      $result.autonegotiationOn = autonegotiationOn;
    }
    if (duplex != null) {
      $result.duplex = duplex;
    }
    return $result;
  }
  EthernetNetworkInterface._() : super();
  factory EthernetNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthernetNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthernetNetworkInterface', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'linkDetected')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'speedMbps', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'autonegotiationOn')
    ..e<EthernetNetworkInterface_Duplex>(4, _omitFieldNames ? '' : 'duplex', $pb.PbFieldType.OE, defaultOrMaker: EthernetNetworkInterface_Duplex.UNKNOWN, valueOf: EthernetNetworkInterface_Duplex.valueOf, enumValues: EthernetNetworkInterface_Duplex.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthernetNetworkInterface clone() => EthernetNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthernetNetworkInterface copyWith(void Function(EthernetNetworkInterface) updates) => super.copyWith((message) => updates(message as EthernetNetworkInterface)) as EthernetNetworkInterface;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthernetNetworkInterface create() => EthernetNetworkInterface._();
  EthernetNetworkInterface createEmptyInstance() => create();
  static $pb.PbList<EthernetNetworkInterface> createRepeated() => $pb.PbList<EthernetNetworkInterface>();
  @$core.pragma('dart2js:noInline')
  static EthernetNetworkInterface getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthernetNetworkInterface>(create);
  static EthernetNetworkInterface? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get linkDetected => $_getBF(0);
  @$pb.TagNumber(1)
  set linkDetected($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkDetected() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkDetected() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get speedMbps => $_getIZ(1);
  @$pb.TagNumber(2)
  set speedMbps($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeedMbps() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeedMbps() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autonegotiationOn => $_getBF(2);
  @$pb.TagNumber(3)
  set autonegotiationOn($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAutonegotiationOn() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutonegotiationOn() => clearField(3);

  @$pb.TagNumber(4)
  EthernetNetworkInterface_Duplex get duplex => $_getN(3);
  @$pb.TagNumber(4)
  set duplex(EthernetNetworkInterface_Duplex v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDuplex() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuplex() => clearField(4);
}

class WifiNetworkInterface_AntennaeStatus extends $pb.GeneratedMessage {
  factory WifiNetworkInterface_AntennaeStatus({
    $core.double? rssi1,
    $core.double? rssi2,
    $core.double? rssi3,
    $core.double? rssi4,
  }) {
    final $result = create();
    if (rssi1 != null) {
      $result.rssi1 = rssi1;
    }
    if (rssi2 != null) {
      $result.rssi2 = rssi2;
    }
    if (rssi3 != null) {
      $result.rssi3 = rssi3;
    }
    if (rssi4 != null) {
      $result.rssi4 = rssi4;
    }
    return $result;
  }
  WifiNetworkInterface_AntennaeStatus._() : super();
  factory WifiNetworkInterface_AntennaeStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_AntennaeStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNetworkInterface.AntennaeStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'rssi1', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'rssi2', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rssi3', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'rssi4', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_AntennaeStatus clone() => WifiNetworkInterface_AntennaeStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_AntennaeStatus copyWith(void Function(WifiNetworkInterface_AntennaeStatus) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_AntennaeStatus)) as WifiNetworkInterface_AntennaeStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_AntennaeStatus create() => WifiNetworkInterface_AntennaeStatus._();
  WifiNetworkInterface_AntennaeStatus createEmptyInstance() => create();
  static $pb.PbList<WifiNetworkInterface_AntennaeStatus> createRepeated() => $pb.PbList<WifiNetworkInterface_AntennaeStatus>();
  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_AntennaeStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetworkInterface_AntennaeStatus>(create);
  static WifiNetworkInterface_AntennaeStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rssi1 => $_getN(0);
  @$pb.TagNumber(1)
  set rssi1($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRssi1() => $_has(0);
  @$pb.TagNumber(1)
  void clearRssi1() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get rssi2 => $_getN(1);
  @$pb.TagNumber(2)
  set rssi2($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRssi2() => $_has(1);
  @$pb.TagNumber(2)
  void clearRssi2() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rssi3 => $_getN(2);
  @$pb.TagNumber(3)
  set rssi3($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRssi3() => $_has(2);
  @$pb.TagNumber(3)
  void clearRssi3() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get rssi4 => $_getN(3);
  @$pb.TagNumber(4)
  set rssi4($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRssi4() => $_has(3);
  @$pb.TagNumber(4)
  void clearRssi4() => clearField(4);
}

class WifiNetworkInterface_InvalidPacketCounts extends $pb.GeneratedMessage {
  factory WifiNetworkInterface_InvalidPacketCounts({
    $core.int? rxInvalidNwid,
    $core.int? rxInvalidCrypt,
    $core.int? rxInvalidFrag,
    $core.int? txExcessiveRetries,
    $core.int? invalidMisc,
  }) {
    final $result = create();
    if (rxInvalidNwid != null) {
      $result.rxInvalidNwid = rxInvalidNwid;
    }
    if (rxInvalidCrypt != null) {
      $result.rxInvalidCrypt = rxInvalidCrypt;
    }
    if (rxInvalidFrag != null) {
      $result.rxInvalidFrag = rxInvalidFrag;
    }
    if (txExcessiveRetries != null) {
      $result.txExcessiveRetries = txExcessiveRetries;
    }
    if (invalidMisc != null) {
      $result.invalidMisc = invalidMisc;
    }
    return $result;
  }
  WifiNetworkInterface_InvalidPacketCounts._() : super();
  factory WifiNetworkInterface_InvalidPacketCounts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_InvalidPacketCounts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNetworkInterface.InvalidPacketCounts', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'rxInvalidNwid', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rxInvalidCrypt', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rxInvalidFrag', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'txExcessiveRetries', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'invalidMisc', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_InvalidPacketCounts clone() => WifiNetworkInterface_InvalidPacketCounts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_InvalidPacketCounts copyWith(void Function(WifiNetworkInterface_InvalidPacketCounts) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_InvalidPacketCounts)) as WifiNetworkInterface_InvalidPacketCounts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_InvalidPacketCounts create() => WifiNetworkInterface_InvalidPacketCounts._();
  WifiNetworkInterface_InvalidPacketCounts createEmptyInstance() => create();
  static $pb.PbList<WifiNetworkInterface_InvalidPacketCounts> createRepeated() => $pb.PbList<WifiNetworkInterface_InvalidPacketCounts>();
  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_InvalidPacketCounts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetworkInterface_InvalidPacketCounts>(create);
  static WifiNetworkInterface_InvalidPacketCounts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rxInvalidNwid => $_getIZ(0);
  @$pb.TagNumber(1)
  set rxInvalidNwid($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRxInvalidNwid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRxInvalidNwid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rxInvalidCrypt => $_getIZ(1);
  @$pb.TagNumber(2)
  set rxInvalidCrypt($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRxInvalidCrypt() => $_has(1);
  @$pb.TagNumber(2)
  void clearRxInvalidCrypt() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rxInvalidFrag => $_getIZ(2);
  @$pb.TagNumber(3)
  set rxInvalidFrag($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRxInvalidFrag() => $_has(2);
  @$pb.TagNumber(3)
  void clearRxInvalidFrag() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get txExcessiveRetries => $_getIZ(3);
  @$pb.TagNumber(4)
  set txExcessiveRetries($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxExcessiveRetries() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxExcessiveRetries() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get invalidMisc => $_getIZ(4);
  @$pb.TagNumber(5)
  set invalidMisc($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInvalidMisc() => $_has(4);
  @$pb.TagNumber(5)
  void clearInvalidMisc() => clearField(5);
}

class WifiNetworkInterface_ThermalStatus extends $pb.GeneratedMessage {
  factory WifiNetworkInterface_ThermalStatus({
    $core.int? level,
  @$core.Deprecated('This field is deprecated.')
    $core.int? temp,
    $core.double? temp2,
    $core.int? powerReduction,
    $core.int? dutyCycle,
  }) {
    final $result = create();
    if (level != null) {
      $result.level = level;
    }
    if (temp != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.temp = temp;
    }
    if (temp2 != null) {
      $result.temp2 = temp2;
    }
    if (powerReduction != null) {
      $result.powerReduction = powerReduction;
    }
    if (dutyCycle != null) {
      $result.dutyCycle = dutyCycle;
    }
    return $result;
  }
  WifiNetworkInterface_ThermalStatus._() : super();
  factory WifiNetworkInterface_ThermalStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_ThermalStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNetworkInterface.ThermalStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'temp', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'temp2', $pb.PbFieldType.OD)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'powerReduction', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'dutyCycle', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_ThermalStatus clone() => WifiNetworkInterface_ThermalStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_ThermalStatus copyWith(void Function(WifiNetworkInterface_ThermalStatus) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_ThermalStatus)) as WifiNetworkInterface_ThermalStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_ThermalStatus create() => WifiNetworkInterface_ThermalStatus._();
  WifiNetworkInterface_ThermalStatus createEmptyInstance() => create();
  static $pb.PbList<WifiNetworkInterface_ThermalStatus> createRepeated() => $pb.PbList<WifiNetworkInterface_ThermalStatus>();
  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface_ThermalStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetworkInterface_ThermalStatus>(create);
  static WifiNetworkInterface_ThermalStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get level => $_getIZ(0);
  @$pb.TagNumber(1)
  set level($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.int get temp => $_getIZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set temp($core.int v) { $_setUnsignedInt32(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasTemp() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearTemp() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get temp2 => $_getN(2);
  @$pb.TagNumber(3)
  set temp2($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTemp2() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemp2() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get powerReduction => $_getIZ(3);
  @$pb.TagNumber(4)
  set powerReduction($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPowerReduction() => $_has(3);
  @$pb.TagNumber(4)
  void clearPowerReduction() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get dutyCycle => $_getIZ(4);
  @$pb.TagNumber(5)
  set dutyCycle($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDutyCycle() => $_has(4);
  @$pb.TagNumber(5)
  void clearDutyCycle() => clearField(5);
}

/// SpaceX.API.Device.WifiNetworkInterface is a message:
class WifiNetworkInterface extends $pb.GeneratedMessage {
  factory WifiNetworkInterface({
    WifiNetworkInterface_ThermalStatus? thermalStatus,
    WifiNetworkInterface_InvalidPacketCounts? invalidPacketCounts,
    $core.int? channel,
    $core.double? linkQuality,
    $core.double? signalLevel,
    $core.double? noiseLevel,
    $core.int? missedBeacons,
    WifiNetworkInterface_AntennaeStatus? antennaeStatus,
  }) {
    final $result = create();
    if (thermalStatus != null) {
      $result.thermalStatus = thermalStatus;
    }
    if (invalidPacketCounts != null) {
      $result.invalidPacketCounts = invalidPacketCounts;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (linkQuality != null) {
      $result.linkQuality = linkQuality;
    }
    if (signalLevel != null) {
      $result.signalLevel = signalLevel;
    }
    if (noiseLevel != null) {
      $result.noiseLevel = noiseLevel;
    }
    if (missedBeacons != null) {
      $result.missedBeacons = missedBeacons;
    }
    if (antennaeStatus != null) {
      $result.antennaeStatus = antennaeStatus;
    }
    return $result;
  }
  WifiNetworkInterface._() : super();
  factory WifiNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNetworkInterface', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiNetworkInterface_ThermalStatus>(1, _omitFieldNames ? '' : 'thermalStatus', subBuilder: WifiNetworkInterface_ThermalStatus.create)
    ..aOM<WifiNetworkInterface_InvalidPacketCounts>(2, _omitFieldNames ? '' : 'invalidPacketCounts', subBuilder: WifiNetworkInterface_InvalidPacketCounts.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'channel', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'linkQuality', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'signalLevel', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'noiseLevel', $pb.PbFieldType.OD)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'missedBeacons', $pb.PbFieldType.OU3)
    ..aOM<WifiNetworkInterface_AntennaeStatus>(9, _omitFieldNames ? '' : 'antennaeStatus', subBuilder: WifiNetworkInterface_AntennaeStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface clone() => WifiNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface copyWith(void Function(WifiNetworkInterface) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface)) as WifiNetworkInterface;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface create() => WifiNetworkInterface._();
  WifiNetworkInterface createEmptyInstance() => create();
  static $pb.PbList<WifiNetworkInterface> createRepeated() => $pb.PbList<WifiNetworkInterface>();
  @$core.pragma('dart2js:noInline')
  static WifiNetworkInterface getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetworkInterface>(create);
  static WifiNetworkInterface? _defaultInstance;

  @$pb.TagNumber(1)
  WifiNetworkInterface_ThermalStatus get thermalStatus => $_getN(0);
  @$pb.TagNumber(1)
  set thermalStatus(WifiNetworkInterface_ThermalStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasThermalStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearThermalStatus() => clearField(1);
  @$pb.TagNumber(1)
  WifiNetworkInterface_ThermalStatus ensureThermalStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  WifiNetworkInterface_InvalidPacketCounts get invalidPacketCounts => $_getN(1);
  @$pb.TagNumber(2)
  set invalidPacketCounts(WifiNetworkInterface_InvalidPacketCounts v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInvalidPacketCounts() => $_has(1);
  @$pb.TagNumber(2)
  void clearInvalidPacketCounts() => clearField(2);
  @$pb.TagNumber(2)
  WifiNetworkInterface_InvalidPacketCounts ensureInvalidPacketCounts() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get linkQuality => $_getN(3);
  @$pb.TagNumber(4)
  set linkQuality($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkQuality() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkQuality() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get signalLevel => $_getN(4);
  @$pb.TagNumber(5)
  set signalLevel($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignalLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignalLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get noiseLevel => $_getN(5);
  @$pb.TagNumber(6)
  set noiseLevel($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNoiseLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoiseLevel() => clearField(6);

  @$pb.TagNumber(8)
  $core.int get missedBeacons => $_getIZ(6);
  @$pb.TagNumber(8)
  set missedBeacons($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasMissedBeacons() => $_has(6);
  @$pb.TagNumber(8)
  void clearMissedBeacons() => clearField(8);

  @$pb.TagNumber(9)
  WifiNetworkInterface_AntennaeStatus get antennaeStatus => $_getN(7);
  @$pb.TagNumber(9)
  set antennaeStatus(WifiNetworkInterface_AntennaeStatus v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAntennaeStatus() => $_has(7);
  @$pb.TagNumber(9)
  void clearAntennaeStatus() => clearField(9);
  @$pb.TagNumber(9)
  WifiNetworkInterface_AntennaeStatus ensureAntennaeStatus() => $_ensure(7);
}

/// SpaceX.API.Device.BridgeNetworkInterface is a message:
class BridgeNetworkInterface extends $pb.GeneratedMessage {
  factory BridgeNetworkInterface({
    $core.Iterable<$core.String>? memberNames,
  }) {
    final $result = create();
    if (memberNames != null) {
      $result.memberNames.addAll(memberNames);
    }
    return $result;
  }
  BridgeNetworkInterface._() : super();
  factory BridgeNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BridgeNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BridgeNetworkInterface', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'memberNames')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BridgeNetworkInterface clone() => BridgeNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BridgeNetworkInterface copyWith(void Function(BridgeNetworkInterface) updates) => super.copyWith((message) => updates(message as BridgeNetworkInterface)) as BridgeNetworkInterface;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BridgeNetworkInterface create() => BridgeNetworkInterface._();
  BridgeNetworkInterface createEmptyInstance() => create();
  static $pb.PbList<BridgeNetworkInterface> createRepeated() => $pb.PbList<BridgeNetworkInterface>();
  @$core.pragma('dart2js:noInline')
  static BridgeNetworkInterface getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BridgeNetworkInterface>(create);
  static BridgeNetworkInterface? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get memberNames => $_getList(0);
}

/// SpaceX.API.Device.PingHostResponse is a message:
class PingHostResponse extends $pb.GeneratedMessage {
  factory PingHostResponse({
    PingResult? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  PingHostResponse._() : super();
  factory PingHostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingHostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingHostResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<PingResult>(1, _omitFieldNames ? '' : 'result', subBuilder: PingResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingHostResponse clone() => PingHostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingHostResponse copyWith(void Function(PingHostResponse) updates) => super.copyWith((message) => updates(message as PingHostResponse)) as PingHostResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingHostResponse create() => PingHostResponse._();
  PingHostResponse createEmptyInstance() => create();
  static $pb.PbList<PingHostResponse> createRepeated() => $pb.PbList<PingHostResponse>();
  @$core.pragma('dart2js:noInline')
  static PingHostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingHostResponse>(create);
  static PingHostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PingResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PingResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PingResult ensureResult() => $_ensure(0);
}

/// SpaceX.API.Device.GetLocationResponse is a message:
class GetLocationResponse extends $pb.GeneratedMessage {
  factory GetLocationResponse({
    LLAPosition? lla,
    PositionSource? source,
    $core.double? sigmaM,
  }) {
    final $result = create();
    if (lla != null) {
      $result.lla = lla;
    }
    if (source != null) {
      $result.source = source;
    }
    if (sigmaM != null) {
      $result.sigmaM = sigmaM;
    }
    return $result;
  }
  GetLocationResponse._() : super();
  factory GetLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<LLAPosition>(1, _omitFieldNames ? '' : 'lla', subBuilder: LLAPosition.create)
    ..e<PositionSource>(3, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'sigmaM', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationResponse clone() => GetLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationResponse copyWith(void Function(GetLocationResponse) updates) => super.copyWith((message) => updates(message as GetLocationResponse)) as GetLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationResponse create() => GetLocationResponse._();
  GetLocationResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationResponse> createRepeated() => $pb.PbList<GetLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationResponse>(create);
  static GetLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LLAPosition get lla => $_getN(0);
  @$pb.TagNumber(1)
  set lla(LLAPosition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLla() => $_has(0);
  @$pb.TagNumber(1)
  void clearLla() => clearField(1);
  @$pb.TagNumber(1)
  LLAPosition ensureLla() => $_ensure(0);

  @$pb.TagNumber(3)
  PositionSource get source => $_getN(1);
  @$pb.TagNumber(3)
  set source(PositionSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get sigmaM => $_getN(2);
  @$pb.TagNumber(4)
  set sigmaM($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSigmaM() => $_has(2);
  @$pb.TagNumber(4)
  void clearSigmaM() => clearField(4);
}

/// SpaceX.API.Device.LLAPosition is a message:
class LLAPosition extends $pb.GeneratedMessage {
  factory LLAPosition({
    $core.double? lat,
    $core.double? lon,
    $core.double? alt,
  }) {
    final $result = create();
    if (lat != null) {
      $result.lat = lat;
    }
    if (lon != null) {
      $result.lon = lon;
    }
    if (alt != null) {
      $result.alt = alt;
    }
    return $result;
  }
  LLAPosition._() : super();
  factory LLAPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LLAPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LLAPosition', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lon', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'alt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LLAPosition clone() => LLAPosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LLAPosition copyWith(void Function(LLAPosition) updates) => super.copyWith((message) => updates(message as LLAPosition)) as LLAPosition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLAPosition create() => LLAPosition._();
  LLAPosition createEmptyInstance() => create();
  static $pb.PbList<LLAPosition> createRepeated() => $pb.PbList<LLAPosition>();
  @$core.pragma('dart2js:noInline')
  static LLAPosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LLAPosition>(create);
  static LLAPosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lon => $_getN(1);
  @$pb.TagNumber(2)
  set lon($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLon() => $_has(1);
  @$pb.TagNumber(2)
  void clearLon() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get alt => $_getN(2);
  @$pb.TagNumber(3)
  set alt($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlt() => clearField(3);
}

/// SpaceX.API.Device.GetHeapDumpResponse is a message:
class GetHeapDumpResponse extends $pb.GeneratedMessage {
  factory GetHeapDumpResponse({
    $core.String? heapDump,
  }) {
    final $result = create();
    if (heapDump != null) {
      $result.heapDump = heapDump;
    }
    return $result;
  }
  GetHeapDumpResponse._() : super();
  factory GetHeapDumpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeapDumpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHeapDumpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'heapDump')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeapDumpResponse clone() => GetHeapDumpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeapDumpResponse copyWith(void Function(GetHeapDumpResponse) updates) => super.copyWith((message) => updates(message as GetHeapDumpResponse)) as GetHeapDumpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHeapDumpResponse create() => GetHeapDumpResponse._();
  GetHeapDumpResponse createEmptyInstance() => create();
  static $pb.PbList<GetHeapDumpResponse> createRepeated() => $pb.PbList<GetHeapDumpResponse>();
  @$core.pragma('dart2js:noInline')
  static GetHeapDumpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHeapDumpResponse>(create);
  static GetHeapDumpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get heapDump => $_getSZ(0);
  @$pb.TagNumber(1)
  set heapDump($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeapDump() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeapDump() => clearField(1);
}

/// SpaceX.API.Device.RestartControlResponse is a message:
class RestartControlResponse extends $pb.GeneratedMessage {
  factory RestartControlResponse() => create();
  RestartControlResponse._() : super();
  factory RestartControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestartControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RestartControlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestartControlResponse clone() => RestartControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestartControlResponse copyWith(void Function(RestartControlResponse) updates) => super.copyWith((message) => updates(message as RestartControlResponse)) as RestartControlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestartControlResponse create() => RestartControlResponse._();
  RestartControlResponse createEmptyInstance() => create();
  static $pb.PbList<RestartControlResponse> createRepeated() => $pb.PbList<RestartControlResponse>();
  @$core.pragma('dart2js:noInline')
  static RestartControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestartControlResponse>(create);
  static RestartControlResponse? _defaultInstance;
}

/// SpaceX.API.Device.FuseResponse is a message:
class FuseResponse extends $pb.GeneratedMessage {
  factory FuseResponse() => create();
  FuseResponse._() : super();
  factory FuseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FuseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuseResponse clone() => FuseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuseResponse copyWith(void Function(FuseResponse) updates) => super.copyWith((message) => updates(message as FuseResponse)) as FuseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FuseResponse create() => FuseResponse._();
  FuseResponse createEmptyInstance() => create();
  static $pb.PbList<FuseResponse> createRepeated() => $pb.PbList<FuseResponse>();
  @$core.pragma('dart2js:noInline')
  static FuseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuseResponse>(create);
  static FuseResponse? _defaultInstance;
}

class GetConnectionsResponse_ServiceConnection extends $pb.GeneratedMessage {
  factory GetConnectionsResponse_ServiceConnection({
    $core.String? address,
    $core.int? secondsSinceSuccess,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (secondsSinceSuccess != null) {
      $result.secondsSinceSuccess = secondsSinceSuccess;
    }
    return $result;
  }
  GetConnectionsResponse_ServiceConnection._() : super();
  factory GetConnectionsResponse_ServiceConnection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse_ServiceConnection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionsResponse.ServiceConnection', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'secondsSinceSuccess', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection clone() => GetConnectionsResponse_ServiceConnection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection copyWith(void Function(GetConnectionsResponse_ServiceConnection) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse_ServiceConnection)) as GetConnectionsResponse_ServiceConnection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse_ServiceConnection create() => GetConnectionsResponse_ServiceConnection._();
  GetConnectionsResponse_ServiceConnection createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsResponse_ServiceConnection> createRepeated() => $pb.PbList<GetConnectionsResponse_ServiceConnection>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse_ServiceConnection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsResponse_ServiceConnection>(create);
  static GetConnectionsResponse_ServiceConnection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get secondsSinceSuccess => $_getIZ(1);
  @$pb.TagNumber(2)
  set secondsSinceSuccess($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecondsSinceSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecondsSinceSuccess() => clearField(2);
}

/// SpaceX.API.Device.GetConnectionsResponse is a message:
class GetConnectionsResponse extends $pb.GeneratedMessage {
  factory GetConnectionsResponse({
    $core.Map<$core.String, GetConnectionsResponse_ServiceConnection>? services,
  }) {
    final $result = create();
    if (services != null) {
      $result.services.addAll(services);
    }
    return $result;
  }
  GetConnectionsResponse._() : super();
  factory GetConnectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConnectionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, GetConnectionsResponse_ServiceConnection>(1, _omitFieldNames ? '' : 'services', entryClassName: 'GetConnectionsResponse.ServicesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GetConnectionsResponse_ServiceConnection.create, valueDefaultOrMaker: GetConnectionsResponse_ServiceConnection.getDefault, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse clone() => GetConnectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse copyWith(void Function(GetConnectionsResponse) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse)) as GetConnectionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse create() => GetConnectionsResponse._();
  GetConnectionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsResponse> createRepeated() => $pb.PbList<GetConnectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsResponse>(create);
  static GetConnectionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, GetConnectionsResponse_ServiceConnection> get services => $_getMap(0);
}

/// SpaceX.API.Device.StartSpeedtestResponse is a message:
class StartSpeedtestResponse extends $pb.GeneratedMessage {
  factory StartSpeedtestResponse() => create();
  StartSpeedtestResponse._() : super();
  factory StartSpeedtestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartSpeedtestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartSpeedtestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartSpeedtestResponse clone() => StartSpeedtestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartSpeedtestResponse copyWith(void Function(StartSpeedtestResponse) updates) => super.copyWith((message) => updates(message as StartSpeedtestResponse)) as StartSpeedtestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartSpeedtestResponse create() => StartSpeedtestResponse._();
  StartSpeedtestResponse createEmptyInstance() => create();
  static $pb.PbList<StartSpeedtestResponse> createRepeated() => $pb.PbList<StartSpeedtestResponse>();
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartSpeedtestResponse>(create);
  static StartSpeedtestResponse? _defaultInstance;
}

/// SpaceX.API.Device.GetSpeedtestStatusResponse is a message:
class GetSpeedtestStatusResponse extends $pb.GeneratedMessage {
  factory GetSpeedtestStatusResponse({
    SpeedtestStatus? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  GetSpeedtestStatusResponse._() : super();
  factory GetSpeedtestStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpeedtestStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSpeedtestStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SpeedtestStatus>(1, _omitFieldNames ? '' : 'status', subBuilder: SpeedtestStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusResponse clone() => GetSpeedtestStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusResponse copyWith(void Function(GetSpeedtestStatusResponse) updates) => super.copyWith((message) => updates(message as GetSpeedtestStatusResponse)) as GetSpeedtestStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusResponse create() => GetSpeedtestStatusResponse._();
  GetSpeedtestStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetSpeedtestStatusResponse> createRepeated() => $pb.PbList<GetSpeedtestStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpeedtestStatusResponse>(create);
  static GetSpeedtestStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpeedtestStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(SpeedtestStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  SpeedtestStatus ensureStatus() => $_ensure(0);
}

class SpeedtestStatus_Direction extends $pb.GeneratedMessage {
  factory SpeedtestStatus_Direction({
    $core.Iterable<$core.double>? throughputsMbps,
    SpeedtestError? err,
  }) {
    final $result = create();
    if (throughputsMbps != null) {
      $result.throughputsMbps.addAll(throughputsMbps);
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  SpeedtestStatus_Direction._() : super();
  factory SpeedtestStatus_Direction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedtestStatus_Direction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedtestStatus.Direction', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'throughputsMbps', $pb.PbFieldType.KF)
    ..e<SpeedtestError>(2, _omitFieldNames ? '' : 'err', $pb.PbFieldType.OE, defaultOrMaker: SpeedtestError.SPEEDTEST_ERROR_NONE, valueOf: SpeedtestError.valueOf, enumValues: SpeedtestError.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedtestStatus_Direction clone() => SpeedtestStatus_Direction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedtestStatus_Direction copyWith(void Function(SpeedtestStatus_Direction) updates) => super.copyWith((message) => updates(message as SpeedtestStatus_Direction)) as SpeedtestStatus_Direction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedtestStatus_Direction create() => SpeedtestStatus_Direction._();
  SpeedtestStatus_Direction createEmptyInstance() => create();
  static $pb.PbList<SpeedtestStatus_Direction> createRepeated() => $pb.PbList<SpeedtestStatus_Direction>();
  @$core.pragma('dart2js:noInline')
  static SpeedtestStatus_Direction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedtestStatus_Direction>(create);
  static SpeedtestStatus_Direction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get throughputsMbps => $_getList(0);

  @$pb.TagNumber(2)
  SpeedtestError get err => $_getN(1);
  @$pb.TagNumber(2)
  set err(SpeedtestError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
}

/// SpaceX.API.Device.SpeedtestStatus is a message:
class SpeedtestStatus extends $pb.GeneratedMessage {
  factory SpeedtestStatus({
    $core.bool? running,
    $core.int? id,
    SpeedtestStatus_Direction? up,
    SpeedtestStatus_Direction? down,
  }) {
    final $result = create();
    if (running != null) {
      $result.running = running;
    }
    if (id != null) {
      $result.id = id;
    }
    if (up != null) {
      $result.up = up;
    }
    if (down != null) {
      $result.down = down;
    }
    return $result;
  }
  SpeedtestStatus._() : super();
  factory SpeedtestStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedtestStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedtestStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'running')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOM<SpeedtestStatus_Direction>(1000, _omitFieldNames ? '' : 'up', subBuilder: SpeedtestStatus_Direction.create)
    ..aOM<SpeedtestStatus_Direction>(1001, _omitFieldNames ? '' : 'down', subBuilder: SpeedtestStatus_Direction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedtestStatus clone() => SpeedtestStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedtestStatus copyWith(void Function(SpeedtestStatus) updates) => super.copyWith((message) => updates(message as SpeedtestStatus)) as SpeedtestStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedtestStatus create() => SpeedtestStatus._();
  SpeedtestStatus createEmptyInstance() => create();
  static $pb.PbList<SpeedtestStatus> createRepeated() => $pb.PbList<SpeedtestStatus>();
  @$core.pragma('dart2js:noInline')
  static SpeedtestStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedtestStatus>(create);
  static SpeedtestStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get running => $_getBF(0);
  @$pb.TagNumber(1)
  set running($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRunning() => $_has(0);
  @$pb.TagNumber(1)
  void clearRunning() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(1000)
  SpeedtestStatus_Direction get up => $_getN(2);
  @$pb.TagNumber(1000)
  set up(SpeedtestStatus_Direction v) { setField(1000, v); }
  @$pb.TagNumber(1000)
  $core.bool hasUp() => $_has(2);
  @$pb.TagNumber(1000)
  void clearUp() => clearField(1000);
  @$pb.TagNumber(1000)
  SpeedtestStatus_Direction ensureUp() => $_ensure(2);

  @$pb.TagNumber(1001)
  SpeedtestStatus_Direction get down => $_getN(3);
  @$pb.TagNumber(1001)
  set down(SpeedtestStatus_Direction v) { setField(1001, v); }
  @$pb.TagNumber(1001)
  $core.bool hasDown() => $_has(3);
  @$pb.TagNumber(1001)
  void clearDown() => clearField(1001);
  @$pb.TagNumber(1001)
  SpeedtestStatus_Direction ensureDown() => $_ensure(3);
}

/// SpaceX.API.Device.ReportClientSpeedtestResponse is a message:
class ReportClientSpeedtestResponse extends $pb.GeneratedMessage {
  factory ReportClientSpeedtestResponse() => create();
  ReportClientSpeedtestResponse._() : super();
  factory ReportClientSpeedtestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportClientSpeedtestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportClientSpeedtestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestResponse clone() => ReportClientSpeedtestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestResponse copyWith(void Function(ReportClientSpeedtestResponse) updates) => super.copyWith((message) => updates(message as ReportClientSpeedtestResponse)) as ReportClientSpeedtestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestResponse create() => ReportClientSpeedtestResponse._();
  ReportClientSpeedtestResponse createEmptyInstance() => create();
  static $pb.PbList<ReportClientSpeedtestResponse> createRepeated() => $pb.PbList<ReportClientSpeedtestResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportClientSpeedtestResponse>(create);
  static ReportClientSpeedtestResponse? _defaultInstance;
}

/// SpaceX.API.Device.InitiateRemoteSshResponse is a message:
class InitiateRemoteSshResponse extends $pb.GeneratedMessage {
  factory InitiateRemoteSshResponse({
    $core.int? port,
    $core.String? address,
    $core.List<$core.int>? stsafe,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (address != null) {
      $result.address = address;
    }
    if (stsafe != null) {
      $result.stsafe = stsafe;
    }
    return $result;
  }
  InitiateRemoteSshResponse._() : super();
  factory InitiateRemoteSshResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateRemoteSshResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitiateRemoteSshResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'address')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'stsafe', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshResponse clone() => InitiateRemoteSshResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshResponse copyWith(void Function(InitiateRemoteSshResponse) updates) => super.copyWith((message) => updates(message as InitiateRemoteSshResponse)) as InitiateRemoteSshResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshResponse create() => InitiateRemoteSshResponse._();
  InitiateRemoteSshResponse createEmptyInstance() => create();
  static $pb.PbList<InitiateRemoteSshResponse> createRepeated() => $pb.PbList<InitiateRemoteSshResponse>();
  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateRemoteSshResponse>(create);
  static InitiateRemoteSshResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get stsafe => $_getN(2);
  @$pb.TagNumber(3)
  set stsafe($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStsafe() => $_has(2);
  @$pb.TagNumber(3)
  void clearStsafe() => clearField(3);
}

/// SpaceX.API.Device.SelfTestResponse is a message:
class SelfTestResponse extends $pb.GeneratedMessage {
  factory SelfTestResponse({
    $core.bool? passed,
    $core.String? report,
  }) {
    final $result = create();
    if (passed != null) {
      $result.passed = passed;
    }
    if (report != null) {
      $result.report = report;
    }
    return $result;
  }
  SelfTestResponse._() : super();
  factory SelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'passed')
    ..aOS(2, _omitFieldNames ? '' : 'report')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfTestResponse clone() => SelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfTestResponse copyWith(void Function(SelfTestResponse) updates) => super.copyWith((message) => updates(message as SelfTestResponse)) as SelfTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfTestResponse create() => SelfTestResponse._();
  SelfTestResponse createEmptyInstance() => create();
  static $pb.PbList<SelfTestResponse> createRepeated() => $pb.PbList<SelfTestResponse>();
  @$core.pragma('dart2js:noInline')
  static SelfTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfTestResponse>(create);
  static SelfTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get passed => $_getBF(0);
  @$pb.TagNumber(1)
  set passed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassed() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassed() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get report => $_getSZ(1);
  @$pb.TagNumber(2)
  set report($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReport() => $_has(1);
  @$pb.TagNumber(2)
  void clearReport() => clearField(2);
}

/// SpaceX.API.Device.SetTestModeResponse is a message:
class SetTestModeResponse extends $pb.GeneratedMessage {
  factory SetTestModeResponse() => create();
  SetTestModeResponse._() : super();
  factory SetTestModeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTestModeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetTestModeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTestModeResponse clone() => SetTestModeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTestModeResponse copyWith(void Function(SetTestModeResponse) updates) => super.copyWith((message) => updates(message as SetTestModeResponse)) as SetTestModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTestModeResponse create() => SetTestModeResponse._();
  SetTestModeResponse createEmptyInstance() => create();
  static $pb.PbList<SetTestModeResponse> createRepeated() => $pb.PbList<SetTestModeResponse>();
  @$core.pragma('dart2js:noInline')
  static SetTestModeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTestModeResponse>(create);
  static SetTestModeResponse? _defaultInstance;
}

/// SpaceX.API.Device.SoftwareUpdateResponse is a message:
class SoftwareUpdateResponse extends $pb.GeneratedMessage {
  factory SoftwareUpdateResponse() => create();
  SoftwareUpdateResponse._() : super();
  factory SoftwareUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SoftwareUpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateResponse clone() => SoftwareUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateResponse copyWith(void Function(SoftwareUpdateResponse) updates) => super.copyWith((message) => updates(message as SoftwareUpdateResponse)) as SoftwareUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateResponse create() => SoftwareUpdateResponse._();
  SoftwareUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<SoftwareUpdateResponse> createRepeated() => $pb.PbList<SoftwareUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoftwareUpdateResponse>(create);
  static SoftwareUpdateResponse? _defaultInstance;
}

/// SpaceX.API.Device.EnableDebugTelemResponse is a message:
class EnableDebugTelemResponse extends $pb.GeneratedMessage {
  factory EnableDebugTelemResponse() => create();
  EnableDebugTelemResponse._() : super();
  factory EnableDebugTelemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableDebugTelemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnableDebugTelemResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableDebugTelemResponse clone() => EnableDebugTelemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableDebugTelemResponse copyWith(void Function(EnableDebugTelemResponse) updates) => super.copyWith((message) => updates(message as EnableDebugTelemResponse)) as EnableDebugTelemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemResponse create() => EnableDebugTelemResponse._();
  EnableDebugTelemResponse createEmptyInstance() => create();
  static $pb.PbList<EnableDebugTelemResponse> createRepeated() => $pb.PbList<EnableDebugTelemResponse>();
  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableDebugTelemResponse>(create);
  static EnableDebugTelemResponse? _defaultInstance;
}

/// SpaceX.API.Device.DishStowResponse is a message:
class DishStowResponse extends $pb.GeneratedMessage {
  factory DishStowResponse() => create();
  DishStowResponse._() : super();
  factory DishStowResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishStowResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowResponse clone() => DishStowResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowResponse copyWith(void Function(DishStowResponse) updates) => super.copyWith((message) => updates(message as DishStowResponse)) as DishStowResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishStowResponse create() => DishStowResponse._();
  DishStowResponse createEmptyInstance() => create();
  static $pb.PbList<DishStowResponse> createRepeated() => $pb.PbList<DishStowResponse>();
  @$core.pragma('dart2js:noInline')
  static DishStowResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishStowResponse>(create);
  static DishStowResponse? _defaultInstance;
}

/// SpaceX.API.Device.DishGetContextResponse is a message:
class DishGetContextResponse extends $pb.GeneratedMessage {
  factory DishGetContextResponse({
    DeviceInfo? deviceInfo,
    $core.double? obstructionFraction,
    $core.double? obstructionValidS,
    $core.int? cellId,
    $core.int? popRackId,
    $core.double? secondsToSlotEnd,
    DeviceState? deviceState,
    $core.int? initialSatelliteId,
    $core.int? initialGatewayId,
    $core.bool? onBackupBeam,
    $core.bool? debugTelemetryEnabled,
    $core.bool? obstructionCurrent,
    $core.double? popPingDropRate15sMean,
    $core.double? popPingLatencyMs15sMean,
    $core.double? secondsSinceLast1sOutage,
    $core.double? secondsSinceLast2sOutage,
    $core.double? secondsSinceLast5sOutage,
    $core.double? secondsSinceLast15sOutage,
    $core.double? secondsSinceLast60sOutage,
    $core.double? obstructionTime,
    $2.UtDisablementCode? disablementCode,
  }) {
    final $result = create();
    if (deviceInfo != null) {
      $result.deviceInfo = deviceInfo;
    }
    if (obstructionFraction != null) {
      $result.obstructionFraction = obstructionFraction;
    }
    if (obstructionValidS != null) {
      $result.obstructionValidS = obstructionValidS;
    }
    if (cellId != null) {
      $result.cellId = cellId;
    }
    if (popRackId != null) {
      $result.popRackId = popRackId;
    }
    if (secondsToSlotEnd != null) {
      $result.secondsToSlotEnd = secondsToSlotEnd;
    }
    if (deviceState != null) {
      $result.deviceState = deviceState;
    }
    if (initialSatelliteId != null) {
      $result.initialSatelliteId = initialSatelliteId;
    }
    if (initialGatewayId != null) {
      $result.initialGatewayId = initialGatewayId;
    }
    if (onBackupBeam != null) {
      $result.onBackupBeam = onBackupBeam;
    }
    if (debugTelemetryEnabled != null) {
      $result.debugTelemetryEnabled = debugTelemetryEnabled;
    }
    if (obstructionCurrent != null) {
      $result.obstructionCurrent = obstructionCurrent;
    }
    if (popPingDropRate15sMean != null) {
      $result.popPingDropRate15sMean = popPingDropRate15sMean;
    }
    if (popPingLatencyMs15sMean != null) {
      $result.popPingLatencyMs15sMean = popPingLatencyMs15sMean;
    }
    if (secondsSinceLast1sOutage != null) {
      $result.secondsSinceLast1sOutage = secondsSinceLast1sOutage;
    }
    if (secondsSinceLast2sOutage != null) {
      $result.secondsSinceLast2sOutage = secondsSinceLast2sOutage;
    }
    if (secondsSinceLast5sOutage != null) {
      $result.secondsSinceLast5sOutage = secondsSinceLast5sOutage;
    }
    if (secondsSinceLast15sOutage != null) {
      $result.secondsSinceLast15sOutage = secondsSinceLast15sOutage;
    }
    if (secondsSinceLast60sOutage != null) {
      $result.secondsSinceLast60sOutage = secondsSinceLast60sOutage;
    }
    if (obstructionTime != null) {
      $result.obstructionTime = obstructionTime;
    }
    if (disablementCode != null) {
      $result.disablementCode = disablementCode;
    }
    return $result;
  }
  DishGetContextResponse._() : super();
  factory DishGetContextResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetContextResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetContextResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, _omitFieldNames ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'obstructionFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'obstructionValidS', $pb.PbFieldType.OF)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'cellId', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'popRackId', $pb.PbFieldType.OU3)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'secondsToSlotEnd', $pb.PbFieldType.OF)
    ..aOM<DeviceState>(7, _omitFieldNames ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'initialSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'initialGatewayId', $pb.PbFieldType.OU3)
    ..aOB(10, _omitFieldNames ? '' : 'onBackupBeam')
    ..aOB(11, _omitFieldNames ? '' : 'debugTelemetryEnabled')
    ..aOB(12, _omitFieldNames ? '' : 'obstructionCurrent')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'popPingDropRate15sMean', $pb.PbFieldType.OF, protoName: 'pop_ping_drop_rate_15s_mean')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'popPingLatencyMs15sMean', $pb.PbFieldType.OF, protoName: 'pop_ping_latency_ms_15s_mean')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'secondsSinceLast1sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_1s_outage')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'secondsSinceLast2sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_2s_outage')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'secondsSinceLast5sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_5s_outage')
    ..a<$core.double>(18, _omitFieldNames ? '' : 'secondsSinceLast15sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_15s_outage')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'secondsSinceLast60sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_60s_outage')
    ..a<$core.double>(20, _omitFieldNames ? '' : 'obstructionTime', $pb.PbFieldType.OF)
    ..e<$2.UtDisablementCode>(21, _omitFieldNames ? '' : 'disablementCode', $pb.PbFieldType.OE, defaultOrMaker: $2.UtDisablementCode.UNKNOWN_STATE, valueOf: $2.UtDisablementCode.valueOf, enumValues: $2.UtDisablementCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetContextResponse clone() => DishGetContextResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetContextResponse copyWith(void Function(DishGetContextResponse) updates) => super.copyWith((message) => updates(message as DishGetContextResponse)) as DishGetContextResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetContextResponse create() => DishGetContextResponse._();
  DishGetContextResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetContextResponse> createRepeated() => $pb.PbList<DishGetContextResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetContextResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetContextResponse>(create);
  static DishGetContextResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfo get deviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set deviceInfo(DeviceInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => clearField(1);
  @$pb.TagNumber(1)
  DeviceInfo ensureDeviceInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get obstructionFraction => $_getN(1);
  @$pb.TagNumber(2)
  set obstructionFraction($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasObstructionFraction() => $_has(1);
  @$pb.TagNumber(2)
  void clearObstructionFraction() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get obstructionValidS => $_getN(2);
  @$pb.TagNumber(3)
  set obstructionValidS($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasObstructionValidS() => $_has(2);
  @$pb.TagNumber(3)
  void clearObstructionValidS() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cellId => $_getIZ(3);
  @$pb.TagNumber(4)
  set cellId($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCellId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCellId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get popRackId => $_getIZ(4);
  @$pb.TagNumber(5)
  set popRackId($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPopRackId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPopRackId() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get secondsToSlotEnd => $_getN(5);
  @$pb.TagNumber(6)
  set secondsToSlotEnd($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSecondsToSlotEnd() => $_has(5);
  @$pb.TagNumber(6)
  void clearSecondsToSlotEnd() => clearField(6);

  @$pb.TagNumber(7)
  DeviceState get deviceState => $_getN(6);
  @$pb.TagNumber(7)
  set deviceState(DeviceState v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceState() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeviceState() => clearField(7);
  @$pb.TagNumber(7)
  DeviceState ensureDeviceState() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get initialSatelliteId => $_getIZ(7);
  @$pb.TagNumber(8)
  set initialSatelliteId($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasInitialSatelliteId() => $_has(7);
  @$pb.TagNumber(8)
  void clearInitialSatelliteId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get initialGatewayId => $_getIZ(8);
  @$pb.TagNumber(9)
  set initialGatewayId($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasInitialGatewayId() => $_has(8);
  @$pb.TagNumber(9)
  void clearInitialGatewayId() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get onBackupBeam => $_getBF(9);
  @$pb.TagNumber(10)
  set onBackupBeam($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOnBackupBeam() => $_has(9);
  @$pb.TagNumber(10)
  void clearOnBackupBeam() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get debugTelemetryEnabled => $_getBF(10);
  @$pb.TagNumber(11)
  set debugTelemetryEnabled($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDebugTelemetryEnabled() => $_has(10);
  @$pb.TagNumber(11)
  void clearDebugTelemetryEnabled() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get obstructionCurrent => $_getBF(11);
  @$pb.TagNumber(12)
  set obstructionCurrent($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasObstructionCurrent() => $_has(11);
  @$pb.TagNumber(12)
  void clearObstructionCurrent() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get popPingDropRate15sMean => $_getN(12);
  @$pb.TagNumber(13)
  set popPingDropRate15sMean($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPopPingDropRate15sMean() => $_has(12);
  @$pb.TagNumber(13)
  void clearPopPingDropRate15sMean() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get popPingLatencyMs15sMean => $_getN(13);
  @$pb.TagNumber(14)
  set popPingLatencyMs15sMean($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPopPingLatencyMs15sMean() => $_has(13);
  @$pb.TagNumber(14)
  void clearPopPingLatencyMs15sMean() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get secondsSinceLast1sOutage => $_getN(14);
  @$pb.TagNumber(15)
  set secondsSinceLast1sOutage($core.double v) { $_setFloat(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSecondsSinceLast1sOutage() => $_has(14);
  @$pb.TagNumber(15)
  void clearSecondsSinceLast1sOutage() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get secondsSinceLast2sOutage => $_getN(15);
  @$pb.TagNumber(16)
  set secondsSinceLast2sOutage($core.double v) { $_setFloat(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSecondsSinceLast2sOutage() => $_has(15);
  @$pb.TagNumber(16)
  void clearSecondsSinceLast2sOutage() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get secondsSinceLast5sOutage => $_getN(16);
  @$pb.TagNumber(17)
  set secondsSinceLast5sOutage($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasSecondsSinceLast5sOutage() => $_has(16);
  @$pb.TagNumber(17)
  void clearSecondsSinceLast5sOutage() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get secondsSinceLast15sOutage => $_getN(17);
  @$pb.TagNumber(18)
  set secondsSinceLast15sOutage($core.double v) { $_setFloat(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasSecondsSinceLast15sOutage() => $_has(17);
  @$pb.TagNumber(18)
  void clearSecondsSinceLast15sOutage() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get secondsSinceLast60sOutage => $_getN(18);
  @$pb.TagNumber(19)
  set secondsSinceLast60sOutage($core.double v) { $_setFloat(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSecondsSinceLast60sOutage() => $_has(18);
  @$pb.TagNumber(19)
  void clearSecondsSinceLast60sOutage() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get obstructionTime => $_getN(19);
  @$pb.TagNumber(20)
  set obstructionTime($core.double v) { $_setFloat(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasObstructionTime() => $_has(19);
  @$pb.TagNumber(20)
  void clearObstructionTime() => clearField(20);

  @$pb.TagNumber(21)
  $2.UtDisablementCode get disablementCode => $_getN(20);
  @$pb.TagNumber(21)
  set disablementCode($2.UtDisablementCode v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasDisablementCode() => $_has(20);
  @$pb.TagNumber(21)
  void clearDisablementCode() => clearField(21);
}

/// SpaceX.API.Device.DeviceState is a message:
class DeviceState extends $pb.GeneratedMessage {
  factory DeviceState({
    $fixnum.Int64? uptimeS,
  }) {
    final $result = create();
    if (uptimeS != null) {
      $result.uptimeS = uptimeS;
    }
    return $result;
  }
  DeviceState._() : super();
  factory DeviceState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceState', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'uptimeS', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceState clone() => DeviceState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceState copyWith(void Function(DeviceState) updates) => super.copyWith((message) => updates(message as DeviceState)) as DeviceState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceState create() => DeviceState._();
  DeviceState createEmptyInstance() => create();
  static $pb.PbList<DeviceState> createRepeated() => $pb.PbList<DeviceState>();
  @$core.pragma('dart2js:noInline')
  static DeviceState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceState>(create);
  static DeviceState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uptimeS => $_getI64(0);
  @$pb.TagNumber(1)
  set uptimeS($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUptimeS() => $_has(0);
  @$pb.TagNumber(1)
  void clearUptimeS() => clearField(1);
}

/// SpaceX.API.Device.DishGetStatusResponse is a message:
class DishGetStatusResponse extends $pb.GeneratedMessage {
  factory DishGetStatusResponse({
    DeviceInfo? deviceInfo,
    DeviceState? deviceState,
    $core.double? secondsToFirstNonemptySlot,
    $core.double? popPingDropRate,
    DishObstructionStats? obstructionStats,
    DishAlerts? alerts,
    $core.double? downlinkThroughputBps,
    $core.double? uplinkThroughputBps,
    $core.double? popPingLatencyMs,
    $core.bool? stowRequested,
    $core.double? boresightAzimuthDeg,
    $core.double? boresightElevationDeg,
    DishOutage? outage,
    DishGpsStats? gpsStats,
    $core.int? ethSpeedMbps,
    UserMobilityClass? mobilityClass,
    $core.bool? isSnrAboveNoiseFloor,
    DishReadyStates? readyStates,
    UserClassOfService? classOfService,
    SoftwareUpdateState? softwareUpdateState,
    $core.bool? isSnrPersistentlyLow,
    HasActuators? hasActuators,
    $2.UtDisablementCode? disablementCode,
    $core.bool? hasSignedCals,
    SoftwareUpdateStats? softwareUpdateStats,
    AlignmentStats? alignmentStats,
    InitializationDurationSeconds? initializationDurationSeconds,
    DishConfig? config,
  }) {
    final $result = create();
    if (deviceInfo != null) {
      $result.deviceInfo = deviceInfo;
    }
    if (deviceState != null) {
      $result.deviceState = deviceState;
    }
    if (secondsToFirstNonemptySlot != null) {
      $result.secondsToFirstNonemptySlot = secondsToFirstNonemptySlot;
    }
    if (popPingDropRate != null) {
      $result.popPingDropRate = popPingDropRate;
    }
    if (obstructionStats != null) {
      $result.obstructionStats = obstructionStats;
    }
    if (alerts != null) {
      $result.alerts = alerts;
    }
    if (downlinkThroughputBps != null) {
      $result.downlinkThroughputBps = downlinkThroughputBps;
    }
    if (uplinkThroughputBps != null) {
      $result.uplinkThroughputBps = uplinkThroughputBps;
    }
    if (popPingLatencyMs != null) {
      $result.popPingLatencyMs = popPingLatencyMs;
    }
    if (stowRequested != null) {
      $result.stowRequested = stowRequested;
    }
    if (boresightAzimuthDeg != null) {
      $result.boresightAzimuthDeg = boresightAzimuthDeg;
    }
    if (boresightElevationDeg != null) {
      $result.boresightElevationDeg = boresightElevationDeg;
    }
    if (outage != null) {
      $result.outage = outage;
    }
    if (gpsStats != null) {
      $result.gpsStats = gpsStats;
    }
    if (ethSpeedMbps != null) {
      $result.ethSpeedMbps = ethSpeedMbps;
    }
    if (mobilityClass != null) {
      $result.mobilityClass = mobilityClass;
    }
    if (isSnrAboveNoiseFloor != null) {
      $result.isSnrAboveNoiseFloor = isSnrAboveNoiseFloor;
    }
    if (readyStates != null) {
      $result.readyStates = readyStates;
    }
    if (classOfService != null) {
      $result.classOfService = classOfService;
    }
    if (softwareUpdateState != null) {
      $result.softwareUpdateState = softwareUpdateState;
    }
    if (isSnrPersistentlyLow != null) {
      $result.isSnrPersistentlyLow = isSnrPersistentlyLow;
    }
    if (hasActuators != null) {
      $result.hasActuators = hasActuators;
    }
    if (disablementCode != null) {
      $result.disablementCode = disablementCode;
    }
    if (hasSignedCals != null) {
      $result.hasSignedCals = hasSignedCals;
    }
    if (softwareUpdateStats != null) {
      $result.softwareUpdateStats = softwareUpdateStats;
    }
    if (alignmentStats != null) {
      $result.alignmentStats = alignmentStats;
    }
    if (initializationDurationSeconds != null) {
      $result.initializationDurationSeconds = initializationDurationSeconds;
    }
    if (config != null) {
      $result.config = config;
    }
    return $result;
  }
  DishGetStatusResponse._() : super();
  factory DishGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, _omitFieldNames ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..aOM<DeviceState>(2, _omitFieldNames ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..a<$core.double>(1002, _omitFieldNames ? '' : 'secondsToFirstNonemptySlot', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, _omitFieldNames ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..aOM<DishObstructionStats>(1004, _omitFieldNames ? '' : 'obstructionStats', subBuilder: DishObstructionStats.create)
    ..aOM<DishAlerts>(1005, _omitFieldNames ? '' : 'alerts', subBuilder: DishAlerts.create)
    ..a<$core.double>(1007, _omitFieldNames ? '' : 'downlinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1008, _omitFieldNames ? '' : 'uplinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, _omitFieldNames ? '' : 'popPingLatencyMs', $pb.PbFieldType.OF)
    ..aOB(1010, _omitFieldNames ? '' : 'stowRequested')
    ..a<$core.double>(1011, _omitFieldNames ? '' : 'boresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, _omitFieldNames ? '' : 'boresightElevationDeg', $pb.PbFieldType.OF)
    ..aOM<DishOutage>(1014, _omitFieldNames ? '' : 'outage', subBuilder: DishOutage.create)
    ..aOM<DishGpsStats>(1015, _omitFieldNames ? '' : 'gpsStats', subBuilder: DishGpsStats.create)
    ..a<$core.int>(1016, _omitFieldNames ? '' : 'ethSpeedMbps', $pb.PbFieldType.O3)
    ..e<UserMobilityClass>(1017, _omitFieldNames ? '' : 'mobilityClass', $pb.PbFieldType.OE, defaultOrMaker: UserMobilityClass.STATIONARY, valueOf: UserMobilityClass.valueOf, enumValues: UserMobilityClass.values)
    ..aOB(1018, _omitFieldNames ? '' : 'isSnrAboveNoiseFloor')
    ..aOM<DishReadyStates>(1019, _omitFieldNames ? '' : 'readyStates', subBuilder: DishReadyStates.create)
    ..e<UserClassOfService>(1020, _omitFieldNames ? '' : 'classOfService', $pb.PbFieldType.OE, defaultOrMaker: UserClassOfService.UNKNOWN_USER_CLASS_OF_SERVICE, valueOf: UserClassOfService.valueOf, enumValues: UserClassOfService.values)
    ..e<SoftwareUpdateState>(1021, _omitFieldNames ? '' : 'softwareUpdateState', $pb.PbFieldType.OE, defaultOrMaker: SoftwareUpdateState.SOFTWARE_UPDATE_STATE_UNKNOWN, valueOf: SoftwareUpdateState.valueOf, enumValues: SoftwareUpdateState.values)
    ..aOB(1022, _omitFieldNames ? '' : 'isSnrPersistentlyLow')
    ..e<HasActuators>(1023, _omitFieldNames ? '' : 'hasActuators', $pb.PbFieldType.OE, defaultOrMaker: HasActuators.HAS_ACTUATORS_UNKNOWN, valueOf: HasActuators.valueOf, enumValues: HasActuators.values)
    ..e<$2.UtDisablementCode>(1024, _omitFieldNames ? '' : 'disablementCode', $pb.PbFieldType.OE, defaultOrMaker: $2.UtDisablementCode.UNKNOWN_STATE, valueOf: $2.UtDisablementCode.valueOf, enumValues: $2.UtDisablementCode.values)
    ..aOB(1025, _omitFieldNames ? '' : 'hasSignedCals')
    ..aOM<SoftwareUpdateStats>(1026, _omitFieldNames ? '' : 'softwareUpdateStats', subBuilder: SoftwareUpdateStats.create)
    ..aOM<AlignmentStats>(1027, _omitFieldNames ? '' : 'alignmentStats', subBuilder: AlignmentStats.create)
    ..aOM<InitializationDurationSeconds>(1028, _omitFieldNames ? '' : 'initializationDurationSeconds', subBuilder: InitializationDurationSeconds.create)
    ..aOM<DishConfig>(2000, _omitFieldNames ? '' : 'config', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse clone() => DishGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse copyWith(void Function(DishGetStatusResponse) updates) => super.copyWith((message) => updates(message as DishGetStatusResponse)) as DishGetStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetStatusResponse create() => DishGetStatusResponse._();
  DishGetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetStatusResponse> createRepeated() => $pb.PbList<DishGetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetStatusResponse>(create);
  static DishGetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfo get deviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set deviceInfo(DeviceInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => clearField(1);
  @$pb.TagNumber(1)
  DeviceInfo ensureDeviceInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  DeviceState get deviceState => $_getN(1);
  @$pb.TagNumber(2)
  set deviceState(DeviceState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceState() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceState() => clearField(2);
  @$pb.TagNumber(2)
  DeviceState ensureDeviceState() => $_ensure(1);

  @$pb.TagNumber(1002)
  $core.double get secondsToFirstNonemptySlot => $_getN(2);
  @$pb.TagNumber(1002)
  set secondsToFirstNonemptySlot($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(1002)
  $core.bool hasSecondsToFirstNonemptySlot() => $_has(2);
  @$pb.TagNumber(1002)
  void clearSecondsToFirstNonemptySlot() => clearField(1002);

  @$pb.TagNumber(1003)
  $core.double get popPingDropRate => $_getN(3);
  @$pb.TagNumber(1003)
  set popPingDropRate($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(1003)
  $core.bool hasPopPingDropRate() => $_has(3);
  @$pb.TagNumber(1003)
  void clearPopPingDropRate() => clearField(1003);

  @$pb.TagNumber(1004)
  DishObstructionStats get obstructionStats => $_getN(4);
  @$pb.TagNumber(1004)
  set obstructionStats(DishObstructionStats v) { setField(1004, v); }
  @$pb.TagNumber(1004)
  $core.bool hasObstructionStats() => $_has(4);
  @$pb.TagNumber(1004)
  void clearObstructionStats() => clearField(1004);
  @$pb.TagNumber(1004)
  DishObstructionStats ensureObstructionStats() => $_ensure(4);

  @$pb.TagNumber(1005)
  DishAlerts get alerts => $_getN(5);
  @$pb.TagNumber(1005)
  set alerts(DishAlerts v) { setField(1005, v); }
  @$pb.TagNumber(1005)
  $core.bool hasAlerts() => $_has(5);
  @$pb.TagNumber(1005)
  void clearAlerts() => clearField(1005);
  @$pb.TagNumber(1005)
  DishAlerts ensureAlerts() => $_ensure(5);

  @$pb.TagNumber(1007)
  $core.double get downlinkThroughputBps => $_getN(6);
  @$pb.TagNumber(1007)
  set downlinkThroughputBps($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(1007)
  $core.bool hasDownlinkThroughputBps() => $_has(6);
  @$pb.TagNumber(1007)
  void clearDownlinkThroughputBps() => clearField(1007);

  @$pb.TagNumber(1008)
  $core.double get uplinkThroughputBps => $_getN(7);
  @$pb.TagNumber(1008)
  set uplinkThroughputBps($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1008)
  $core.bool hasUplinkThroughputBps() => $_has(7);
  @$pb.TagNumber(1008)
  void clearUplinkThroughputBps() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get popPingLatencyMs => $_getN(8);
  @$pb.TagNumber(1009)
  set popPingLatencyMs($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1009)
  $core.bool hasPopPingLatencyMs() => $_has(8);
  @$pb.TagNumber(1009)
  void clearPopPingLatencyMs() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.bool get stowRequested => $_getBF(9);
  @$pb.TagNumber(1010)
  set stowRequested($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(1010)
  $core.bool hasStowRequested() => $_has(9);
  @$pb.TagNumber(1010)
  void clearStowRequested() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.double get boresightAzimuthDeg => $_getN(10);
  @$pb.TagNumber(1011)
  set boresightAzimuthDeg($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(1011)
  $core.bool hasBoresightAzimuthDeg() => $_has(10);
  @$pb.TagNumber(1011)
  void clearBoresightAzimuthDeg() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.double get boresightElevationDeg => $_getN(11);
  @$pb.TagNumber(1012)
  set boresightElevationDeg($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(1012)
  $core.bool hasBoresightElevationDeg() => $_has(11);
  @$pb.TagNumber(1012)
  void clearBoresightElevationDeg() => clearField(1012);

  @$pb.TagNumber(1014)
  DishOutage get outage => $_getN(12);
  @$pb.TagNumber(1014)
  set outage(DishOutage v) { setField(1014, v); }
  @$pb.TagNumber(1014)
  $core.bool hasOutage() => $_has(12);
  @$pb.TagNumber(1014)
  void clearOutage() => clearField(1014);
  @$pb.TagNumber(1014)
  DishOutage ensureOutage() => $_ensure(12);

  @$pb.TagNumber(1015)
  DishGpsStats get gpsStats => $_getN(13);
  @$pb.TagNumber(1015)
  set gpsStats(DishGpsStats v) { setField(1015, v); }
  @$pb.TagNumber(1015)
  $core.bool hasGpsStats() => $_has(13);
  @$pb.TagNumber(1015)
  void clearGpsStats() => clearField(1015);
  @$pb.TagNumber(1015)
  DishGpsStats ensureGpsStats() => $_ensure(13);

  @$pb.TagNumber(1016)
  $core.int get ethSpeedMbps => $_getIZ(14);
  @$pb.TagNumber(1016)
  set ethSpeedMbps($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(1016)
  $core.bool hasEthSpeedMbps() => $_has(14);
  @$pb.TagNumber(1016)
  void clearEthSpeedMbps() => clearField(1016);

  @$pb.TagNumber(1017)
  UserMobilityClass get mobilityClass => $_getN(15);
  @$pb.TagNumber(1017)
  set mobilityClass(UserMobilityClass v) { setField(1017, v); }
  @$pb.TagNumber(1017)
  $core.bool hasMobilityClass() => $_has(15);
  @$pb.TagNumber(1017)
  void clearMobilityClass() => clearField(1017);

  @$pb.TagNumber(1018)
  $core.bool get isSnrAboveNoiseFloor => $_getBF(16);
  @$pb.TagNumber(1018)
  set isSnrAboveNoiseFloor($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(1018)
  $core.bool hasIsSnrAboveNoiseFloor() => $_has(16);
  @$pb.TagNumber(1018)
  void clearIsSnrAboveNoiseFloor() => clearField(1018);

  @$pb.TagNumber(1019)
  DishReadyStates get readyStates => $_getN(17);
  @$pb.TagNumber(1019)
  set readyStates(DishReadyStates v) { setField(1019, v); }
  @$pb.TagNumber(1019)
  $core.bool hasReadyStates() => $_has(17);
  @$pb.TagNumber(1019)
  void clearReadyStates() => clearField(1019);
  @$pb.TagNumber(1019)
  DishReadyStates ensureReadyStates() => $_ensure(17);

  @$pb.TagNumber(1020)
  UserClassOfService get classOfService => $_getN(18);
  @$pb.TagNumber(1020)
  set classOfService(UserClassOfService v) { setField(1020, v); }
  @$pb.TagNumber(1020)
  $core.bool hasClassOfService() => $_has(18);
  @$pb.TagNumber(1020)
  void clearClassOfService() => clearField(1020);

  @$pb.TagNumber(1021)
  SoftwareUpdateState get softwareUpdateState => $_getN(19);
  @$pb.TagNumber(1021)
  set softwareUpdateState(SoftwareUpdateState v) { setField(1021, v); }
  @$pb.TagNumber(1021)
  $core.bool hasSoftwareUpdateState() => $_has(19);
  @$pb.TagNumber(1021)
  void clearSoftwareUpdateState() => clearField(1021);

  @$pb.TagNumber(1022)
  $core.bool get isSnrPersistentlyLow => $_getBF(20);
  @$pb.TagNumber(1022)
  set isSnrPersistentlyLow($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(1022)
  $core.bool hasIsSnrPersistentlyLow() => $_has(20);
  @$pb.TagNumber(1022)
  void clearIsSnrPersistentlyLow() => clearField(1022);

  @$pb.TagNumber(1023)
  HasActuators get hasActuators => $_getN(21);
  @$pb.TagNumber(1023)
  set hasActuators(HasActuators v) { setField(1023, v); }
  @$pb.TagNumber(1023)
  $core.bool hasHasActuators() => $_has(21);
  @$pb.TagNumber(1023)
  void clearHasActuators() => clearField(1023);

  @$pb.TagNumber(1024)
  $2.UtDisablementCode get disablementCode => $_getN(22);
  @$pb.TagNumber(1024)
  set disablementCode($2.UtDisablementCode v) { setField(1024, v); }
  @$pb.TagNumber(1024)
  $core.bool hasDisablementCode() => $_has(22);
  @$pb.TagNumber(1024)
  void clearDisablementCode() => clearField(1024);

  @$pb.TagNumber(1025)
  $core.bool get hasSignedCals => $_getBF(23);
  @$pb.TagNumber(1025)
  set hasSignedCals($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(1025)
  $core.bool hasHasSignedCals() => $_has(23);
  @$pb.TagNumber(1025)
  void clearHasSignedCals() => clearField(1025);

  @$pb.TagNumber(1026)
  SoftwareUpdateStats get softwareUpdateStats => $_getN(24);
  @$pb.TagNumber(1026)
  set softwareUpdateStats(SoftwareUpdateStats v) { setField(1026, v); }
  @$pb.TagNumber(1026)
  $core.bool hasSoftwareUpdateStats() => $_has(24);
  @$pb.TagNumber(1026)
  void clearSoftwareUpdateStats() => clearField(1026);
  @$pb.TagNumber(1026)
  SoftwareUpdateStats ensureSoftwareUpdateStats() => $_ensure(24);

  @$pb.TagNumber(1027)
  AlignmentStats get alignmentStats => $_getN(25);
  @$pb.TagNumber(1027)
  set alignmentStats(AlignmentStats v) { setField(1027, v); }
  @$pb.TagNumber(1027)
  $core.bool hasAlignmentStats() => $_has(25);
  @$pb.TagNumber(1027)
  void clearAlignmentStats() => clearField(1027);
  @$pb.TagNumber(1027)
  AlignmentStats ensureAlignmentStats() => $_ensure(25);

  @$pb.TagNumber(1028)
  InitializationDurationSeconds get initializationDurationSeconds => $_getN(26);
  @$pb.TagNumber(1028)
  set initializationDurationSeconds(InitializationDurationSeconds v) { setField(1028, v); }
  @$pb.TagNumber(1028)
  $core.bool hasInitializationDurationSeconds() => $_has(26);
  @$pb.TagNumber(1028)
  void clearInitializationDurationSeconds() => clearField(1028);
  @$pb.TagNumber(1028)
  InitializationDurationSeconds ensureInitializationDurationSeconds() => $_ensure(26);

  @$pb.TagNumber(2000)
  DishConfig get config => $_getN(27);
  @$pb.TagNumber(2000)
  set config(DishConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(27);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  DishConfig ensureConfig() => $_ensure(27);
}

/// SpaceX.API.Device.DishObstructionStats is a message:
class DishObstructionStats extends $pb.GeneratedMessage {
  factory DishObstructionStats({
    $core.double? fractionObstructed,
    $core.double? validS,
    $core.bool? currentlyObstructed,
    $core.double? avgProlongedObstructionDurationS,
    $core.double? avgProlongedObstructionIntervalS,
    $core.bool? avgProlongedObstructionValid,
    $core.double? timeObstructed,
    $core.int? patchesValid,
  }) {
    final $result = create();
    if (fractionObstructed != null) {
      $result.fractionObstructed = fractionObstructed;
    }
    if (validS != null) {
      $result.validS = validS;
    }
    if (currentlyObstructed != null) {
      $result.currentlyObstructed = currentlyObstructed;
    }
    if (avgProlongedObstructionDurationS != null) {
      $result.avgProlongedObstructionDurationS = avgProlongedObstructionDurationS;
    }
    if (avgProlongedObstructionIntervalS != null) {
      $result.avgProlongedObstructionIntervalS = avgProlongedObstructionIntervalS;
    }
    if (avgProlongedObstructionValid != null) {
      $result.avgProlongedObstructionValid = avgProlongedObstructionValid;
    }
    if (timeObstructed != null) {
      $result.timeObstructed = timeObstructed;
    }
    if (patchesValid != null) {
      $result.patchesValid = patchesValid;
    }
    return $result;
  }
  DishObstructionStats._() : super();
  factory DishObstructionStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishObstructionStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishObstructionStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'fractionObstructed', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'validS', $pb.PbFieldType.OF)
    ..aOB(5, _omitFieldNames ? '' : 'currentlyObstructed')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'avgProlongedObstructionDurationS', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'avgProlongedObstructionIntervalS', $pb.PbFieldType.OF)
    ..aOB(8, _omitFieldNames ? '' : 'avgProlongedObstructionValid')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'timeObstructed', $pb.PbFieldType.OF)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'patchesValid', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishObstructionStats clone() => DishObstructionStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishObstructionStats copyWith(void Function(DishObstructionStats) updates) => super.copyWith((message) => updates(message as DishObstructionStats)) as DishObstructionStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishObstructionStats create() => DishObstructionStats._();
  DishObstructionStats createEmptyInstance() => create();
  static $pb.PbList<DishObstructionStats> createRepeated() => $pb.PbList<DishObstructionStats>();
  @$core.pragma('dart2js:noInline')
  static DishObstructionStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishObstructionStats>(create);
  static DishObstructionStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get fractionObstructed => $_getN(0);
  @$pb.TagNumber(1)
  set fractionObstructed($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFractionObstructed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFractionObstructed() => clearField(1);

  @$pb.TagNumber(4)
  $core.double get validS => $_getN(1);
  @$pb.TagNumber(4)
  set validS($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidS() => $_has(1);
  @$pb.TagNumber(4)
  void clearValidS() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get currentlyObstructed => $_getBF(2);
  @$pb.TagNumber(5)
  set currentlyObstructed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentlyObstructed() => $_has(2);
  @$pb.TagNumber(5)
  void clearCurrentlyObstructed() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get avgProlongedObstructionDurationS => $_getN(3);
  @$pb.TagNumber(6)
  set avgProlongedObstructionDurationS($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasAvgProlongedObstructionDurationS() => $_has(3);
  @$pb.TagNumber(6)
  void clearAvgProlongedObstructionDurationS() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get avgProlongedObstructionIntervalS => $_getN(4);
  @$pb.TagNumber(7)
  set avgProlongedObstructionIntervalS($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvgProlongedObstructionIntervalS() => $_has(4);
  @$pb.TagNumber(7)
  void clearAvgProlongedObstructionIntervalS() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get avgProlongedObstructionValid => $_getBF(5);
  @$pb.TagNumber(8)
  set avgProlongedObstructionValid($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvgProlongedObstructionValid() => $_has(5);
  @$pb.TagNumber(8)
  void clearAvgProlongedObstructionValid() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get timeObstructed => $_getN(6);
  @$pb.TagNumber(9)
  set timeObstructed($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeObstructed() => $_has(6);
  @$pb.TagNumber(9)
  void clearTimeObstructed() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get patchesValid => $_getIZ(7);
  @$pb.TagNumber(10)
  set patchesValid($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasPatchesValid() => $_has(7);
  @$pb.TagNumber(10)
  void clearPatchesValid() => clearField(10);
}

/// SpaceX.API.Device.DishAlerts is a message:
class DishAlerts extends $pb.GeneratedMessage {
  factory DishAlerts({
    $core.bool? motorsStuck,
    $core.bool? thermalShutdown,
    $core.bool? thermalThrottle,
    $core.bool? unexpectedLocation,
    $core.bool? mastNotNearVertical,
    $core.bool? slowEthernetSpeeds,
    $core.bool? roaming,
    $core.bool? installPending,
    $core.bool? isHeating,
    $core.bool? powerSupplyThermalThrottle,
    $core.bool? isPowerSaveIdle,
    $core.bool? movingWhileNotMobile,
    $core.bool? movingFastWhileNotAviation,
    $core.bool? dbfTelemStale,
  }) {
    final $result = create();
    if (motorsStuck != null) {
      $result.motorsStuck = motorsStuck;
    }
    if (thermalShutdown != null) {
      $result.thermalShutdown = thermalShutdown;
    }
    if (thermalThrottle != null) {
      $result.thermalThrottle = thermalThrottle;
    }
    if (unexpectedLocation != null) {
      $result.unexpectedLocation = unexpectedLocation;
    }
    if (mastNotNearVertical != null) {
      $result.mastNotNearVertical = mastNotNearVertical;
    }
    if (slowEthernetSpeeds != null) {
      $result.slowEthernetSpeeds = slowEthernetSpeeds;
    }
    if (roaming != null) {
      $result.roaming = roaming;
    }
    if (installPending != null) {
      $result.installPending = installPending;
    }
    if (isHeating != null) {
      $result.isHeating = isHeating;
    }
    if (powerSupplyThermalThrottle != null) {
      $result.powerSupplyThermalThrottle = powerSupplyThermalThrottle;
    }
    if (isPowerSaveIdle != null) {
      $result.isPowerSaveIdle = isPowerSaveIdle;
    }
    if (movingWhileNotMobile != null) {
      $result.movingWhileNotMobile = movingWhileNotMobile;
    }
    if (movingFastWhileNotAviation != null) {
      $result.movingFastWhileNotAviation = movingFastWhileNotAviation;
    }
    if (dbfTelemStale != null) {
      $result.dbfTelemStale = dbfTelemStale;
    }
    return $result;
  }
  DishAlerts._() : super();
  factory DishAlerts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishAlerts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishAlerts', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'motorsStuck')
    ..aOB(2, _omitFieldNames ? '' : 'thermalShutdown')
    ..aOB(3, _omitFieldNames ? '' : 'thermalThrottle')
    ..aOB(4, _omitFieldNames ? '' : 'unexpectedLocation')
    ..aOB(5, _omitFieldNames ? '' : 'mastNotNearVertical')
    ..aOB(6, _omitFieldNames ? '' : 'slowEthernetSpeeds')
    ..aOB(7, _omitFieldNames ? '' : 'roaming')
    ..aOB(8, _omitFieldNames ? '' : 'installPending')
    ..aOB(9, _omitFieldNames ? '' : 'isHeating')
    ..aOB(10, _omitFieldNames ? '' : 'powerSupplyThermalThrottle')
    ..aOB(11, _omitFieldNames ? '' : 'isPowerSaveIdle')
    ..aOB(12, _omitFieldNames ? '' : 'movingWhileNotMobile')
    ..aOB(13, _omitFieldNames ? '' : 'movingFastWhileNotAviation')
    ..aOB(14, _omitFieldNames ? '' : 'dbfTelemStale')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishAlerts clone() => DishAlerts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishAlerts copyWith(void Function(DishAlerts) updates) => super.copyWith((message) => updates(message as DishAlerts)) as DishAlerts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishAlerts create() => DishAlerts._();
  DishAlerts createEmptyInstance() => create();
  static $pb.PbList<DishAlerts> createRepeated() => $pb.PbList<DishAlerts>();
  @$core.pragma('dart2js:noInline')
  static DishAlerts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishAlerts>(create);
  static DishAlerts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get motorsStuck => $_getBF(0);
  @$pb.TagNumber(1)
  set motorsStuck($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMotorsStuck() => $_has(0);
  @$pb.TagNumber(1)
  void clearMotorsStuck() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get thermalShutdown => $_getBF(1);
  @$pb.TagNumber(2)
  set thermalShutdown($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThermalShutdown() => $_has(1);
  @$pb.TagNumber(2)
  void clearThermalShutdown() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get thermalThrottle => $_getBF(2);
  @$pb.TagNumber(3)
  set thermalThrottle($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThermalThrottle() => $_has(2);
  @$pb.TagNumber(3)
  void clearThermalThrottle() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get unexpectedLocation => $_getBF(3);
  @$pb.TagNumber(4)
  set unexpectedLocation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnexpectedLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnexpectedLocation() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mastNotNearVertical => $_getBF(4);
  @$pb.TagNumber(5)
  set mastNotNearVertical($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMastNotNearVertical() => $_has(4);
  @$pb.TagNumber(5)
  void clearMastNotNearVertical() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get slowEthernetSpeeds => $_getBF(5);
  @$pb.TagNumber(6)
  set slowEthernetSpeeds($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSlowEthernetSpeeds() => $_has(5);
  @$pb.TagNumber(6)
  void clearSlowEthernetSpeeds() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get roaming => $_getBF(6);
  @$pb.TagNumber(7)
  set roaming($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRoaming() => $_has(6);
  @$pb.TagNumber(7)
  void clearRoaming() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get installPending => $_getBF(7);
  @$pb.TagNumber(8)
  set installPending($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasInstallPending() => $_has(7);
  @$pb.TagNumber(8)
  void clearInstallPending() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isHeating => $_getBF(8);
  @$pb.TagNumber(9)
  set isHeating($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsHeating() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsHeating() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get powerSupplyThermalThrottle => $_getBF(9);
  @$pb.TagNumber(10)
  set powerSupplyThermalThrottle($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPowerSupplyThermalThrottle() => $_has(9);
  @$pb.TagNumber(10)
  void clearPowerSupplyThermalThrottle() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isPowerSaveIdle => $_getBF(10);
  @$pb.TagNumber(11)
  set isPowerSaveIdle($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsPowerSaveIdle() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsPowerSaveIdle() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get movingWhileNotMobile => $_getBF(11);
  @$pb.TagNumber(12)
  set movingWhileNotMobile($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMovingWhileNotMobile() => $_has(11);
  @$pb.TagNumber(12)
  void clearMovingWhileNotMobile() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get movingFastWhileNotAviation => $_getBF(12);
  @$pb.TagNumber(13)
  set movingFastWhileNotAviation($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMovingFastWhileNotAviation() => $_has(12);
  @$pb.TagNumber(13)
  void clearMovingFastWhileNotAviation() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get dbfTelemStale => $_getBF(13);
  @$pb.TagNumber(14)
  set dbfTelemStale($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDbfTelemStale() => $_has(13);
  @$pb.TagNumber(14)
  void clearDbfTelemStale() => clearField(14);
}

/// SpaceX.API.Device.DishOutage is a message:
class DishOutage extends $pb.GeneratedMessage {
  factory DishOutage({
    DishOutage_Cause? cause,
    $fixnum.Int64? startTimestampNs,
    $fixnum.Int64? durationNs,
    $core.bool? didSwitch,
  }) {
    final $result = create();
    if (cause != null) {
      $result.cause = cause;
    }
    if (startTimestampNs != null) {
      $result.startTimestampNs = startTimestampNs;
    }
    if (durationNs != null) {
      $result.durationNs = durationNs;
    }
    if (didSwitch != null) {
      $result.didSwitch = didSwitch;
    }
    return $result;
  }
  DishOutage._() : super();
  factory DishOutage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishOutage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishOutage', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishOutage_Cause>(1, _omitFieldNames ? '' : 'cause', $pb.PbFieldType.OE, defaultOrMaker: DishOutage_Cause.UNKNOWN, valueOf: DishOutage_Cause.valueOf, enumValues: DishOutage_Cause.values)
    ..aInt64(2, _omitFieldNames ? '' : 'startTimestampNs')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'durationNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, _omitFieldNames ? '' : 'didSwitch')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishOutage clone() => DishOutage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishOutage copyWith(void Function(DishOutage) updates) => super.copyWith((message) => updates(message as DishOutage)) as DishOutage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishOutage create() => DishOutage._();
  DishOutage createEmptyInstance() => create();
  static $pb.PbList<DishOutage> createRepeated() => $pb.PbList<DishOutage>();
  @$core.pragma('dart2js:noInline')
  static DishOutage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishOutage>(create);
  static DishOutage? _defaultInstance;

  @$pb.TagNumber(1)
  DishOutage_Cause get cause => $_getN(0);
  @$pb.TagNumber(1)
  set cause(DishOutage_Cause v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCause() => $_has(0);
  @$pb.TagNumber(1)
  void clearCause() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startTimestampNs => $_getI64(1);
  @$pb.TagNumber(2)
  set startTimestampNs($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTimestampNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTimestampNs() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get durationNs => $_getI64(2);
  @$pb.TagNumber(3)
  set durationNs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDurationNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearDurationNs() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get didSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set didSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDidSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearDidSwitch() => clearField(4);
}

/// SpaceX.API.Device.DishGpsStats is a message:
class DishGpsStats extends $pb.GeneratedMessage {
  factory DishGpsStats({
    $core.bool? gpsValid,
    $core.int? gpsSats,
    $core.bool? noSatsAfterTtff,
    $core.bool? inhibitGps,
  }) {
    final $result = create();
    if (gpsValid != null) {
      $result.gpsValid = gpsValid;
    }
    if (gpsSats != null) {
      $result.gpsSats = gpsSats;
    }
    if (noSatsAfterTtff != null) {
      $result.noSatsAfterTtff = noSatsAfterTtff;
    }
    if (inhibitGps != null) {
      $result.inhibitGps = inhibitGps;
    }
    return $result;
  }
  DishGpsStats._() : super();
  factory DishGpsStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGpsStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGpsStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'gpsValid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'gpsSats', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'noSatsAfterTtff')
    ..aOB(4, _omitFieldNames ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGpsStats clone() => DishGpsStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGpsStats copyWith(void Function(DishGpsStats) updates) => super.copyWith((message) => updates(message as DishGpsStats)) as DishGpsStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGpsStats create() => DishGpsStats._();
  DishGpsStats createEmptyInstance() => create();
  static $pb.PbList<DishGpsStats> createRepeated() => $pb.PbList<DishGpsStats>();
  @$core.pragma('dart2js:noInline')
  static DishGpsStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGpsStats>(create);
  static DishGpsStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get gpsValid => $_getBF(0);
  @$pb.TagNumber(1)
  set gpsValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGpsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGpsValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get gpsSats => $_getIZ(1);
  @$pb.TagNumber(2)
  set gpsSats($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGpsSats() => $_has(1);
  @$pb.TagNumber(2)
  void clearGpsSats() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get noSatsAfterTtff => $_getBF(2);
  @$pb.TagNumber(3)
  set noSatsAfterTtff($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNoSatsAfterTtff() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoSatsAfterTtff() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get inhibitGps => $_getBF(3);
  @$pb.TagNumber(4)
  set inhibitGps($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInhibitGps() => $_has(3);
  @$pb.TagNumber(4)
  void clearInhibitGps() => clearField(4);
}

/// SpaceX.API.Device.DishReadyStates is a message:
class DishReadyStates extends $pb.GeneratedMessage {
  factory DishReadyStates({
    $core.bool? cady,
    $core.bool? scp,
    $core.bool? l1l2,
    $core.bool? xphy,
    $core.bool? aap,
    $core.bool? rf,
  }) {
    final $result = create();
    if (cady != null) {
      $result.cady = cady;
    }
    if (scp != null) {
      $result.scp = scp;
    }
    if (l1l2 != null) {
      $result.l1l2 = l1l2;
    }
    if (xphy != null) {
      $result.xphy = xphy;
    }
    if (aap != null) {
      $result.aap = aap;
    }
    if (rf != null) {
      $result.rf = rf;
    }
    return $result;
  }
  DishReadyStates._() : super();
  factory DishReadyStates.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishReadyStates.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishReadyStates', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'cady')
    ..aOB(2, _omitFieldNames ? '' : 'scp')
    ..aOB(3, _omitFieldNames ? '' : 'l1l2')
    ..aOB(4, _omitFieldNames ? '' : 'xphy')
    ..aOB(5, _omitFieldNames ? '' : 'aap')
    ..aOB(6, _omitFieldNames ? '' : 'rf')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishReadyStates clone() => DishReadyStates()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishReadyStates copyWith(void Function(DishReadyStates) updates) => super.copyWith((message) => updates(message as DishReadyStates)) as DishReadyStates;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishReadyStates create() => DishReadyStates._();
  DishReadyStates createEmptyInstance() => create();
  static $pb.PbList<DishReadyStates> createRepeated() => $pb.PbList<DishReadyStates>();
  @$core.pragma('dart2js:noInline')
  static DishReadyStates getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishReadyStates>(create);
  static DishReadyStates? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cady => $_getBF(0);
  @$pb.TagNumber(1)
  set cady($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCady() => $_has(0);
  @$pb.TagNumber(1)
  void clearCady() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get scp => $_getBF(1);
  @$pb.TagNumber(2)
  set scp($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScp() => $_has(1);
  @$pb.TagNumber(2)
  void clearScp() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get l1l2 => $_getBF(2);
  @$pb.TagNumber(3)
  set l1l2($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasL1l2() => $_has(2);
  @$pb.TagNumber(3)
  void clearL1l2() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get xphy => $_getBF(3);
  @$pb.TagNumber(4)
  set xphy($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasXphy() => $_has(3);
  @$pb.TagNumber(4)
  void clearXphy() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get aap => $_getBF(4);
  @$pb.TagNumber(5)
  set aap($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAap() => $_has(4);
  @$pb.TagNumber(5)
  void clearAap() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get rf => $_getBF(5);
  @$pb.TagNumber(6)
  set rf($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRf() => $_has(5);
  @$pb.TagNumber(6)
  void clearRf() => clearField(6);
}

/// SpaceX.API.Device.SoftwareUpdateStats is a message:
class SoftwareUpdateStats extends $pb.GeneratedMessage {
  factory SoftwareUpdateStats({
    SoftwareUpdateState? softwareUpdateState,
    $core.double? softwareUpdateProgress,
  }) {
    final $result = create();
    if (softwareUpdateState != null) {
      $result.softwareUpdateState = softwareUpdateState;
    }
    if (softwareUpdateProgress != null) {
      $result.softwareUpdateProgress = softwareUpdateProgress;
    }
    return $result;
  }
  SoftwareUpdateStats._() : super();
  factory SoftwareUpdateStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SoftwareUpdateStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<SoftwareUpdateState>(1, _omitFieldNames ? '' : 'softwareUpdateState', $pb.PbFieldType.OE, defaultOrMaker: SoftwareUpdateState.SOFTWARE_UPDATE_STATE_UNKNOWN, valueOf: SoftwareUpdateState.valueOf, enumValues: SoftwareUpdateState.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'softwareUpdateProgress', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateStats clone() => SoftwareUpdateStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateStats copyWith(void Function(SoftwareUpdateStats) updates) => super.copyWith((message) => updates(message as SoftwareUpdateStats)) as SoftwareUpdateStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateStats create() => SoftwareUpdateStats._();
  SoftwareUpdateStats createEmptyInstance() => create();
  static $pb.PbList<SoftwareUpdateStats> createRepeated() => $pb.PbList<SoftwareUpdateStats>();
  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoftwareUpdateStats>(create);
  static SoftwareUpdateStats? _defaultInstance;

  @$pb.TagNumber(1)
  SoftwareUpdateState get softwareUpdateState => $_getN(0);
  @$pb.TagNumber(1)
  set softwareUpdateState(SoftwareUpdateState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSoftwareUpdateState() => $_has(0);
  @$pb.TagNumber(1)
  void clearSoftwareUpdateState() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get softwareUpdateProgress => $_getN(1);
  @$pb.TagNumber(2)
  set softwareUpdateProgress($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSoftwareUpdateProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearSoftwareUpdateProgress() => clearField(2);
}

/// SpaceX.API.Device.AlignmentStats is a message:
class AlignmentStats extends $pb.GeneratedMessage {
  factory AlignmentStats({
    HasActuators? hasActuators,
    ActuatorState? actuatorState,
    $core.double? tiltAngleDeg,
    $core.double? boresightAzimuthDeg,
    $core.double? boresightElevationDeg,
    AttitudeEstimationState? attitudeEstimationState,
    $core.double? attitudeUncertaintyDeg,
    $core.double? desiredBoresightAzimuthDeg,
    $core.double? desiredBoresightElevationDeg,
  }) {
    final $result = create();
    if (hasActuators != null) {
      $result.hasActuators = hasActuators;
    }
    if (actuatorState != null) {
      $result.actuatorState = actuatorState;
    }
    if (tiltAngleDeg != null) {
      $result.tiltAngleDeg = tiltAngleDeg;
    }
    if (boresightAzimuthDeg != null) {
      $result.boresightAzimuthDeg = boresightAzimuthDeg;
    }
    if (boresightElevationDeg != null) {
      $result.boresightElevationDeg = boresightElevationDeg;
    }
    if (attitudeEstimationState != null) {
      $result.attitudeEstimationState = attitudeEstimationState;
    }
    if (attitudeUncertaintyDeg != null) {
      $result.attitudeUncertaintyDeg = attitudeUncertaintyDeg;
    }
    if (desiredBoresightAzimuthDeg != null) {
      $result.desiredBoresightAzimuthDeg = desiredBoresightAzimuthDeg;
    }
    if (desiredBoresightElevationDeg != null) {
      $result.desiredBoresightElevationDeg = desiredBoresightElevationDeg;
    }
    return $result;
  }
  AlignmentStats._() : super();
  factory AlignmentStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlignmentStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AlignmentStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<HasActuators>(1, _omitFieldNames ? '' : 'hasActuators', $pb.PbFieldType.OE, defaultOrMaker: HasActuators.HAS_ACTUATORS_UNKNOWN, valueOf: HasActuators.valueOf, enumValues: HasActuators.values)
    ..e<ActuatorState>(2, _omitFieldNames ? '' : 'actuatorState', $pb.PbFieldType.OE, defaultOrMaker: ActuatorState.ACTUATOR_STATE_IDLE, valueOf: ActuatorState.valueOf, enumValues: ActuatorState.values)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'tiltAngleDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'boresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'boresightElevationDeg', $pb.PbFieldType.OF)
    ..e<AttitudeEstimationState>(6, _omitFieldNames ? '' : 'attitudeEstimationState', $pb.PbFieldType.OE, defaultOrMaker: AttitudeEstimationState.FILTER_RESET, valueOf: AttitudeEstimationState.valueOf, enumValues: AttitudeEstimationState.values)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'attitudeUncertaintyDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'desiredBoresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'desiredBoresightElevationDeg', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlignmentStats clone() => AlignmentStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlignmentStats copyWith(void Function(AlignmentStats) updates) => super.copyWith((message) => updates(message as AlignmentStats)) as AlignmentStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlignmentStats create() => AlignmentStats._();
  AlignmentStats createEmptyInstance() => create();
  static $pb.PbList<AlignmentStats> createRepeated() => $pb.PbList<AlignmentStats>();
  @$core.pragma('dart2js:noInline')
  static AlignmentStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlignmentStats>(create);
  static AlignmentStats? _defaultInstance;

  @$pb.TagNumber(1)
  HasActuators get hasActuators => $_getN(0);
  @$pb.TagNumber(1)
  set hasActuators(HasActuators v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasActuators() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasActuators() => clearField(1);

  @$pb.TagNumber(2)
  ActuatorState get actuatorState => $_getN(1);
  @$pb.TagNumber(2)
  set actuatorState(ActuatorState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActuatorState() => $_has(1);
  @$pb.TagNumber(2)
  void clearActuatorState() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get tiltAngleDeg => $_getN(2);
  @$pb.TagNumber(3)
  set tiltAngleDeg($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTiltAngleDeg() => $_has(2);
  @$pb.TagNumber(3)
  void clearTiltAngleDeg() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get boresightAzimuthDeg => $_getN(3);
  @$pb.TagNumber(4)
  set boresightAzimuthDeg($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoresightAzimuthDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoresightAzimuthDeg() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get boresightElevationDeg => $_getN(4);
  @$pb.TagNumber(5)
  set boresightElevationDeg($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoresightElevationDeg() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoresightElevationDeg() => clearField(5);

  @$pb.TagNumber(6)
  AttitudeEstimationState get attitudeEstimationState => $_getN(5);
  @$pb.TagNumber(6)
  set attitudeEstimationState(AttitudeEstimationState v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAttitudeEstimationState() => $_has(5);
  @$pb.TagNumber(6)
  void clearAttitudeEstimationState() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get attitudeUncertaintyDeg => $_getN(6);
  @$pb.TagNumber(7)
  set attitudeUncertaintyDeg($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAttitudeUncertaintyDeg() => $_has(6);
  @$pb.TagNumber(7)
  void clearAttitudeUncertaintyDeg() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get desiredBoresightAzimuthDeg => $_getN(7);
  @$pb.TagNumber(8)
  set desiredBoresightAzimuthDeg($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDesiredBoresightAzimuthDeg() => $_has(7);
  @$pb.TagNumber(8)
  void clearDesiredBoresightAzimuthDeg() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get desiredBoresightElevationDeg => $_getN(8);
  @$pb.TagNumber(9)
  set desiredBoresightElevationDeg($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDesiredBoresightElevationDeg() => $_has(8);
  @$pb.TagNumber(9)
  void clearDesiredBoresightElevationDeg() => clearField(9);
}

/// SpaceX.API.Device.InitializationDurationSeconds is a message:
class InitializationDurationSeconds extends $pb.GeneratedMessage {
  factory InitializationDurationSeconds({
    $core.int? attitudeInitialization,
    $core.int? burstDetected,
    $core.int? ekfConverged,
    $core.int? firstCplane,
    $core.int? firstPopPing,
    $core.int? gpsValid,
    $core.int? initialNetworkEntry,
    $core.int? networkSchedule,
    $core.int? rfReady,
    $core.int? stableConnection,
  }) {
    final $result = create();
    if (attitudeInitialization != null) {
      $result.attitudeInitialization = attitudeInitialization;
    }
    if (burstDetected != null) {
      $result.burstDetected = burstDetected;
    }
    if (ekfConverged != null) {
      $result.ekfConverged = ekfConverged;
    }
    if (firstCplane != null) {
      $result.firstCplane = firstCplane;
    }
    if (firstPopPing != null) {
      $result.firstPopPing = firstPopPing;
    }
    if (gpsValid != null) {
      $result.gpsValid = gpsValid;
    }
    if (initialNetworkEntry != null) {
      $result.initialNetworkEntry = initialNetworkEntry;
    }
    if (networkSchedule != null) {
      $result.networkSchedule = networkSchedule;
    }
    if (rfReady != null) {
      $result.rfReady = rfReady;
    }
    if (stableConnection != null) {
      $result.stableConnection = stableConnection;
    }
    return $result;
  }
  InitializationDurationSeconds._() : super();
  factory InitializationDurationSeconds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializationDurationSeconds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitializationDurationSeconds', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'attitudeInitialization', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'burstDetected', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'ekfConverged', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'firstCplane', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'firstPopPing', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'gpsValid', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'initialNetworkEntry', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'networkSchedule', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'rfReady', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'stableConnection', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializationDurationSeconds clone() => InitializationDurationSeconds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializationDurationSeconds copyWith(void Function(InitializationDurationSeconds) updates) => super.copyWith((message) => updates(message as InitializationDurationSeconds)) as InitializationDurationSeconds;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitializationDurationSeconds create() => InitializationDurationSeconds._();
  InitializationDurationSeconds createEmptyInstance() => create();
  static $pb.PbList<InitializationDurationSeconds> createRepeated() => $pb.PbList<InitializationDurationSeconds>();
  @$core.pragma('dart2js:noInline')
  static InitializationDurationSeconds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializationDurationSeconds>(create);
  static InitializationDurationSeconds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get attitudeInitialization => $_getIZ(0);
  @$pb.TagNumber(1)
  set attitudeInitialization($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttitudeInitialization() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttitudeInitialization() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get burstDetected => $_getIZ(1);
  @$pb.TagNumber(2)
  set burstDetected($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBurstDetected() => $_has(1);
  @$pb.TagNumber(2)
  void clearBurstDetected() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get ekfConverged => $_getIZ(2);
  @$pb.TagNumber(3)
  set ekfConverged($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEkfConverged() => $_has(2);
  @$pb.TagNumber(3)
  void clearEkfConverged() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get firstCplane => $_getIZ(3);
  @$pb.TagNumber(4)
  set firstCplane($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstCplane() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstCplane() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get firstPopPing => $_getIZ(4);
  @$pb.TagNumber(5)
  set firstPopPing($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstPopPing() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstPopPing() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get gpsValid => $_getIZ(5);
  @$pb.TagNumber(6)
  set gpsValid($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGpsValid() => $_has(5);
  @$pb.TagNumber(6)
  void clearGpsValid() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get initialNetworkEntry => $_getIZ(6);
  @$pb.TagNumber(7)
  set initialNetworkEntry($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInitialNetworkEntry() => $_has(6);
  @$pb.TagNumber(7)
  void clearInitialNetworkEntry() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get networkSchedule => $_getIZ(7);
  @$pb.TagNumber(8)
  set networkSchedule($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNetworkSchedule() => $_has(7);
  @$pb.TagNumber(8)
  void clearNetworkSchedule() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get rfReady => $_getIZ(8);
  @$pb.TagNumber(9)
  set rfReady($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRfReady() => $_has(8);
  @$pb.TagNumber(9)
  void clearRfReady() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get stableConnection => $_getIZ(9);
  @$pb.TagNumber(10)
  set stableConnection($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStableConnection() => $_has(9);
  @$pb.TagNumber(10)
  void clearStableConnection() => clearField(10);
}

/// SpaceX.API.Device.DishAuthenticateResponse is a message:
class DishAuthenticateResponse extends $pb.GeneratedMessage {
  factory DishAuthenticateResponse({
    ChallengeResponse? dish,
  }) {
    final $result = create();
    if (dish != null) {
      $result.dish = dish;
    }
    return $result;
  }
  DishAuthenticateResponse._() : super();
  factory DishAuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishAuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishAuthenticateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ChallengeResponse>(2, _omitFieldNames ? '' : 'dish', subBuilder: ChallengeResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishAuthenticateResponse clone() => DishAuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishAuthenticateResponse copyWith(void Function(DishAuthenticateResponse) updates) => super.copyWith((message) => updates(message as DishAuthenticateResponse)) as DishAuthenticateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishAuthenticateResponse create() => DishAuthenticateResponse._();
  DishAuthenticateResponse createEmptyInstance() => create();
  static $pb.PbList<DishAuthenticateResponse> createRepeated() => $pb.PbList<DishAuthenticateResponse>();
  @$core.pragma('dart2js:noInline')
  static DishAuthenticateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishAuthenticateResponse>(create);
  static DishAuthenticateResponse? _defaultInstance;

  @$pb.TagNumber(2)
  ChallengeResponse get dish => $_getN(0);
  @$pb.TagNumber(2)
  set dish(ChallengeResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDish() => $_has(0);
  @$pb.TagNumber(2)
  void clearDish() => clearField(2);
  @$pb.TagNumber(2)
  ChallengeResponse ensureDish() => $_ensure(0);
}

/// SpaceX.API.Device.ChallengeResponse is a message:
class ChallengeResponse extends $pb.GeneratedMessage {
  factory ChallengeResponse({
    $core.List<$core.int>? signature,
    $core.List<$core.int>? certificateChain,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    if (certificateChain != null) {
      $result.certificateChain = certificateChain;
    }
    return $result;
  }
  ChallengeResponse._() : super();
  factory ChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'certificateChain', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChallengeResponse clone() => ChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChallengeResponse copyWith(void Function(ChallengeResponse) updates) => super.copyWith((message) => updates(message as ChallengeResponse)) as ChallengeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChallengeResponse create() => ChallengeResponse._();
  ChallengeResponse createEmptyInstance() => create();
  static $pb.PbList<ChallengeResponse> createRepeated() => $pb.PbList<ChallengeResponse>();
  @$core.pragma('dart2js:noInline')
  static ChallengeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChallengeResponse>(create);
  static ChallengeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get certificateChain => $_getN(1);
  @$pb.TagNumber(2)
  set certificateChain($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCertificateChain() => $_has(1);
  @$pb.TagNumber(2)
  void clearCertificateChain() => clearField(2);
}

/// SpaceX.API.Device.DishGetHistoryResponse is a message:
class DishGetHistoryResponse extends $pb.GeneratedMessage {
  factory DishGetHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? popPingDropRate,
    $core.Iterable<$core.double>? popPingLatencyMs,
    $core.Iterable<$core.double>? downlinkThroughputBps,
    $core.Iterable<$core.double>? uplinkThroughputBps,
    $core.Iterable<DishOutage>? outages,
  }) {
    final $result = create();
    if (current != null) {
      $result.current = current;
    }
    if (popPingDropRate != null) {
      $result.popPingDropRate.addAll(popPingDropRate);
    }
    if (popPingLatencyMs != null) {
      $result.popPingLatencyMs.addAll(popPingLatencyMs);
    }
    if (downlinkThroughputBps != null) {
      $result.downlinkThroughputBps.addAll(downlinkThroughputBps);
    }
    if (uplinkThroughputBps != null) {
      $result.uplinkThroughputBps.addAll(uplinkThroughputBps);
    }
    if (outages != null) {
      $result.outages.addAll(outages);
    }
    return $result;
  }
  DishGetHistoryResponse._() : super();
  factory DishGetHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(1001, _omitFieldNames ? '' : 'popPingDropRate', $pb.PbFieldType.KF)
    ..p<$core.double>(1002, _omitFieldNames ? '' : 'popPingLatencyMs', $pb.PbFieldType.KF)
    ..p<$core.double>(1003, _omitFieldNames ? '' : 'downlinkThroughputBps', $pb.PbFieldType.KF)
    ..p<$core.double>(1004, _omitFieldNames ? '' : 'uplinkThroughputBps', $pb.PbFieldType.KF)
    ..pc<DishOutage>(1009, _omitFieldNames ? '' : 'outages', $pb.PbFieldType.PM, subBuilder: DishOutage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetHistoryResponse clone() => DishGetHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetHistoryResponse copyWith(void Function(DishGetHistoryResponse) updates) => super.copyWith((message) => updates(message as DishGetHistoryResponse)) as DishGetHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetHistoryResponse create() => DishGetHistoryResponse._();
  DishGetHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetHistoryResponse> createRepeated() => $pb.PbList<DishGetHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetHistoryResponse>(create);
  static DishGetHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get current => $_getI64(0);
  @$pb.TagNumber(1)
  set current($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(1001)
  $core.List<$core.double> get popPingDropRate => $_getList(1);

  @$pb.TagNumber(1002)
  $core.List<$core.double> get popPingLatencyMs => $_getList(2);

  @$pb.TagNumber(1003)
  $core.List<$core.double> get downlinkThroughputBps => $_getList(3);

  @$pb.TagNumber(1004)
  $core.List<$core.double> get uplinkThroughputBps => $_getList(4);

  @$pb.TagNumber(1009)
  $core.List<DishOutage> get outages => $_getList(5);
}

/// SpaceX.API.Device.DishSetEmcResponse is a message:
class DishSetEmcResponse extends $pb.GeneratedMessage {
  factory DishSetEmcResponse() => create();
  DishSetEmcResponse._() : super();
  factory DishSetEmcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetEmcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishSetEmcResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetEmcResponse clone() => DishSetEmcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetEmcResponse copyWith(void Function(DishSetEmcResponse) updates) => super.copyWith((message) => updates(message as DishSetEmcResponse)) as DishSetEmcResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishSetEmcResponse create() => DishSetEmcResponse._();
  DishSetEmcResponse createEmptyInstance() => create();
  static $pb.PbList<DishSetEmcResponse> createRepeated() => $pb.PbList<DishSetEmcResponse>();
  @$core.pragma('dart2js:noInline')
  static DishSetEmcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetEmcResponse>(create);
  static DishSetEmcResponse? _defaultInstance;
}

/// SpaceX.API.Device.DishGetObstructionMapResponse is a message:
class DishGetObstructionMapResponse extends $pb.GeneratedMessage {
  factory DishGetObstructionMapResponse({
    $core.int? numRows,
    $core.int? numCols,
    $core.Iterable<$core.double>? snr,
    $core.double? minElevationDeg,
  }) {
    final $result = create();
    if (numRows != null) {
      $result.numRows = numRows;
    }
    if (numCols != null) {
      $result.numCols = numCols;
    }
    if (snr != null) {
      $result.snr.addAll(snr);
    }
    if (minElevationDeg != null) {
      $result.minElevationDeg = minElevationDeg;
    }
    return $result;
  }
  DishGetObstructionMapResponse._() : super();
  factory DishGetObstructionMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetObstructionMapResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'numRows', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numCols', $pb.PbFieldType.OU3)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'snr', $pb.PbFieldType.KF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'minElevationDeg', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse clone() => DishGetObstructionMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse copyWith(void Function(DishGetObstructionMapResponse) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapResponse)) as DishGetObstructionMapResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapResponse create() => DishGetObstructionMapResponse._();
  DishGetObstructionMapResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetObstructionMapResponse> createRepeated() => $pb.PbList<DishGetObstructionMapResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetObstructionMapResponse>(create);
  static DishGetObstructionMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get numRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set numRows($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumRows() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numCols => $_getIZ(1);
  @$pb.TagNumber(2)
  set numCols($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumCols() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumCols() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.double> get snr => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get minElevationDeg => $_getN(3);
  @$pb.TagNumber(4)
  set minElevationDeg($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinElevationDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinElevationDeg() => clearField(4);
}

/// SpaceX.API.Device.DishGetEmcResponse is a message:
class DishGetEmcResponse extends $pb.GeneratedMessage {
  factory DishGetEmcResponse({
    $core.String? uuid,
    $fixnum.Int64? timestamp,
    $core.int? cplaneUpdates,
    $core.double? gpsLatitude,
    $core.double? gpsLongitude,
    $core.double? gpsPdop,
    $core.int? rfMode,
    $core.double? phi,
    $core.double? theta,
    $core.int? rxChannel,
    $core.int? txChannel,
    $core.double? tDbfMax,
    $core.double? tCenter,
    $core.bool? autoPowerSnowMeltEnabled,
    $core.double? voltage,
    $core.int? rxBeamState,
    $core.int? txBeamState,
    $core.int? halfDuplexState,
    $core.bool? manualTiltEnabled,
    $core.double? tiltAngle,
    $core.int? pllTxLockDetected,
    $core.bool? eirpExceededThreshold,
    $core.bool? idleOverrideEnabled,
    $core.bool? thetaOverrideEnabled,
    $core.double? thetaOverrideValue,
    $core.bool? phiOverrideEnabled,
    $core.double? phiOverrideValue,
    $core.int? rxChanOverrideValue,
    $core.int? txChanOverrideValue,
    $core.bool? skySearchOverrideEnabled,
    $core.bool? fastSwitchingEnabled,
    $core.int? modulationOverrideValue,
    $core.bool? forceEirpFailure,
    $core.bool? forcePllUnlock,
    $core.int? utIneSuccess,
    $core.bool? rfReady,
    $core.bool? tiltToStowed,
    $core.bool? reboot,
    $core.bool? continuousMotorTest,
    $core.double? distanceOverrideMeters,
    $core.int? amplitudeTaperOverride,
    $core.bool? amplitudeTaperEnabled,
    $core.double? amplitudeTaperScale,
    $core.int? countryCodeOverride,
    $core.double? maxPointingDistance,
    $core.double? distanceScalingFactor,
    $core.int? txDutyCycleOverride,
    $core.int? rxDutyCycleOverride,
    $core.double? txTimeMs,
    $core.double? rxTimeMs,
    $core.double? eirpLegalLimitDbw,
    $core.double? eirpLegalLimitDbwOverride,
    $core.double? eirpAdjustmentDb,
    $core.double? eirpPredictedDbw,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (cplaneUpdates != null) {
      $result.cplaneUpdates = cplaneUpdates;
    }
    if (gpsLatitude != null) {
      $result.gpsLatitude = gpsLatitude;
    }
    if (gpsLongitude != null) {
      $result.gpsLongitude = gpsLongitude;
    }
    if (gpsPdop != null) {
      $result.gpsPdop = gpsPdop;
    }
    if (rfMode != null) {
      $result.rfMode = rfMode;
    }
    if (phi != null) {
      $result.phi = phi;
    }
    if (theta != null) {
      $result.theta = theta;
    }
    if (rxChannel != null) {
      $result.rxChannel = rxChannel;
    }
    if (txChannel != null) {
      $result.txChannel = txChannel;
    }
    if (tDbfMax != null) {
      $result.tDbfMax = tDbfMax;
    }
    if (tCenter != null) {
      $result.tCenter = tCenter;
    }
    if (autoPowerSnowMeltEnabled != null) {
      $result.autoPowerSnowMeltEnabled = autoPowerSnowMeltEnabled;
    }
    if (voltage != null) {
      $result.voltage = voltage;
    }
    if (rxBeamState != null) {
      $result.rxBeamState = rxBeamState;
    }
    if (txBeamState != null) {
      $result.txBeamState = txBeamState;
    }
    if (halfDuplexState != null) {
      $result.halfDuplexState = halfDuplexState;
    }
    if (manualTiltEnabled != null) {
      $result.manualTiltEnabled = manualTiltEnabled;
    }
    if (tiltAngle != null) {
      $result.tiltAngle = tiltAngle;
    }
    if (pllTxLockDetected != null) {
      $result.pllTxLockDetected = pllTxLockDetected;
    }
    if (eirpExceededThreshold != null) {
      $result.eirpExceededThreshold = eirpExceededThreshold;
    }
    if (idleOverrideEnabled != null) {
      $result.idleOverrideEnabled = idleOverrideEnabled;
    }
    if (thetaOverrideEnabled != null) {
      $result.thetaOverrideEnabled = thetaOverrideEnabled;
    }
    if (thetaOverrideValue != null) {
      $result.thetaOverrideValue = thetaOverrideValue;
    }
    if (phiOverrideEnabled != null) {
      $result.phiOverrideEnabled = phiOverrideEnabled;
    }
    if (phiOverrideValue != null) {
      $result.phiOverrideValue = phiOverrideValue;
    }
    if (rxChanOverrideValue != null) {
      $result.rxChanOverrideValue = rxChanOverrideValue;
    }
    if (txChanOverrideValue != null) {
      $result.txChanOverrideValue = txChanOverrideValue;
    }
    if (skySearchOverrideEnabled != null) {
      $result.skySearchOverrideEnabled = skySearchOverrideEnabled;
    }
    if (fastSwitchingEnabled != null) {
      $result.fastSwitchingEnabled = fastSwitchingEnabled;
    }
    if (modulationOverrideValue != null) {
      $result.modulationOverrideValue = modulationOverrideValue;
    }
    if (forceEirpFailure != null) {
      $result.forceEirpFailure = forceEirpFailure;
    }
    if (forcePllUnlock != null) {
      $result.forcePllUnlock = forcePllUnlock;
    }
    if (utIneSuccess != null) {
      $result.utIneSuccess = utIneSuccess;
    }
    if (rfReady != null) {
      $result.rfReady = rfReady;
    }
    if (tiltToStowed != null) {
      $result.tiltToStowed = tiltToStowed;
    }
    if (reboot != null) {
      $result.reboot = reboot;
    }
    if (continuousMotorTest != null) {
      $result.continuousMotorTest = continuousMotorTest;
    }
    if (distanceOverrideMeters != null) {
      $result.distanceOverrideMeters = distanceOverrideMeters;
    }
    if (amplitudeTaperOverride != null) {
      $result.amplitudeTaperOverride = amplitudeTaperOverride;
    }
    if (amplitudeTaperEnabled != null) {
      $result.amplitudeTaperEnabled = amplitudeTaperEnabled;
    }
    if (amplitudeTaperScale != null) {
      $result.amplitudeTaperScale = amplitudeTaperScale;
    }
    if (countryCodeOverride != null) {
      $result.countryCodeOverride = countryCodeOverride;
    }
    if (maxPointingDistance != null) {
      $result.maxPointingDistance = maxPointingDistance;
    }
    if (distanceScalingFactor != null) {
      $result.distanceScalingFactor = distanceScalingFactor;
    }
    if (txDutyCycleOverride != null) {
      $result.txDutyCycleOverride = txDutyCycleOverride;
    }
    if (rxDutyCycleOverride != null) {
      $result.rxDutyCycleOverride = rxDutyCycleOverride;
    }
    if (txTimeMs != null) {
      $result.txTimeMs = txTimeMs;
    }
    if (rxTimeMs != null) {
      $result.rxTimeMs = rxTimeMs;
    }
    if (eirpLegalLimitDbw != null) {
      $result.eirpLegalLimitDbw = eirpLegalLimitDbw;
    }
    if (eirpLegalLimitDbwOverride != null) {
      $result.eirpLegalLimitDbwOverride = eirpLegalLimitDbwOverride;
    }
    if (eirpAdjustmentDb != null) {
      $result.eirpAdjustmentDb = eirpAdjustmentDb;
    }
    if (eirpPredictedDbw != null) {
      $result.eirpPredictedDbw = eirpPredictedDbw;
    }
    return $result;
  }
  DishGetEmcResponse._() : super();
  factory DishGetEmcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetEmcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetEmcResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'uuid')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'cplaneUpdates', $pb.PbFieldType.OU3)
    ..a<$core.double>(16, _omitFieldNames ? '' : 'gpsLatitude', $pb.PbFieldType.OD)
    ..a<$core.double>(17, _omitFieldNames ? '' : 'gpsLongitude', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'gpsPdop', $pb.PbFieldType.OD)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'rfMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(20, _omitFieldNames ? '' : 'phi', $pb.PbFieldType.OD)
    ..a<$core.double>(21, _omitFieldNames ? '' : 'theta', $pb.PbFieldType.OD)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'rxChannel', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'txChannel', $pb.PbFieldType.OU3)
    ..a<$core.double>(24, _omitFieldNames ? '' : 'tDbfMax', $pb.PbFieldType.OF)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'tCenter', $pb.PbFieldType.OD)
    ..aOB(30, _omitFieldNames ? '' : 'autoPowerSnowMeltEnabled')
    ..a<$core.double>(32, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OD)
    ..a<$core.int>(33, _omitFieldNames ? '' : 'rxBeamState', $pb.PbFieldType.OU3)
    ..a<$core.int>(34, _omitFieldNames ? '' : 'txBeamState', $pb.PbFieldType.OU3)
    ..a<$core.int>(35, _omitFieldNames ? '' : 'halfDuplexState', $pb.PbFieldType.OU3)
    ..aOB(36, _omitFieldNames ? '' : 'manualTiltEnabled')
    ..a<$core.double>(37, _omitFieldNames ? '' : 'tiltAngle', $pb.PbFieldType.OD)
    ..a<$core.int>(38, _omitFieldNames ? '' : 'pllTxLockDetected', $pb.PbFieldType.OU3)
    ..aOB(39, _omitFieldNames ? '' : 'eirpExceededThreshold')
    ..aOB(41, _omitFieldNames ? '' : 'idleOverrideEnabled')
    ..aOB(42, _omitFieldNames ? '' : 'thetaOverrideEnabled')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'thetaOverrideValue', $pb.PbFieldType.OD)
    ..aOB(44, _omitFieldNames ? '' : 'phiOverrideEnabled')
    ..a<$core.double>(45, _omitFieldNames ? '' : 'phiOverrideValue', $pb.PbFieldType.OD)
    ..a<$core.int>(46, _omitFieldNames ? '' : 'rxChanOverrideValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(47, _omitFieldNames ? '' : 'txChanOverrideValue', $pb.PbFieldType.OU3)
    ..aOB(48, _omitFieldNames ? '' : 'skySearchOverrideEnabled')
    ..aOB(49, _omitFieldNames ? '' : 'fastSwitchingEnabled')
    ..a<$core.int>(50, _omitFieldNames ? '' : 'modulationOverrideValue', $pb.PbFieldType.OU3)
    ..aOB(51, _omitFieldNames ? '' : 'forceEirpFailure')
    ..aOB(52, _omitFieldNames ? '' : 'forcePllUnlock')
    ..a<$core.int>(53, _omitFieldNames ? '' : 'utIneSuccess', $pb.PbFieldType.OU3)
    ..aOB(54, _omitFieldNames ? '' : 'rfReady')
    ..aOB(55, _omitFieldNames ? '' : 'tiltToStowed')
    ..aOB(56, _omitFieldNames ? '' : 'reboot')
    ..aOB(57, _omitFieldNames ? '' : 'continuousMotorTest')
    ..a<$core.double>(58, _omitFieldNames ? '' : 'distanceOverrideMeters', $pb.PbFieldType.OD)
    ..a<$core.int>(59, _omitFieldNames ? '' : 'amplitudeTaperOverride', $pb.PbFieldType.OU3)
    ..aOB(60, _omitFieldNames ? '' : 'amplitudeTaperEnabled')
    ..a<$core.double>(61, _omitFieldNames ? '' : 'amplitudeTaperScale', $pb.PbFieldType.OD)
    ..a<$core.int>(62, _omitFieldNames ? '' : 'countryCodeOverride', $pb.PbFieldType.OU3)
    ..a<$core.double>(63, _omitFieldNames ? '' : 'maxPointingDistance', $pb.PbFieldType.OD)
    ..a<$core.double>(64, _omitFieldNames ? '' : 'distanceScalingFactor', $pb.PbFieldType.OD)
    ..a<$core.int>(65, _omitFieldNames ? '' : 'txDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.int>(66, _omitFieldNames ? '' : 'rxDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.double>(67, _omitFieldNames ? '' : 'txTimeMs', $pb.PbFieldType.OF)
    ..a<$core.double>(68, _omitFieldNames ? '' : 'rxTimeMs', $pb.PbFieldType.OF)
    ..a<$core.double>(69, _omitFieldNames ? '' : 'eirpLegalLimitDbw', $pb.PbFieldType.OD)
    ..a<$core.double>(70, _omitFieldNames ? '' : 'eirpLegalLimitDbwOverride', $pb.PbFieldType.OD)
    ..a<$core.double>(71, _omitFieldNames ? '' : 'eirpAdjustmentDb', $pb.PbFieldType.OD)
    ..a<$core.double>(72, _omitFieldNames ? '' : 'eirpPredictedDbw', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetEmcResponse clone() => DishGetEmcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetEmcResponse copyWith(void Function(DishGetEmcResponse) updates) => super.copyWith((message) => updates(message as DishGetEmcResponse)) as DishGetEmcResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetEmcResponse create() => DishGetEmcResponse._();
  DishGetEmcResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetEmcResponse> createRepeated() => $pb.PbList<DishGetEmcResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetEmcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetEmcResponse>(create);
  static DishGetEmcResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);

  @$pb.TagNumber(11)
  $core.int get cplaneUpdates => $_getIZ(2);
  @$pb.TagNumber(11)
  set cplaneUpdates($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasCplaneUpdates() => $_has(2);
  @$pb.TagNumber(11)
  void clearCplaneUpdates() => clearField(11);

  @$pb.TagNumber(16)
  $core.double get gpsLatitude => $_getN(3);
  @$pb.TagNumber(16)
  set gpsLatitude($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(16)
  $core.bool hasGpsLatitude() => $_has(3);
  @$pb.TagNumber(16)
  void clearGpsLatitude() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get gpsLongitude => $_getN(4);
  @$pb.TagNumber(17)
  set gpsLongitude($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(17)
  $core.bool hasGpsLongitude() => $_has(4);
  @$pb.TagNumber(17)
  void clearGpsLongitude() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get gpsPdop => $_getN(5);
  @$pb.TagNumber(18)
  set gpsPdop($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(18)
  $core.bool hasGpsPdop() => $_has(5);
  @$pb.TagNumber(18)
  void clearGpsPdop() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get rfMode => $_getIZ(6);
  @$pb.TagNumber(19)
  set rfMode($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(19)
  $core.bool hasRfMode() => $_has(6);
  @$pb.TagNumber(19)
  void clearRfMode() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get phi => $_getN(7);
  @$pb.TagNumber(20)
  set phi($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(20)
  $core.bool hasPhi() => $_has(7);
  @$pb.TagNumber(20)
  void clearPhi() => clearField(20);

  @$pb.TagNumber(21)
  $core.double get theta => $_getN(8);
  @$pb.TagNumber(21)
  set theta($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(21)
  $core.bool hasTheta() => $_has(8);
  @$pb.TagNumber(21)
  void clearTheta() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get rxChannel => $_getIZ(9);
  @$pb.TagNumber(22)
  set rxChannel($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(22)
  $core.bool hasRxChannel() => $_has(9);
  @$pb.TagNumber(22)
  void clearRxChannel() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get txChannel => $_getIZ(10);
  @$pb.TagNumber(23)
  set txChannel($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(23)
  $core.bool hasTxChannel() => $_has(10);
  @$pb.TagNumber(23)
  void clearTxChannel() => clearField(23);

  @$pb.TagNumber(24)
  $core.double get tDbfMax => $_getN(11);
  @$pb.TagNumber(24)
  set tDbfMax($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(24)
  $core.bool hasTDbfMax() => $_has(11);
  @$pb.TagNumber(24)
  void clearTDbfMax() => clearField(24);

  @$pb.TagNumber(25)
  $core.double get tCenter => $_getN(12);
  @$pb.TagNumber(25)
  set tCenter($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(25)
  $core.bool hasTCenter() => $_has(12);
  @$pb.TagNumber(25)
  void clearTCenter() => clearField(25);

  @$pb.TagNumber(30)
  $core.bool get autoPowerSnowMeltEnabled => $_getBF(13);
  @$pb.TagNumber(30)
  set autoPowerSnowMeltEnabled($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(30)
  $core.bool hasAutoPowerSnowMeltEnabled() => $_has(13);
  @$pb.TagNumber(30)
  void clearAutoPowerSnowMeltEnabled() => clearField(30);

  @$pb.TagNumber(32)
  $core.double get voltage => $_getN(14);
  @$pb.TagNumber(32)
  set voltage($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(32)
  $core.bool hasVoltage() => $_has(14);
  @$pb.TagNumber(32)
  void clearVoltage() => clearField(32);

  @$pb.TagNumber(33)
  $core.int get rxBeamState => $_getIZ(15);
  @$pb.TagNumber(33)
  set rxBeamState($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(33)
  $core.bool hasRxBeamState() => $_has(15);
  @$pb.TagNumber(33)
  void clearRxBeamState() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get txBeamState => $_getIZ(16);
  @$pb.TagNumber(34)
  set txBeamState($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(34)
  $core.bool hasTxBeamState() => $_has(16);
  @$pb.TagNumber(34)
  void clearTxBeamState() => clearField(34);

  @$pb.TagNumber(35)
  $core.int get halfDuplexState => $_getIZ(17);
  @$pb.TagNumber(35)
  set halfDuplexState($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(35)
  $core.bool hasHalfDuplexState() => $_has(17);
  @$pb.TagNumber(35)
  void clearHalfDuplexState() => clearField(35);

  @$pb.TagNumber(36)
  $core.bool get manualTiltEnabled => $_getBF(18);
  @$pb.TagNumber(36)
  set manualTiltEnabled($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(36)
  $core.bool hasManualTiltEnabled() => $_has(18);
  @$pb.TagNumber(36)
  void clearManualTiltEnabled() => clearField(36);

  @$pb.TagNumber(37)
  $core.double get tiltAngle => $_getN(19);
  @$pb.TagNumber(37)
  set tiltAngle($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(37)
  $core.bool hasTiltAngle() => $_has(19);
  @$pb.TagNumber(37)
  void clearTiltAngle() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get pllTxLockDetected => $_getIZ(20);
  @$pb.TagNumber(38)
  set pllTxLockDetected($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(38)
  $core.bool hasPllTxLockDetected() => $_has(20);
  @$pb.TagNumber(38)
  void clearPllTxLockDetected() => clearField(38);

  @$pb.TagNumber(39)
  $core.bool get eirpExceededThreshold => $_getBF(21);
  @$pb.TagNumber(39)
  set eirpExceededThreshold($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(39)
  $core.bool hasEirpExceededThreshold() => $_has(21);
  @$pb.TagNumber(39)
  void clearEirpExceededThreshold() => clearField(39);

  @$pb.TagNumber(41)
  $core.bool get idleOverrideEnabled => $_getBF(22);
  @$pb.TagNumber(41)
  set idleOverrideEnabled($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(41)
  $core.bool hasIdleOverrideEnabled() => $_has(22);
  @$pb.TagNumber(41)
  void clearIdleOverrideEnabled() => clearField(41);

  @$pb.TagNumber(42)
  $core.bool get thetaOverrideEnabled => $_getBF(23);
  @$pb.TagNumber(42)
  set thetaOverrideEnabled($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(42)
  $core.bool hasThetaOverrideEnabled() => $_has(23);
  @$pb.TagNumber(42)
  void clearThetaOverrideEnabled() => clearField(42);

  @$pb.TagNumber(43)
  $core.double get thetaOverrideValue => $_getN(24);
  @$pb.TagNumber(43)
  set thetaOverrideValue($core.double v) { $_setDouble(24, v); }
  @$pb.TagNumber(43)
  $core.bool hasThetaOverrideValue() => $_has(24);
  @$pb.TagNumber(43)
  void clearThetaOverrideValue() => clearField(43);

  @$pb.TagNumber(44)
  $core.bool get phiOverrideEnabled => $_getBF(25);
  @$pb.TagNumber(44)
  set phiOverrideEnabled($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(44)
  $core.bool hasPhiOverrideEnabled() => $_has(25);
  @$pb.TagNumber(44)
  void clearPhiOverrideEnabled() => clearField(44);

  @$pb.TagNumber(45)
  $core.double get phiOverrideValue => $_getN(26);
  @$pb.TagNumber(45)
  set phiOverrideValue($core.double v) { $_setDouble(26, v); }
  @$pb.TagNumber(45)
  $core.bool hasPhiOverrideValue() => $_has(26);
  @$pb.TagNumber(45)
  void clearPhiOverrideValue() => clearField(45);

  @$pb.TagNumber(46)
  $core.int get rxChanOverrideValue => $_getIZ(27);
  @$pb.TagNumber(46)
  set rxChanOverrideValue($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(46)
  $core.bool hasRxChanOverrideValue() => $_has(27);
  @$pb.TagNumber(46)
  void clearRxChanOverrideValue() => clearField(46);

  @$pb.TagNumber(47)
  $core.int get txChanOverrideValue => $_getIZ(28);
  @$pb.TagNumber(47)
  set txChanOverrideValue($core.int v) { $_setUnsignedInt32(28, v); }
  @$pb.TagNumber(47)
  $core.bool hasTxChanOverrideValue() => $_has(28);
  @$pb.TagNumber(47)
  void clearTxChanOverrideValue() => clearField(47);

  @$pb.TagNumber(48)
  $core.bool get skySearchOverrideEnabled => $_getBF(29);
  @$pb.TagNumber(48)
  set skySearchOverrideEnabled($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(48)
  $core.bool hasSkySearchOverrideEnabled() => $_has(29);
  @$pb.TagNumber(48)
  void clearSkySearchOverrideEnabled() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get fastSwitchingEnabled => $_getBF(30);
  @$pb.TagNumber(49)
  set fastSwitchingEnabled($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(49)
  $core.bool hasFastSwitchingEnabled() => $_has(30);
  @$pb.TagNumber(49)
  void clearFastSwitchingEnabled() => clearField(49);

  @$pb.TagNumber(50)
  $core.int get modulationOverrideValue => $_getIZ(31);
  @$pb.TagNumber(50)
  set modulationOverrideValue($core.int v) { $_setUnsignedInt32(31, v); }
  @$pb.TagNumber(50)
  $core.bool hasModulationOverrideValue() => $_has(31);
  @$pb.TagNumber(50)
  void clearModulationOverrideValue() => clearField(50);

  @$pb.TagNumber(51)
  $core.bool get forceEirpFailure => $_getBF(32);
  @$pb.TagNumber(51)
  set forceEirpFailure($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(51)
  $core.bool hasForceEirpFailure() => $_has(32);
  @$pb.TagNumber(51)
  void clearForceEirpFailure() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get forcePllUnlock => $_getBF(33);
  @$pb.TagNumber(52)
  set forcePllUnlock($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(52)
  $core.bool hasForcePllUnlock() => $_has(33);
  @$pb.TagNumber(52)
  void clearForcePllUnlock() => clearField(52);

  @$pb.TagNumber(53)
  $core.int get utIneSuccess => $_getIZ(34);
  @$pb.TagNumber(53)
  set utIneSuccess($core.int v) { $_setUnsignedInt32(34, v); }
  @$pb.TagNumber(53)
  $core.bool hasUtIneSuccess() => $_has(34);
  @$pb.TagNumber(53)
  void clearUtIneSuccess() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get rfReady => $_getBF(35);
  @$pb.TagNumber(54)
  set rfReady($core.bool v) { $_setBool(35, v); }
  @$pb.TagNumber(54)
  $core.bool hasRfReady() => $_has(35);
  @$pb.TagNumber(54)
  void clearRfReady() => clearField(54);

  @$pb.TagNumber(55)
  $core.bool get tiltToStowed => $_getBF(36);
  @$pb.TagNumber(55)
  set tiltToStowed($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(55)
  $core.bool hasTiltToStowed() => $_has(36);
  @$pb.TagNumber(55)
  void clearTiltToStowed() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get reboot => $_getBF(37);
  @$pb.TagNumber(56)
  set reboot($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(56)
  $core.bool hasReboot() => $_has(37);
  @$pb.TagNumber(56)
  void clearReboot() => clearField(56);

  @$pb.TagNumber(57)
  $core.bool get continuousMotorTest => $_getBF(38);
  @$pb.TagNumber(57)
  set continuousMotorTest($core.bool v) { $_setBool(38, v); }
  @$pb.TagNumber(57)
  $core.bool hasContinuousMotorTest() => $_has(38);
  @$pb.TagNumber(57)
  void clearContinuousMotorTest() => clearField(57);

  @$pb.TagNumber(58)
  $core.double get distanceOverrideMeters => $_getN(39);
  @$pb.TagNumber(58)
  set distanceOverrideMeters($core.double v) { $_setDouble(39, v); }
  @$pb.TagNumber(58)
  $core.bool hasDistanceOverrideMeters() => $_has(39);
  @$pb.TagNumber(58)
  void clearDistanceOverrideMeters() => clearField(58);

  @$pb.TagNumber(59)
  $core.int get amplitudeTaperOverride => $_getIZ(40);
  @$pb.TagNumber(59)
  set amplitudeTaperOverride($core.int v) { $_setUnsignedInt32(40, v); }
  @$pb.TagNumber(59)
  $core.bool hasAmplitudeTaperOverride() => $_has(40);
  @$pb.TagNumber(59)
  void clearAmplitudeTaperOverride() => clearField(59);

  @$pb.TagNumber(60)
  $core.bool get amplitudeTaperEnabled => $_getBF(41);
  @$pb.TagNumber(60)
  set amplitudeTaperEnabled($core.bool v) { $_setBool(41, v); }
  @$pb.TagNumber(60)
  $core.bool hasAmplitudeTaperEnabled() => $_has(41);
  @$pb.TagNumber(60)
  void clearAmplitudeTaperEnabled() => clearField(60);

  @$pb.TagNumber(61)
  $core.double get amplitudeTaperScale => $_getN(42);
  @$pb.TagNumber(61)
  set amplitudeTaperScale($core.double v) { $_setDouble(42, v); }
  @$pb.TagNumber(61)
  $core.bool hasAmplitudeTaperScale() => $_has(42);
  @$pb.TagNumber(61)
  void clearAmplitudeTaperScale() => clearField(61);

  @$pb.TagNumber(62)
  $core.int get countryCodeOverride => $_getIZ(43);
  @$pb.TagNumber(62)
  set countryCodeOverride($core.int v) { $_setUnsignedInt32(43, v); }
  @$pb.TagNumber(62)
  $core.bool hasCountryCodeOverride() => $_has(43);
  @$pb.TagNumber(62)
  void clearCountryCodeOverride() => clearField(62);

  @$pb.TagNumber(63)
  $core.double get maxPointingDistance => $_getN(44);
  @$pb.TagNumber(63)
  set maxPointingDistance($core.double v) { $_setDouble(44, v); }
  @$pb.TagNumber(63)
  $core.bool hasMaxPointingDistance() => $_has(44);
  @$pb.TagNumber(63)
  void clearMaxPointingDistance() => clearField(63);

  @$pb.TagNumber(64)
  $core.double get distanceScalingFactor => $_getN(45);
  @$pb.TagNumber(64)
  set distanceScalingFactor($core.double v) { $_setDouble(45, v); }
  @$pb.TagNumber(64)
  $core.bool hasDistanceScalingFactor() => $_has(45);
  @$pb.TagNumber(64)
  void clearDistanceScalingFactor() => clearField(64);

  @$pb.TagNumber(65)
  $core.int get txDutyCycleOverride => $_getIZ(46);
  @$pb.TagNumber(65)
  set txDutyCycleOverride($core.int v) { $_setSignedInt32(46, v); }
  @$pb.TagNumber(65)
  $core.bool hasTxDutyCycleOverride() => $_has(46);
  @$pb.TagNumber(65)
  void clearTxDutyCycleOverride() => clearField(65);

  @$pb.TagNumber(66)
  $core.int get rxDutyCycleOverride => $_getIZ(47);
  @$pb.TagNumber(66)
  set rxDutyCycleOverride($core.int v) { $_setSignedInt32(47, v); }
  @$pb.TagNumber(66)
  $core.bool hasRxDutyCycleOverride() => $_has(47);
  @$pb.TagNumber(66)
  void clearRxDutyCycleOverride() => clearField(66);

  @$pb.TagNumber(67)
  $core.double get txTimeMs => $_getN(48);
  @$pb.TagNumber(67)
  set txTimeMs($core.double v) { $_setFloat(48, v); }
  @$pb.TagNumber(67)
  $core.bool hasTxTimeMs() => $_has(48);
  @$pb.TagNumber(67)
  void clearTxTimeMs() => clearField(67);

  @$pb.TagNumber(68)
  $core.double get rxTimeMs => $_getN(49);
  @$pb.TagNumber(68)
  set rxTimeMs($core.double v) { $_setFloat(49, v); }
  @$pb.TagNumber(68)
  $core.bool hasRxTimeMs() => $_has(49);
  @$pb.TagNumber(68)
  void clearRxTimeMs() => clearField(68);

  @$pb.TagNumber(69)
  $core.double get eirpLegalLimitDbw => $_getN(50);
  @$pb.TagNumber(69)
  set eirpLegalLimitDbw($core.double v) { $_setDouble(50, v); }
  @$pb.TagNumber(69)
  $core.bool hasEirpLegalLimitDbw() => $_has(50);
  @$pb.TagNumber(69)
  void clearEirpLegalLimitDbw() => clearField(69);

  @$pb.TagNumber(70)
  $core.double get eirpLegalLimitDbwOverride => $_getN(51);
  @$pb.TagNumber(70)
  set eirpLegalLimitDbwOverride($core.double v) { $_setDouble(51, v); }
  @$pb.TagNumber(70)
  $core.bool hasEirpLegalLimitDbwOverride() => $_has(51);
  @$pb.TagNumber(70)
  void clearEirpLegalLimitDbwOverride() => clearField(70);

  @$pb.TagNumber(71)
  $core.double get eirpAdjustmentDb => $_getN(52);
  @$pb.TagNumber(71)
  set eirpAdjustmentDb($core.double v) { $_setDouble(52, v); }
  @$pb.TagNumber(71)
  $core.bool hasEirpAdjustmentDb() => $_has(52);
  @$pb.TagNumber(71)
  void clearEirpAdjustmentDb() => clearField(71);

  @$pb.TagNumber(72)
  $core.double get eirpPredictedDbw => $_getN(53);
  @$pb.TagNumber(72)
  set eirpPredictedDbw($core.double v) { $_setDouble(53, v); }
  @$pb.TagNumber(72)
  $core.bool hasEirpPredictedDbw() => $_has(53);
  @$pb.TagNumber(72)
  void clearEirpPredictedDbw() => clearField(72);
}

/// SpaceX.API.Device.DishSetConfigResponse is a message:
class DishSetConfigResponse extends $pb.GeneratedMessage {
  factory DishSetConfigResponse({
    DishConfig? updatedDishConfig,
  }) {
    final $result = create();
    if (updatedDishConfig != null) {
      $result.updatedDishConfig = updatedDishConfig;
    }
    return $result;
  }
  DishSetConfigResponse._() : super();
  factory DishSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishSetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, _omitFieldNames ? '' : 'updatedDishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse clone() => DishSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse copyWith(void Function(DishSetConfigResponse) updates) => super.copyWith((message) => updates(message as DishSetConfigResponse)) as DishSetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishSetConfigResponse create() => DishSetConfigResponse._();
  DishSetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<DishSetConfigResponse> createRepeated() => $pb.PbList<DishSetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static DishSetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetConfigResponse>(create);
  static DishSetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get updatedDishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set updatedDishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdatedDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureUpdatedDishConfig() => $_ensure(0);
}

/// SpaceX.API.Device.DishGetConfigResponse is a message:
class DishGetConfigResponse extends $pb.GeneratedMessage {
  factory DishGetConfigResponse({
    DishConfig? dishConfig,
  }) {
    final $result = create();
    if (dishConfig != null) {
      $result.dishConfig = dishConfig;
    }
    return $result;
  }
  DishGetConfigResponse._() : super();
  factory DishGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishGetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, _omitFieldNames ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse clone() => DishGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse copyWith(void Function(DishGetConfigResponse) updates) => super.copyWith((message) => updates(message as DishGetConfigResponse)) as DishGetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishGetConfigResponse create() => DishGetConfigResponse._();
  DishGetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<DishGetConfigResponse> createRepeated() => $pb.PbList<DishGetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static DishGetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetConfigResponse>(create);
  static DishGetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  DishConfig get dishConfig => $_getN(0);
  @$pb.TagNumber(1)
  set dishConfig(DishConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishConfig() => clearField(1);
  @$pb.TagNumber(1)
  DishConfig ensureDishConfig() => $_ensure(0);
}

/// SpaceX.API.Device.StartDishSelfTestResponse is a message:
class StartDishSelfTestResponse extends $pb.GeneratedMessage {
  factory StartDishSelfTestResponse() => create();
  StartDishSelfTestResponse._() : super();
  factory StartDishSelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDishSelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartDishSelfTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDishSelfTestResponse clone() => StartDishSelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDishSelfTestResponse copyWith(void Function(StartDishSelfTestResponse) updates) => super.copyWith((message) => updates(message as StartDishSelfTestResponse)) as StartDishSelfTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestResponse create() => StartDishSelfTestResponse._();
  StartDishSelfTestResponse createEmptyInstance() => create();
  static $pb.PbList<StartDishSelfTestResponse> createRepeated() => $pb.PbList<StartDishSelfTestResponse>();
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDishSelfTestResponse>(create);
  static StartDishSelfTestResponse? _defaultInstance;
}

/// SpaceX.API.Device.DishInhibitGpsResponse is a message:
class DishInhibitGpsResponse extends $pb.GeneratedMessage {
  factory DishInhibitGpsResponse({
    $core.bool? inhibitGps,
  }) {
    final $result = create();
    if (inhibitGps != null) {
      $result.inhibitGps = inhibitGps;
    }
    return $result;
  }
  DishInhibitGpsResponse._() : super();
  factory DishInhibitGpsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DishInhibitGpsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse clone() => DishInhibitGpsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse copyWith(void Function(DishInhibitGpsResponse) updates) => super.copyWith((message) => updates(message as DishInhibitGpsResponse)) as DishInhibitGpsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsResponse create() => DishInhibitGpsResponse._();
  DishInhibitGpsResponse createEmptyInstance() => create();
  static $pb.PbList<DishInhibitGpsResponse> createRepeated() => $pb.PbList<DishInhibitGpsResponse>();
  @$core.pragma('dart2js:noInline')
  static DishInhibitGpsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishInhibitGpsResponse>(create);
  static DishInhibitGpsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inhibitGps => $_getBF(0);
  @$pb.TagNumber(1)
  set inhibitGps($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInhibitGps() => $_has(0);
  @$pb.TagNumber(1)
  void clearInhibitGps() => clearField(1);
}

/// SpaceX.API.Device.WifiSetConfigResponse is a message:
class WifiSetConfigResponse extends $pb.GeneratedMessage {
  factory WifiSetConfigResponse({
    WifiConfig? updatedWifiConfig,
  }) {
    final $result = create();
    if (updatedWifiConfig != null) {
      $result.updatedWifiConfig = updatedWifiConfig;
    }
    return $result;
  }
  WifiSetConfigResponse._() : super();
  factory WifiSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, _omitFieldNames ? '' : 'updatedWifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse clone() => WifiSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse copyWith(void Function(WifiSetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiSetConfigResponse)) as WifiSetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetConfigResponse create() => WifiSetConfigResponse._();
  WifiSetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetConfigResponse> createRepeated() => $pb.PbList<WifiSetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetConfigResponse>(create);
  static WifiSetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get updatedWifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set updatedWifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdatedWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureUpdatedWifiConfig() => $_ensure(0);
}

/// SpaceX.API.Device.WifiGetClientsResponse is a message:
class WifiGetClientsResponse extends $pb.GeneratedMessage {
  factory WifiGetClientsResponse({
    $core.Iterable<WifiClient>? clients,
    $core.bool? hasClientIndex,
    $core.int? clientIndex_3,
  }) {
    final $result = create();
    if (clients != null) {
      $result.clients.addAll(clients);
    }
    if (hasClientIndex != null) {
      $result.hasClientIndex = hasClientIndex;
    }
    if (clientIndex_3 != null) {
      $result.clientIndex_3 = clientIndex_3;
    }
    return $result;
  }
  WifiGetClientsResponse._() : super();
  factory WifiGetClientsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetClientsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiClient>(1, _omitFieldNames ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: WifiClient.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasClientIndex')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'clientIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse clone() => WifiGetClientsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse copyWith(void Function(WifiGetClientsResponse) updates) => super.copyWith((message) => updates(message as WifiGetClientsResponse)) as WifiGetClientsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetClientsResponse create() => WifiGetClientsResponse._();
  WifiGetClientsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientsResponse> createRepeated() => $pb.PbList<WifiGetClientsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientsResponse>(create);
  static WifiGetClientsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WifiClient> get clients => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get hasClientIndex => $_getBF(1);
  @$pb.TagNumber(2)
  set hasClientIndex($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasClientIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasClientIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get clientIndex_3 => $_getIZ(2);
  @$pb.TagNumber(3)
  set clientIndex_3($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientIndex_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientIndex_3() => clearField(3);
}

class WifiClient_FqcodelInfo extends $pb.GeneratedMessage {
  factory WifiClient_FqcodelInfo({
    $fixnum.Int64? enqsHiPrio,
    $fixnum.Int64? enqsFqcodel,
    $fixnum.Int64? enqsNew,
    $fixnum.Int64? enqsOld,
    $fixnum.Int64? enqsDropped,
    $fixnum.Int64? deqsNew,
    $fixnum.Int64? deqsOld,
    $fixnum.Int64? deqsFlowNew,
    $fixnum.Int64? deqsFlowOldDeficit,
    $fixnum.Int64? deqsFlowOldStarvation,
    $fixnum.Int64? deqsDropped,
  }) {
    final $result = create();
    if (enqsHiPrio != null) {
      $result.enqsHiPrio = enqsHiPrio;
    }
    if (enqsFqcodel != null) {
      $result.enqsFqcodel = enqsFqcodel;
    }
    if (enqsNew != null) {
      $result.enqsNew = enqsNew;
    }
    if (enqsOld != null) {
      $result.enqsOld = enqsOld;
    }
    if (enqsDropped != null) {
      $result.enqsDropped = enqsDropped;
    }
    if (deqsNew != null) {
      $result.deqsNew = deqsNew;
    }
    if (deqsOld != null) {
      $result.deqsOld = deqsOld;
    }
    if (deqsFlowNew != null) {
      $result.deqsFlowNew = deqsFlowNew;
    }
    if (deqsFlowOldDeficit != null) {
      $result.deqsFlowOldDeficit = deqsFlowOldDeficit;
    }
    if (deqsFlowOldStarvation != null) {
      $result.deqsFlowOldStarvation = deqsFlowOldStarvation;
    }
    if (deqsDropped != null) {
      $result.deqsDropped = deqsDropped;
    }
    return $result;
  }
  WifiClient_FqcodelInfo._() : super();
  factory WifiClient_FqcodelInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_FqcodelInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiClient.FqcodelInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'enqsHiPrio', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'enqsFqcodel', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'enqsNew', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'enqsOld', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'enqsDropped', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'deqsNew', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'deqsOld', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'deqsFlowNew', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'deqsFlowOldDeficit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'deqsFlowOldStarvation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'deqsDropped', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_FqcodelInfo clone() => WifiClient_FqcodelInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_FqcodelInfo copyWith(void Function(WifiClient_FqcodelInfo) updates) => super.copyWith((message) => updates(message as WifiClient_FqcodelInfo)) as WifiClient_FqcodelInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiClient_FqcodelInfo create() => WifiClient_FqcodelInfo._();
  WifiClient_FqcodelInfo createEmptyInstance() => create();
  static $pb.PbList<WifiClient_FqcodelInfo> createRepeated() => $pb.PbList<WifiClient_FqcodelInfo>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_FqcodelInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_FqcodelInfo>(create);
  static WifiClient_FqcodelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get enqsHiPrio => $_getI64(0);
  @$pb.TagNumber(1)
  set enqsHiPrio($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnqsHiPrio() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnqsHiPrio() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get enqsFqcodel => $_getI64(1);
  @$pb.TagNumber(2)
  set enqsFqcodel($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnqsFqcodel() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnqsFqcodel() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get enqsNew => $_getI64(2);
  @$pb.TagNumber(3)
  set enqsNew($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnqsNew() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnqsNew() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get enqsOld => $_getI64(3);
  @$pb.TagNumber(4)
  set enqsOld($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnqsOld() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnqsOld() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get enqsDropped => $_getI64(4);
  @$pb.TagNumber(5)
  set enqsDropped($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnqsDropped() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnqsDropped() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get deqsNew => $_getI64(5);
  @$pb.TagNumber(6)
  set deqsNew($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeqsNew() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeqsNew() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get deqsOld => $_getI64(6);
  @$pb.TagNumber(7)
  set deqsOld($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeqsOld() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeqsOld() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get deqsFlowNew => $_getI64(7);
  @$pb.TagNumber(8)
  set deqsFlowNew($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeqsFlowNew() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeqsFlowNew() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get deqsFlowOldDeficit => $_getI64(8);
  @$pb.TagNumber(9)
  set deqsFlowOldDeficit($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDeqsFlowOldDeficit() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeqsFlowOldDeficit() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get deqsFlowOldStarvation => $_getI64(9);
  @$pb.TagNumber(10)
  set deqsFlowOldStarvation($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeqsFlowOldStarvation() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeqsFlowOldStarvation() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get deqsDropped => $_getI64(10);
  @$pb.TagNumber(11)
  set deqsDropped($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeqsDropped() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeqsDropped() => clearField(11);
}

class WifiClient_PingMetrics extends $pb.GeneratedMessage {
  factory WifiClient_PingMetrics({
    $core.bool? inUnhappyHour2s,
    $core.bool? inUnhappyHour5s,
    $core.double? dropRate5m,
    $core.double? latency5m,
  }) {
    final $result = create();
    if (inUnhappyHour2s != null) {
      $result.inUnhappyHour2s = inUnhappyHour2s;
    }
    if (inUnhappyHour5s != null) {
      $result.inUnhappyHour5s = inUnhappyHour5s;
    }
    if (dropRate5m != null) {
      $result.dropRate5m = dropRate5m;
    }
    if (latency5m != null) {
      $result.latency5m = latency5m;
    }
    return $result;
  }
  WifiClient_PingMetrics._() : super();
  factory WifiClient_PingMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_PingMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiClient.PingMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'inUnhappyHour2s', protoName: 'in_unhappy_hour_2s')
    ..aOB(2, _omitFieldNames ? '' : 'inUnhappyHour5s', protoName: 'in_unhappy_hour_5s')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'dropRate5m', $pb.PbFieldType.OF, protoName: 'drop_rate_5m')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'latency5m', $pb.PbFieldType.OF, protoName: 'latency_5m')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics clone() => WifiClient_PingMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics copyWith(void Function(WifiClient_PingMetrics) updates) => super.copyWith((message) => updates(message as WifiClient_PingMetrics)) as WifiClient_PingMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiClient_PingMetrics create() => WifiClient_PingMetrics._();
  WifiClient_PingMetrics createEmptyInstance() => create();
  static $pb.PbList<WifiClient_PingMetrics> createRepeated() => $pb.PbList<WifiClient_PingMetrics>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_PingMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_PingMetrics>(create);
  static WifiClient_PingMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inUnhappyHour2s => $_getBF(0);
  @$pb.TagNumber(1)
  set inUnhappyHour2s($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInUnhappyHour2s() => $_has(0);
  @$pb.TagNumber(1)
  void clearInUnhappyHour2s() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get inUnhappyHour5s => $_getBF(1);
  @$pb.TagNumber(2)
  set inUnhappyHour5s($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInUnhappyHour5s() => $_has(1);
  @$pb.TagNumber(2)
  void clearInUnhappyHour5s() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get dropRate5m => $_getN(2);
  @$pb.TagNumber(3)
  set dropRate5m($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDropRate5m() => $_has(2);
  @$pb.TagNumber(3)
  void clearDropRate5m() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get latency5m => $_getN(3);
  @$pb.TagNumber(4)
  set latency5m($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLatency5m() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatency5m() => clearField(4);
}

class WifiClient_RxStats extends $pb.GeneratedMessage {
  factory WifiClient_RxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? countErrors,
    $core.int? nss,
    $core.int? mcs,
    $core.int? bandwidth,
    $core.int? guardNs,
    $core.int? rateMbps,
    $core.double? airtimeFractionLast1s,
    $core.int? sampledPackets,
    $core.int? sampledPacketsRetried,
    $core.int? sampledPacketsDropped,
    $core.int? phyMode,
    $core.double? rateMbpsLast30s,
  }) {
    final $result = create();
    if (bytes != null) {
      $result.bytes = bytes;
    }
    if (countErrors != null) {
      $result.countErrors = countErrors;
    }
    if (nss != null) {
      $result.nss = nss;
    }
    if (mcs != null) {
      $result.mcs = mcs;
    }
    if (bandwidth != null) {
      $result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      $result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      $result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      $result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (sampledPackets != null) {
      $result.sampledPackets = sampledPackets;
    }
    if (sampledPacketsRetried != null) {
      $result.sampledPacketsRetried = sampledPacketsRetried;
    }
    if (sampledPacketsDropped != null) {
      $result.sampledPacketsDropped = sampledPacketsDropped;
    }
    if (phyMode != null) {
      $result.phyMode = phyMode;
    }
    if (rateMbpsLast30s != null) {
      $result.rateMbpsLast30s = rateMbpsLast30s;
    }
    return $result;
  }
  WifiClient_RxStats._() : super();
  factory WifiClient_RxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_RxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiClient.RxStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'countErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'sampledPackets', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'sampledPacketsRetried', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'sampledPacketsDropped', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'rateMbpsLast30s', $pb.PbFieldType.OF, protoName: 'rate_mbps_last_30s')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats clone() => WifiClient_RxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats copyWith(void Function(WifiClient_RxStats) updates) => super.copyWith((message) => updates(message as WifiClient_RxStats)) as WifiClient_RxStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiClient_RxStats create() => WifiClient_RxStats._();
  WifiClient_RxStats createEmptyInstance() => create();
  static $pb.PbList<WifiClient_RxStats> createRepeated() => $pb.PbList<WifiClient_RxStats>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_RxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_RxStats>(create);
  static WifiClient_RxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get countErrors => $_getI64(1);
  @$pb.TagNumber(2)
  set countErrors($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountErrors() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountErrors() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nss => $_getIZ(2);
  @$pb.TagNumber(3)
  set nss($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNss() => $_has(2);
  @$pb.TagNumber(3)
  void clearNss() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get mcs => $_getIZ(3);
  @$pb.TagNumber(5)
  set mcs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMcs() => $_has(3);
  @$pb.TagNumber(5)
  void clearMcs() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get bandwidth => $_getIZ(4);
  @$pb.TagNumber(6)
  set bandwidth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBandwidth() => $_has(4);
  @$pb.TagNumber(6)
  void clearBandwidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get guardNs => $_getIZ(5);
  @$pb.TagNumber(7)
  set guardNs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasGuardNs() => $_has(5);
  @$pb.TagNumber(7)
  void clearGuardNs() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rateMbps => $_getIZ(6);
  @$pb.TagNumber(8)
  set rateMbps($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasRateMbps() => $_has(6);
  @$pb.TagNumber(8)
  void clearRateMbps() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get airtimeFractionLast1s => $_getN(7);
  @$pb.TagNumber(9)
  set airtimeFractionLast1s($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAirtimeFractionLast1s() => $_has(7);
  @$pb.TagNumber(9)
  void clearAirtimeFractionLast1s() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get sampledPackets => $_getIZ(8);
  @$pb.TagNumber(10)
  set sampledPackets($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasSampledPackets() => $_has(8);
  @$pb.TagNumber(10)
  void clearSampledPackets() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sampledPacketsRetried => $_getIZ(9);
  @$pb.TagNumber(11)
  set sampledPacketsRetried($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSampledPacketsRetried() => $_has(9);
  @$pb.TagNumber(11)
  void clearSampledPacketsRetried() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get sampledPacketsDropped => $_getIZ(10);
  @$pb.TagNumber(12)
  set sampledPacketsDropped($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasSampledPacketsDropped() => $_has(10);
  @$pb.TagNumber(12)
  void clearSampledPacketsDropped() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get phyMode => $_getIZ(11);
  @$pb.TagNumber(13)
  set phyMode($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhyMode() => $_has(11);
  @$pb.TagNumber(13)
  void clearPhyMode() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get rateMbpsLast30s => $_getN(12);
  @$pb.TagNumber(14)
  set rateMbpsLast30s($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasRateMbpsLast30s() => $_has(12);
  @$pb.TagNumber(14)
  void clearRateMbpsLast30s() => clearField(14);
}

class WifiClient_TxStats extends $pb.GeneratedMessage {
  factory WifiClient_TxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? successBytes,
    $core.int? nss,
    $core.int? mcs,
    $core.int? bandwidth,
    $core.int? guardNs,
    $core.int? rateMbps,
    $core.double? airtimeFractionLast1s,
    $core.int? phyMode,
    $core.double? rateMbpsLast30s,
  }) {
    final $result = create();
    if (bytes != null) {
      $result.bytes = bytes;
    }
    if (successBytes != null) {
      $result.successBytes = successBytes;
    }
    if (nss != null) {
      $result.nss = nss;
    }
    if (mcs != null) {
      $result.mcs = mcs;
    }
    if (bandwidth != null) {
      $result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      $result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      $result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      $result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (phyMode != null) {
      $result.phyMode = phyMode;
    }
    if (rateMbpsLast30s != null) {
      $result.rateMbpsLast30s = rateMbpsLast30s;
    }
    return $result;
  }
  WifiClient_TxStats._() : super();
  factory WifiClient_TxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_TxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiClient.TxStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'successBytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'rateMbpsLast30s', $pb.PbFieldType.OF, protoName: 'rate_mbps_last_30s')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats clone() => WifiClient_TxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats copyWith(void Function(WifiClient_TxStats) updates) => super.copyWith((message) => updates(message as WifiClient_TxStats)) as WifiClient_TxStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiClient_TxStats create() => WifiClient_TxStats._();
  WifiClient_TxStats createEmptyInstance() => create();
  static $pb.PbList<WifiClient_TxStats> createRepeated() => $pb.PbList<WifiClient_TxStats>();
  @$core.pragma('dart2js:noInline')
  static WifiClient_TxStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient_TxStats>(create);
  static WifiClient_TxStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bytes => $_getI64(0);
  @$pb.TagNumber(1)
  set bytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get successBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set successBytes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccessBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccessBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nss => $_getIZ(2);
  @$pb.TagNumber(3)
  set nss($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNss() => $_has(2);
  @$pb.TagNumber(3)
  void clearNss() => clearField(3);

  @$pb.TagNumber(5)
  $core.int get mcs => $_getIZ(3);
  @$pb.TagNumber(5)
  set mcs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMcs() => $_has(3);
  @$pb.TagNumber(5)
  void clearMcs() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get bandwidth => $_getIZ(4);
  @$pb.TagNumber(6)
  set bandwidth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBandwidth() => $_has(4);
  @$pb.TagNumber(6)
  void clearBandwidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get guardNs => $_getIZ(5);
  @$pb.TagNumber(7)
  set guardNs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasGuardNs() => $_has(5);
  @$pb.TagNumber(7)
  void clearGuardNs() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rateMbps => $_getIZ(6);
  @$pb.TagNumber(8)
  set rateMbps($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasRateMbps() => $_has(6);
  @$pb.TagNumber(8)
  void clearRateMbps() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get airtimeFractionLast1s => $_getN(7);
  @$pb.TagNumber(9)
  set airtimeFractionLast1s($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAirtimeFractionLast1s() => $_has(7);
  @$pb.TagNumber(9)
  void clearAirtimeFractionLast1s() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get phyMode => $_getIZ(8);
  @$pb.TagNumber(10)
  set phyMode($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasPhyMode() => $_has(8);
  @$pb.TagNumber(10)
  void clearPhyMode() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get rateMbpsLast30s => $_getN(9);
  @$pb.TagNumber(11)
  set rateMbpsLast30s($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasRateMbpsLast30s() => $_has(9);
  @$pb.TagNumber(11)
  void clearRateMbpsLast30s() => clearField(11);
}

/// SpaceX.API.Device.WifiClient is a message:
class WifiClient extends $pb.GeneratedMessage {
  factory WifiClient({
    $core.String? name,
    $core.String? macAddress,
    $core.String? ipAddress,
    $core.double? signalStrength,
    WifiClient_RxStats? rxStats,
    WifiClient_TxStats? txStats,
    $core.int? associatedTimeS,
    $core.String? modeStr,
    WifiClient_Interface? iface,
    $core.double? snr,
    $core.int? psmode,
    $core.int? channelWidth,
    $core.String? upstreamMacAddress,
    WifiClient_Role? role,
    $core.String? deviceId,
    $core.int? swqChecks,
    $core.int? swqChecksNonEmpty,
    $core.int? mibSteerState,
    $core.int? mibSteerMethod,
    $core.int? btmRequests,
    $core.int? btmRequestsSuccess,
    $core.String? domain,
    $core.bool? dot11vSupport,
    $core.String? ifaceName,
    $core.int? steerReqSuccessLast1h,
    $core.int? steerReqFailLast1h,
    $core.int? steerReqFailAndDissocLast1h,
    $core.int? steerState,
    $core.String? givenName,
    $core.int? hopsFromController,
    $core.double? estTxRateMbpsFromController,
    $core.double? estRxRateMbpsFromController,
    $core.String? hardwareVersion,
    $core.String? softwareVersion,
    $core.int? apiVersion,
    WifiClient_PingMetrics? pingMetrics,
    $core.Iterable<$core.String>? ipv6Addresses,
    $core.bool? blocked,
    $core.int? clientId,
    WifiClient_FqcodelInfo? fqcodelInfo,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (signalStrength != null) {
      $result.signalStrength = signalStrength;
    }
    if (rxStats != null) {
      $result.rxStats = rxStats;
    }
    if (txStats != null) {
      $result.txStats = txStats;
    }
    if (associatedTimeS != null) {
      $result.associatedTimeS = associatedTimeS;
    }
    if (modeStr != null) {
      $result.modeStr = modeStr;
    }
    if (iface != null) {
      $result.iface = iface;
    }
    if (snr != null) {
      $result.snr = snr;
    }
    if (psmode != null) {
      $result.psmode = psmode;
    }
    if (channelWidth != null) {
      $result.channelWidth = channelWidth;
    }
    if (upstreamMacAddress != null) {
      $result.upstreamMacAddress = upstreamMacAddress;
    }
    if (role != null) {
      $result.role = role;
    }
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (swqChecks != null) {
      $result.swqChecks = swqChecks;
    }
    if (swqChecksNonEmpty != null) {
      $result.swqChecksNonEmpty = swqChecksNonEmpty;
    }
    if (mibSteerState != null) {
      $result.mibSteerState = mibSteerState;
    }
    if (mibSteerMethod != null) {
      $result.mibSteerMethod = mibSteerMethod;
    }
    if (btmRequests != null) {
      $result.btmRequests = btmRequests;
    }
    if (btmRequestsSuccess != null) {
      $result.btmRequestsSuccess = btmRequestsSuccess;
    }
    if (domain != null) {
      $result.domain = domain;
    }
    if (dot11vSupport != null) {
      $result.dot11vSupport = dot11vSupport;
    }
    if (ifaceName != null) {
      $result.ifaceName = ifaceName;
    }
    if (steerReqSuccessLast1h != null) {
      $result.steerReqSuccessLast1h = steerReqSuccessLast1h;
    }
    if (steerReqFailLast1h != null) {
      $result.steerReqFailLast1h = steerReqFailLast1h;
    }
    if (steerReqFailAndDissocLast1h != null) {
      $result.steerReqFailAndDissocLast1h = steerReqFailAndDissocLast1h;
    }
    if (steerState != null) {
      $result.steerState = steerState;
    }
    if (givenName != null) {
      $result.givenName = givenName;
    }
    if (hopsFromController != null) {
      $result.hopsFromController = hopsFromController;
    }
    if (estTxRateMbpsFromController != null) {
      $result.estTxRateMbpsFromController = estTxRateMbpsFromController;
    }
    if (estRxRateMbpsFromController != null) {
      $result.estRxRateMbpsFromController = estRxRateMbpsFromController;
    }
    if (hardwareVersion != null) {
      $result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      $result.softwareVersion = softwareVersion;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (pingMetrics != null) {
      $result.pingMetrics = pingMetrics;
    }
    if (ipv6Addresses != null) {
      $result.ipv6Addresses.addAll(ipv6Addresses);
    }
    if (blocked != null) {
      $result.blocked = blocked;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (fqcodelInfo != null) {
      $result.fqcodelInfo = fqcodelInfo;
    }
    return $result;
  }
  WifiClient._() : super();
  factory WifiClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiClient', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'macAddress')
    ..aOS(3, _omitFieldNames ? '' : 'ipAddress')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'signalStrength', $pb.PbFieldType.OF)
    ..aOM<WifiClient_RxStats>(5, _omitFieldNames ? '' : 'rxStats', subBuilder: WifiClient_RxStats.create)
    ..aOM<WifiClient_TxStats>(6, _omitFieldNames ? '' : 'txStats', subBuilder: WifiClient_TxStats.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'associatedTimeS', $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'modeStr')
    ..e<WifiClient_Interface>(9, _omitFieldNames ? '' : 'iface', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Interface.UNKNOWN, valueOf: WifiClient_Interface.valueOf, enumValues: WifiClient_Interface.values)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'snr', $pb.PbFieldType.OF)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'psmode', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'channelWidth', $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'upstreamMacAddress')
    ..e<WifiClient_Role>(14, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Role.ROLE_UNKNOWN, valueOf: WifiClient_Role.valueOf, enumValues: WifiClient_Role.values)
    ..aOS(15, _omitFieldNames ? '' : 'deviceId')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'swqChecks', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'swqChecksNonEmpty', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, _omitFieldNames ? '' : 'mibSteerState', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'mibSteerMethod', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'btmRequests', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'btmRequestsSuccess', $pb.PbFieldType.OU3)
    ..aOS(22, _omitFieldNames ? '' : 'domain')
    ..aOB(23, _omitFieldNames ? '' : 'dot11vSupport')
    ..aOS(26, _omitFieldNames ? '' : 'ifaceName')
    ..a<$core.int>(27, _omitFieldNames ? '' : 'steerReqSuccessLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_success_last_1h')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'steerReqFailLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_last_1h')
    ..a<$core.int>(29, _omitFieldNames ? '' : 'steerReqFailAndDissocLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_and_dissoc_last_1h')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'steerState', $pb.PbFieldType.OU3)
    ..aOS(31, _omitFieldNames ? '' : 'givenName')
    ..a<$core.int>(32, _omitFieldNames ? '' : 'hopsFromController', $pb.PbFieldType.OU3)
    ..a<$core.double>(33, _omitFieldNames ? '' : 'estTxRateMbpsFromController', $pb.PbFieldType.OF)
    ..a<$core.double>(34, _omitFieldNames ? '' : 'estRxRateMbpsFromController', $pb.PbFieldType.OF)
    ..aOS(37, _omitFieldNames ? '' : 'hardwareVersion')
    ..aOS(38, _omitFieldNames ? '' : 'softwareVersion')
    ..a<$core.int>(39, _omitFieldNames ? '' : 'apiVersion', $pb.PbFieldType.OU3)
    ..aOM<WifiClient_PingMetrics>(40, _omitFieldNames ? '' : 'pingMetrics', subBuilder: WifiClient_PingMetrics.create)
    ..pPS(41, _omitFieldNames ? '' : 'ipv6Addresses')
    ..aOB(42, _omitFieldNames ? '' : 'blocked')
    ..a<$core.int>(43, _omitFieldNames ? '' : 'clientId', $pb.PbFieldType.OU3)
    ..aOM<WifiClient_FqcodelInfo>(44, _omitFieldNames ? '' : 'fqcodelInfo', subBuilder: WifiClient_FqcodelInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient clone() => WifiClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient copyWith(void Function(WifiClient) updates) => super.copyWith((message) => updates(message as WifiClient)) as WifiClient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiClient create() => WifiClient._();
  WifiClient createEmptyInstance() => create();
  static $pb.PbList<WifiClient> createRepeated() => $pb.PbList<WifiClient>();
  @$core.pragma('dart2js:noInline')
  static WifiClient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiClient>(create);
  static WifiClient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ipAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set ipAddress($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get signalStrength => $_getN(3);
  @$pb.TagNumber(4)
  set signalStrength($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignalStrength() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignalStrength() => clearField(4);

  @$pb.TagNumber(5)
  WifiClient_RxStats get rxStats => $_getN(4);
  @$pb.TagNumber(5)
  set rxStats(WifiClient_RxStats v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRxStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearRxStats() => clearField(5);
  @$pb.TagNumber(5)
  WifiClient_RxStats ensureRxStats() => $_ensure(4);

  @$pb.TagNumber(6)
  WifiClient_TxStats get txStats => $_getN(5);
  @$pb.TagNumber(6)
  set txStats(WifiClient_TxStats v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxStats() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxStats() => clearField(6);
  @$pb.TagNumber(6)
  WifiClient_TxStats ensureTxStats() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get associatedTimeS => $_getIZ(6);
  @$pb.TagNumber(7)
  set associatedTimeS($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssociatedTimeS() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssociatedTimeS() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get modeStr => $_getSZ(7);
  @$pb.TagNumber(8)
  set modeStr($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasModeStr() => $_has(7);
  @$pb.TagNumber(8)
  void clearModeStr() => clearField(8);

  @$pb.TagNumber(9)
  WifiClient_Interface get iface => $_getN(8);
  @$pb.TagNumber(9)
  set iface(WifiClient_Interface v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasIface() => $_has(8);
  @$pb.TagNumber(9)
  void clearIface() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get snr => $_getN(9);
  @$pb.TagNumber(10)
  set snr($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSnr() => $_has(9);
  @$pb.TagNumber(10)
  void clearSnr() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get psmode => $_getIZ(10);
  @$pb.TagNumber(11)
  set psmode($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPsmode() => $_has(10);
  @$pb.TagNumber(11)
  void clearPsmode() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get channelWidth => $_getIZ(11);
  @$pb.TagNumber(12)
  set channelWidth($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasChannelWidth() => $_has(11);
  @$pb.TagNumber(12)
  void clearChannelWidth() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get upstreamMacAddress => $_getSZ(12);
  @$pb.TagNumber(13)
  set upstreamMacAddress($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpstreamMacAddress() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpstreamMacAddress() => clearField(13);

  @$pb.TagNumber(14)
  WifiClient_Role get role => $_getN(13);
  @$pb.TagNumber(14)
  set role(WifiClient_Role v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasRole() => $_has(13);
  @$pb.TagNumber(14)
  void clearRole() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get deviceId => $_getSZ(14);
  @$pb.TagNumber(15)
  set deviceId($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceId() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeviceId() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get swqChecks => $_getIZ(15);
  @$pb.TagNumber(16)
  set swqChecks($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSwqChecks() => $_has(15);
  @$pb.TagNumber(16)
  void clearSwqChecks() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get swqChecksNonEmpty => $_getIZ(16);
  @$pb.TagNumber(17)
  set swqChecksNonEmpty($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasSwqChecksNonEmpty() => $_has(16);
  @$pb.TagNumber(17)
  void clearSwqChecksNonEmpty() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get mibSteerState => $_getIZ(17);
  @$pb.TagNumber(18)
  set mibSteerState($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasMibSteerState() => $_has(17);
  @$pb.TagNumber(18)
  void clearMibSteerState() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get mibSteerMethod => $_getIZ(18);
  @$pb.TagNumber(19)
  set mibSteerMethod($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMibSteerMethod() => $_has(18);
  @$pb.TagNumber(19)
  void clearMibSteerMethod() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get btmRequests => $_getIZ(19);
  @$pb.TagNumber(20)
  set btmRequests($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBtmRequests() => $_has(19);
  @$pb.TagNumber(20)
  void clearBtmRequests() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get btmRequestsSuccess => $_getIZ(20);
  @$pb.TagNumber(21)
  set btmRequestsSuccess($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasBtmRequestsSuccess() => $_has(20);
  @$pb.TagNumber(21)
  void clearBtmRequestsSuccess() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get domain => $_getSZ(21);
  @$pb.TagNumber(22)
  set domain($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasDomain() => $_has(21);
  @$pb.TagNumber(22)
  void clearDomain() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get dot11vSupport => $_getBF(22);
  @$pb.TagNumber(23)
  set dot11vSupport($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasDot11vSupport() => $_has(22);
  @$pb.TagNumber(23)
  void clearDot11vSupport() => clearField(23);

  @$pb.TagNumber(26)
  $core.String get ifaceName => $_getSZ(23);
  @$pb.TagNumber(26)
  set ifaceName($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(26)
  $core.bool hasIfaceName() => $_has(23);
  @$pb.TagNumber(26)
  void clearIfaceName() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get steerReqSuccessLast1h => $_getIZ(24);
  @$pb.TagNumber(27)
  set steerReqSuccessLast1h($core.int v) { $_setUnsignedInt32(24, v); }
  @$pb.TagNumber(27)
  $core.bool hasSteerReqSuccessLast1h() => $_has(24);
  @$pb.TagNumber(27)
  void clearSteerReqSuccessLast1h() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get steerReqFailLast1h => $_getIZ(25);
  @$pb.TagNumber(28)
  set steerReqFailLast1h($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(28)
  $core.bool hasSteerReqFailLast1h() => $_has(25);
  @$pb.TagNumber(28)
  void clearSteerReqFailLast1h() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get steerReqFailAndDissocLast1h => $_getIZ(26);
  @$pb.TagNumber(29)
  set steerReqFailAndDissocLast1h($core.int v) { $_setUnsignedInt32(26, v); }
  @$pb.TagNumber(29)
  $core.bool hasSteerReqFailAndDissocLast1h() => $_has(26);
  @$pb.TagNumber(29)
  void clearSteerReqFailAndDissocLast1h() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get steerState => $_getIZ(27);
  @$pb.TagNumber(30)
  set steerState($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(30)
  $core.bool hasSteerState() => $_has(27);
  @$pb.TagNumber(30)
  void clearSteerState() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get givenName => $_getSZ(28);
  @$pb.TagNumber(31)
  set givenName($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(31)
  $core.bool hasGivenName() => $_has(28);
  @$pb.TagNumber(31)
  void clearGivenName() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get hopsFromController => $_getIZ(29);
  @$pb.TagNumber(32)
  set hopsFromController($core.int v) { $_setUnsignedInt32(29, v); }
  @$pb.TagNumber(32)
  $core.bool hasHopsFromController() => $_has(29);
  @$pb.TagNumber(32)
  void clearHopsFromController() => clearField(32);

  @$pb.TagNumber(33)
  $core.double get estTxRateMbpsFromController => $_getN(30);
  @$pb.TagNumber(33)
  set estTxRateMbpsFromController($core.double v) { $_setFloat(30, v); }
  @$pb.TagNumber(33)
  $core.bool hasEstTxRateMbpsFromController() => $_has(30);
  @$pb.TagNumber(33)
  void clearEstTxRateMbpsFromController() => clearField(33);

  @$pb.TagNumber(34)
  $core.double get estRxRateMbpsFromController => $_getN(31);
  @$pb.TagNumber(34)
  set estRxRateMbpsFromController($core.double v) { $_setFloat(31, v); }
  @$pb.TagNumber(34)
  $core.bool hasEstRxRateMbpsFromController() => $_has(31);
  @$pb.TagNumber(34)
  void clearEstRxRateMbpsFromController() => clearField(34);

  @$pb.TagNumber(37)
  $core.String get hardwareVersion => $_getSZ(32);
  @$pb.TagNumber(37)
  set hardwareVersion($core.String v) { $_setString(32, v); }
  @$pb.TagNumber(37)
  $core.bool hasHardwareVersion() => $_has(32);
  @$pb.TagNumber(37)
  void clearHardwareVersion() => clearField(37);

  @$pb.TagNumber(38)
  $core.String get softwareVersion => $_getSZ(33);
  @$pb.TagNumber(38)
  set softwareVersion($core.String v) { $_setString(33, v); }
  @$pb.TagNumber(38)
  $core.bool hasSoftwareVersion() => $_has(33);
  @$pb.TagNumber(38)
  void clearSoftwareVersion() => clearField(38);

  @$pb.TagNumber(39)
  $core.int get apiVersion => $_getIZ(34);
  @$pb.TagNumber(39)
  set apiVersion($core.int v) { $_setUnsignedInt32(34, v); }
  @$pb.TagNumber(39)
  $core.bool hasApiVersion() => $_has(34);
  @$pb.TagNumber(39)
  void clearApiVersion() => clearField(39);

  @$pb.TagNumber(40)
  WifiClient_PingMetrics get pingMetrics => $_getN(35);
  @$pb.TagNumber(40)
  set pingMetrics(WifiClient_PingMetrics v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasPingMetrics() => $_has(35);
  @$pb.TagNumber(40)
  void clearPingMetrics() => clearField(40);
  @$pb.TagNumber(40)
  WifiClient_PingMetrics ensurePingMetrics() => $_ensure(35);

  @$pb.TagNumber(41)
  $core.List<$core.String> get ipv6Addresses => $_getList(36);

  @$pb.TagNumber(42)
  $core.bool get blocked => $_getBF(37);
  @$pb.TagNumber(42)
  set blocked($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(42)
  $core.bool hasBlocked() => $_has(37);
  @$pb.TagNumber(42)
  void clearBlocked() => clearField(42);

  @$pb.TagNumber(43)
  $core.int get clientId => $_getIZ(38);
  @$pb.TagNumber(43)
  set clientId($core.int v) { $_setUnsignedInt32(38, v); }
  @$pb.TagNumber(43)
  $core.bool hasClientId() => $_has(38);
  @$pb.TagNumber(43)
  void clearClientId() => clearField(43);

  @$pb.TagNumber(44)
  WifiClient_FqcodelInfo get fqcodelInfo => $_getN(39);
  @$pb.TagNumber(44)
  set fqcodelInfo(WifiClient_FqcodelInfo v) { setField(44, v); }
  @$pb.TagNumber(44)
  $core.bool hasFqcodelInfo() => $_has(39);
  @$pb.TagNumber(44)
  void clearFqcodelInfo() => clearField(44);
  @$pb.TagNumber(44)
  WifiClient_FqcodelInfo ensureFqcodelInfo() => $_ensure(39);
}

/// SpaceX.API.Device.WifiSetupResponse is a message:
class WifiSetupResponse extends $pb.GeneratedMessage {
  factory WifiSetupResponse() => create();
  WifiSetupResponse._() : super();
  factory WifiSetupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetupResponse clone() => WifiSetupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetupResponse copyWith(void Function(WifiSetupResponse) updates) => super.copyWith((message) => updates(message as WifiSetupResponse)) as WifiSetupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetupResponse create() => WifiSetupResponse._();
  WifiSetupResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetupResponse> createRepeated() => $pb.PbList<WifiSetupResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetupResponse>(create);
  static WifiSetupResponse? _defaultInstance;
}

/// SpaceX.API.Device.WifiGetStatusResponse is a message:
class WifiGetStatusResponse extends $pb.GeneratedMessage {
  factory WifiGetStatusResponse({
    $core.bool? captivePortalEnabled,
    DeviceInfo? deviceInfo,
    DeviceState? deviceState,
    $core.String? ipv4WanAddress,
    $core.double? pingDropRate,
    $core.double? pingLatencyMs,
  @$core.Deprecated('This field is deprecated.')
    WifiBandStatus? rf2ghzStatus,
  @$core.Deprecated('This field is deprecated.')
    WifiBandStatus? rf5ghzStatus,
    WifiAlerts? alerts,
    $core.bool? isAviation,
    $core.double? dishPingDropRate,
    $core.double? dishPingLatencyMs,
    $core.double? popPingDropRate,
    $core.double? popPingLatencyMs,
    $core.bool? isAviationConformed,
    $core.Iterable<$core.String>? ipv6WanAddresses,
    $core.double? dishPingDropRate5m,
    $core.Iterable<DhcpServer>? dhcpServers,
    $core.double? popPingDropRate5m,
    $core.double? pingDropRate5m,
    WifiConfig? config,
    $core.Iterable<WifiClient>? clients,
    $core.bool? hasClientIndex,
    $core.int? clientIndex_3002,
    RadiusStatsMap? radiusStats,
  }) {
    final $result = create();
    if (captivePortalEnabled != null) {
      $result.captivePortalEnabled = captivePortalEnabled;
    }
    if (deviceInfo != null) {
      $result.deviceInfo = deviceInfo;
    }
    if (deviceState != null) {
      $result.deviceState = deviceState;
    }
    if (ipv4WanAddress != null) {
      $result.ipv4WanAddress = ipv4WanAddress;
    }
    if (pingDropRate != null) {
      $result.pingDropRate = pingDropRate;
    }
    if (pingLatencyMs != null) {
      $result.pingLatencyMs = pingLatencyMs;
    }
    if (rf2ghzStatus != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.rf2ghzStatus = rf2ghzStatus;
    }
    if (rf5ghzStatus != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.rf5ghzStatus = rf5ghzStatus;
    }
    if (alerts != null) {
      $result.alerts = alerts;
    }
    if (isAviation != null) {
      $result.isAviation = isAviation;
    }
    if (dishPingDropRate != null) {
      $result.dishPingDropRate = dishPingDropRate;
    }
    if (dishPingLatencyMs != null) {
      $result.dishPingLatencyMs = dishPingLatencyMs;
    }
    if (popPingDropRate != null) {
      $result.popPingDropRate = popPingDropRate;
    }
    if (popPingLatencyMs != null) {
      $result.popPingLatencyMs = popPingLatencyMs;
    }
    if (isAviationConformed != null) {
      $result.isAviationConformed = isAviationConformed;
    }
    if (ipv6WanAddresses != null) {
      $result.ipv6WanAddresses.addAll(ipv6WanAddresses);
    }
    if (dishPingDropRate5m != null) {
      $result.dishPingDropRate5m = dishPingDropRate5m;
    }
    if (dhcpServers != null) {
      $result.dhcpServers.addAll(dhcpServers);
    }
    if (popPingDropRate5m != null) {
      $result.popPingDropRate5m = popPingDropRate5m;
    }
    if (pingDropRate5m != null) {
      $result.pingDropRate5m = pingDropRate5m;
    }
    if (config != null) {
      $result.config = config;
    }
    if (clients != null) {
      $result.clients.addAll(clients);
    }
    if (hasClientIndex != null) {
      $result.hasClientIndex = hasClientIndex;
    }
    if (clientIndex_3002 != null) {
      $result.clientIndex_3002 = clientIndex_3002;
    }
    if (radiusStats != null) {
      $result.radiusStats = radiusStats;
    }
    return $result;
  }
  WifiGetStatusResponse._() : super();
  factory WifiGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'captivePortalEnabled')
    ..aOM<DeviceInfo>(3, _omitFieldNames ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..aOM<DeviceState>(4, _omitFieldNames ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..aOS(1003, _omitFieldNames ? '' : 'ipv4WanAddress')
    ..a<$core.double>(1004, _omitFieldNames ? '' : 'pingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1005, _omitFieldNames ? '' : 'pingLatencyMs', $pb.PbFieldType.OF)
    ..aOM<WifiBandStatus>(1008, _omitFieldNames ? '' : 'rf2ghzStatus', protoName: 'rf_2ghz_status', subBuilder: WifiBandStatus.create)
    ..aOM<WifiBandStatus>(1009, _omitFieldNames ? '' : 'rf5ghzStatus', protoName: 'rf_5ghz_status', subBuilder: WifiBandStatus.create)
    ..aOM<WifiAlerts>(1010, _omitFieldNames ? '' : 'alerts', subBuilder: WifiAlerts.create)
    ..aOB(1011, _omitFieldNames ? '' : 'isAviation')
    ..a<$core.double>(1012, _omitFieldNames ? '' : 'dishPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1013, _omitFieldNames ? '' : 'dishPingLatencyMs', $pb.PbFieldType.OF)
    ..a<$core.double>(1014, _omitFieldNames ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1015, _omitFieldNames ? '' : 'popPingLatencyMs', $pb.PbFieldType.OF)
    ..aOB(1016, _omitFieldNames ? '' : 'isAviationConformed')
    ..pPS(1017, _omitFieldNames ? '' : 'ipv6WanAddresses')
    ..a<$core.double>(1018, _omitFieldNames ? '' : 'dishPingDropRate5m', $pb.PbFieldType.OF, protoName: 'dish_ping_drop_rate_5m')
    ..pc<DhcpServer>(1019, _omitFieldNames ? '' : 'dhcpServers', $pb.PbFieldType.PM, subBuilder: DhcpServer.create)
    ..a<$core.double>(1020, _omitFieldNames ? '' : 'popPingDropRate5m', $pb.PbFieldType.OF, protoName: 'pop_ping_drop_rate_5m')
    ..a<$core.double>(1021, _omitFieldNames ? '' : 'pingDropRate5m', $pb.PbFieldType.OF, protoName: 'ping_drop_rate_5m')
    ..aOM<WifiConfig>(2000, _omitFieldNames ? '' : 'config', subBuilder: WifiConfig.create)
    ..pc<WifiClient>(3000, _omitFieldNames ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: WifiClient.create)
    ..aOB(3001, _omitFieldNames ? '' : 'hasClientIndex')
    ..a<$core.int>(3002, _omitFieldNames ? '' : 'clientIndex', $pb.PbFieldType.O3)
    ..aOM<RadiusStatsMap>(3003, _omitFieldNames ? '' : 'radiusStats', subBuilder: RadiusStatsMap.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetStatusResponse clone() => WifiGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetStatusResponse copyWith(void Function(WifiGetStatusResponse) updates) => super.copyWith((message) => updates(message as WifiGetStatusResponse)) as WifiGetStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetStatusResponse create() => WifiGetStatusResponse._();
  WifiGetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetStatusResponse> createRepeated() => $pb.PbList<WifiGetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetStatusResponse>(create);
  static WifiGetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get captivePortalEnabled => $_getBF(0);
  @$pb.TagNumber(1)
  set captivePortalEnabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaptivePortalEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaptivePortalEnabled() => clearField(1);

  @$pb.TagNumber(3)
  DeviceInfo get deviceInfo => $_getN(1);
  @$pb.TagNumber(3)
  set deviceInfo(DeviceInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceInfo() => $_has(1);
  @$pb.TagNumber(3)
  void clearDeviceInfo() => clearField(3);
  @$pb.TagNumber(3)
  DeviceInfo ensureDeviceInfo() => $_ensure(1);

  @$pb.TagNumber(4)
  DeviceState get deviceState => $_getN(2);
  @$pb.TagNumber(4)
  set deviceState(DeviceState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviceState() => $_has(2);
  @$pb.TagNumber(4)
  void clearDeviceState() => clearField(4);
  @$pb.TagNumber(4)
  DeviceState ensureDeviceState() => $_ensure(2);

  @$pb.TagNumber(1003)
  $core.String get ipv4WanAddress => $_getSZ(3);
  @$pb.TagNumber(1003)
  set ipv4WanAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(1003)
  $core.bool hasIpv4WanAddress() => $_has(3);
  @$pb.TagNumber(1003)
  void clearIpv4WanAddress() => clearField(1003);

  @$pb.TagNumber(1004)
  $core.double get pingDropRate => $_getN(4);
  @$pb.TagNumber(1004)
  set pingDropRate($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(1004)
  $core.bool hasPingDropRate() => $_has(4);
  @$pb.TagNumber(1004)
  void clearPingDropRate() => clearField(1004);

  @$pb.TagNumber(1005)
  $core.double get pingLatencyMs => $_getN(5);
  @$pb.TagNumber(1005)
  set pingLatencyMs($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(1005)
  $core.bool hasPingLatencyMs() => $_has(5);
  @$pb.TagNumber(1005)
  void clearPingLatencyMs() => clearField(1005);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1008)
  WifiBandStatus get rf2ghzStatus => $_getN(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1008)
  set rf2ghzStatus(WifiBandStatus v) { setField(1008, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1008)
  $core.bool hasRf2ghzStatus() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1008)
  void clearRf2ghzStatus() => clearField(1008);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1008)
  WifiBandStatus ensureRf2ghzStatus() => $_ensure(6);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1009)
  WifiBandStatus get rf5ghzStatus => $_getN(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1009)
  set rf5ghzStatus(WifiBandStatus v) { setField(1009, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1009)
  $core.bool hasRf5ghzStatus() => $_has(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1009)
  void clearRf5ghzStatus() => clearField(1009);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1009)
  WifiBandStatus ensureRf5ghzStatus() => $_ensure(7);

  @$pb.TagNumber(1010)
  WifiAlerts get alerts => $_getN(8);
  @$pb.TagNumber(1010)
  set alerts(WifiAlerts v) { setField(1010, v); }
  @$pb.TagNumber(1010)
  $core.bool hasAlerts() => $_has(8);
  @$pb.TagNumber(1010)
  void clearAlerts() => clearField(1010);
  @$pb.TagNumber(1010)
  WifiAlerts ensureAlerts() => $_ensure(8);

  @$pb.TagNumber(1011)
  $core.bool get isAviation => $_getBF(9);
  @$pb.TagNumber(1011)
  set isAviation($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(1011)
  $core.bool hasIsAviation() => $_has(9);
  @$pb.TagNumber(1011)
  void clearIsAviation() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.double get dishPingDropRate => $_getN(10);
  @$pb.TagNumber(1012)
  set dishPingDropRate($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(1012)
  $core.bool hasDishPingDropRate() => $_has(10);
  @$pb.TagNumber(1012)
  void clearDishPingDropRate() => clearField(1012);

  @$pb.TagNumber(1013)
  $core.double get dishPingLatencyMs => $_getN(11);
  @$pb.TagNumber(1013)
  set dishPingLatencyMs($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(1013)
  $core.bool hasDishPingLatencyMs() => $_has(11);
  @$pb.TagNumber(1013)
  void clearDishPingLatencyMs() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.double get popPingDropRate => $_getN(12);
  @$pb.TagNumber(1014)
  set popPingDropRate($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(1014)
  $core.bool hasPopPingDropRate() => $_has(12);
  @$pb.TagNumber(1014)
  void clearPopPingDropRate() => clearField(1014);

  @$pb.TagNumber(1015)
  $core.double get popPingLatencyMs => $_getN(13);
  @$pb.TagNumber(1015)
  set popPingLatencyMs($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(1015)
  $core.bool hasPopPingLatencyMs() => $_has(13);
  @$pb.TagNumber(1015)
  void clearPopPingLatencyMs() => clearField(1015);

  @$pb.TagNumber(1016)
  $core.bool get isAviationConformed => $_getBF(14);
  @$pb.TagNumber(1016)
  set isAviationConformed($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(1016)
  $core.bool hasIsAviationConformed() => $_has(14);
  @$pb.TagNumber(1016)
  void clearIsAviationConformed() => clearField(1016);

  @$pb.TagNumber(1017)
  $core.List<$core.String> get ipv6WanAddresses => $_getList(15);

  @$pb.TagNumber(1018)
  $core.double get dishPingDropRate5m => $_getN(16);
  @$pb.TagNumber(1018)
  set dishPingDropRate5m($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(1018)
  $core.bool hasDishPingDropRate5m() => $_has(16);
  @$pb.TagNumber(1018)
  void clearDishPingDropRate5m() => clearField(1018);

  @$pb.TagNumber(1019)
  $core.List<DhcpServer> get dhcpServers => $_getList(17);

  @$pb.TagNumber(1020)
  $core.double get popPingDropRate5m => $_getN(18);
  @$pb.TagNumber(1020)
  set popPingDropRate5m($core.double v) { $_setFloat(18, v); }
  @$pb.TagNumber(1020)
  $core.bool hasPopPingDropRate5m() => $_has(18);
  @$pb.TagNumber(1020)
  void clearPopPingDropRate5m() => clearField(1020);

  @$pb.TagNumber(1021)
  $core.double get pingDropRate5m => $_getN(19);
  @$pb.TagNumber(1021)
  set pingDropRate5m($core.double v) { $_setFloat(19, v); }
  @$pb.TagNumber(1021)
  $core.bool hasPingDropRate5m() => $_has(19);
  @$pb.TagNumber(1021)
  void clearPingDropRate5m() => clearField(1021);

  @$pb.TagNumber(2000)
  WifiConfig get config => $_getN(20);
  @$pb.TagNumber(2000)
  set config(WifiConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(20);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  WifiConfig ensureConfig() => $_ensure(20);

  @$pb.TagNumber(3000)
  $core.List<WifiClient> get clients => $_getList(21);

  @$pb.TagNumber(3001)
  $core.bool get hasClientIndex => $_getBF(22);
  @$pb.TagNumber(3001)
  set hasClientIndex($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(3001)
  $core.bool hasHasClientIndex() => $_has(22);
  @$pb.TagNumber(3001)
  void clearHasClientIndex() => clearField(3001);

  @$pb.TagNumber(3002)
  $core.int get clientIndex_3002 => $_getIZ(23);
  @$pb.TagNumber(3002)
  set clientIndex_3002($core.int v) { $_setSignedInt32(23, v); }
  @$pb.TagNumber(3002)
  $core.bool hasClientIndex_3002() => $_has(23);
  @$pb.TagNumber(3002)
  void clearClientIndex_3002() => clearField(3002);

  @$pb.TagNumber(3003)
  RadiusStatsMap get radiusStats => $_getN(24);
  @$pb.TagNumber(3003)
  set radiusStats(RadiusStatsMap v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasRadiusStats() => $_has(24);
  @$pb.TagNumber(3003)
  void clearRadiusStats() => clearField(3003);
  @$pb.TagNumber(3003)
  RadiusStatsMap ensureRadiusStats() => $_ensure(24);
}

/// SpaceX.API.Device.WifiBandStatus is a message:
class WifiBandStatus extends $pb.GeneratedMessage {
  factory WifiBandStatus({
    $core.double? chanBusyTimeFraction,
    $core.double? txAirTimeFraction,
    $core.double? rxAirTimeFraction,
    $core.double? obssAirTimeFraction,
    $core.double? edccaAirTimeFraction,
  }) {
    final $result = create();
    if (chanBusyTimeFraction != null) {
      $result.chanBusyTimeFraction = chanBusyTimeFraction;
    }
    if (txAirTimeFraction != null) {
      $result.txAirTimeFraction = txAirTimeFraction;
    }
    if (rxAirTimeFraction != null) {
      $result.rxAirTimeFraction = rxAirTimeFraction;
    }
    if (obssAirTimeFraction != null) {
      $result.obssAirTimeFraction = obssAirTimeFraction;
    }
    if (edccaAirTimeFraction != null) {
      $result.edccaAirTimeFraction = edccaAirTimeFraction;
    }
    return $result;
  }
  WifiBandStatus._() : super();
  factory WifiBandStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiBandStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiBandStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'chanBusyTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'txAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rxAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'obssAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'edccaAirTimeFraction', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiBandStatus clone() => WifiBandStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiBandStatus copyWith(void Function(WifiBandStatus) updates) => super.copyWith((message) => updates(message as WifiBandStatus)) as WifiBandStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiBandStatus create() => WifiBandStatus._();
  WifiBandStatus createEmptyInstance() => create();
  static $pb.PbList<WifiBandStatus> createRepeated() => $pb.PbList<WifiBandStatus>();
  @$core.pragma('dart2js:noInline')
  static WifiBandStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiBandStatus>(create);
  static WifiBandStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get chanBusyTimeFraction => $_getN(0);
  @$pb.TagNumber(1)
  set chanBusyTimeFraction($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanBusyTimeFraction() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanBusyTimeFraction() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get txAirTimeFraction => $_getN(1);
  @$pb.TagNumber(2)
  set txAirTimeFraction($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxAirTimeFraction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxAirTimeFraction() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rxAirTimeFraction => $_getN(2);
  @$pb.TagNumber(3)
  set rxAirTimeFraction($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRxAirTimeFraction() => $_has(2);
  @$pb.TagNumber(3)
  void clearRxAirTimeFraction() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get obssAirTimeFraction => $_getN(3);
  @$pb.TagNumber(4)
  set obssAirTimeFraction($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasObssAirTimeFraction() => $_has(3);
  @$pb.TagNumber(4)
  void clearObssAirTimeFraction() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get edccaAirTimeFraction => $_getN(4);
  @$pb.TagNumber(5)
  set edccaAirTimeFraction($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEdccaAirTimeFraction() => $_has(4);
  @$pb.TagNumber(5)
  void clearEdccaAirTimeFraction() => clearField(5);
}

/// SpaceX.API.Device.WifiAlerts is a message:
class WifiAlerts extends $pb.GeneratedMessage {
  factory WifiAlerts({
    $core.bool? thermalThrottle,
    $core.bool? installPending,
    $core.bool? freshlyFused,
    $core.bool? lanEthSlowLink10,
    $core.bool? lanEthSlowLink100,
    $core.bool? wanEthPoorConnection,
    $core.bool? meshTopologyChangingOften,
    $core.bool? meshUnreliableBackhaul,
  }) {
    final $result = create();
    if (thermalThrottle != null) {
      $result.thermalThrottle = thermalThrottle;
    }
    if (installPending != null) {
      $result.installPending = installPending;
    }
    if (freshlyFused != null) {
      $result.freshlyFused = freshlyFused;
    }
    if (lanEthSlowLink10 != null) {
      $result.lanEthSlowLink10 = lanEthSlowLink10;
    }
    if (lanEthSlowLink100 != null) {
      $result.lanEthSlowLink100 = lanEthSlowLink100;
    }
    if (wanEthPoorConnection != null) {
      $result.wanEthPoorConnection = wanEthPoorConnection;
    }
    if (meshTopologyChangingOften != null) {
      $result.meshTopologyChangingOften = meshTopologyChangingOften;
    }
    if (meshUnreliableBackhaul != null) {
      $result.meshUnreliableBackhaul = meshUnreliableBackhaul;
    }
    return $result;
  }
  WifiAlerts._() : super();
  factory WifiAlerts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAlerts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiAlerts', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'thermalThrottle')
    ..aOB(2, _omitFieldNames ? '' : 'installPending')
    ..aOB(3, _omitFieldNames ? '' : 'freshlyFused')
    ..aOB(4, _omitFieldNames ? '' : 'lanEthSlowLink10', protoName: 'lan_eth_slow_link_10')
    ..aOB(5, _omitFieldNames ? '' : 'lanEthSlowLink100', protoName: 'lan_eth_slow_link_100')
    ..aOB(10, _omitFieldNames ? '' : 'wanEthPoorConnection')
    ..aOB(11, _omitFieldNames ? '' : 'meshTopologyChangingOften')
    ..aOB(12, _omitFieldNames ? '' : 'meshUnreliableBackhaul')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAlerts clone() => WifiAlerts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAlerts copyWith(void Function(WifiAlerts) updates) => super.copyWith((message) => updates(message as WifiAlerts)) as WifiAlerts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiAlerts create() => WifiAlerts._();
  WifiAlerts createEmptyInstance() => create();
  static $pb.PbList<WifiAlerts> createRepeated() => $pb.PbList<WifiAlerts>();
  @$core.pragma('dart2js:noInline')
  static WifiAlerts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiAlerts>(create);
  static WifiAlerts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get thermalThrottle => $_getBF(0);
  @$pb.TagNumber(1)
  set thermalThrottle($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThermalThrottle() => $_has(0);
  @$pb.TagNumber(1)
  void clearThermalThrottle() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get installPending => $_getBF(1);
  @$pb.TagNumber(2)
  set installPending($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstallPending() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstallPending() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get freshlyFused => $_getBF(2);
  @$pb.TagNumber(3)
  set freshlyFused($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFreshlyFused() => $_has(2);
  @$pb.TagNumber(3)
  void clearFreshlyFused() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get lanEthSlowLink10 => $_getBF(3);
  @$pb.TagNumber(4)
  set lanEthSlowLink10($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanEthSlowLink10() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanEthSlowLink10() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get lanEthSlowLink100 => $_getBF(4);
  @$pb.TagNumber(5)
  set lanEthSlowLink100($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLanEthSlowLink100() => $_has(4);
  @$pb.TagNumber(5)
  void clearLanEthSlowLink100() => clearField(5);

  @$pb.TagNumber(10)
  $core.bool get wanEthPoorConnection => $_getBF(5);
  @$pb.TagNumber(10)
  set wanEthPoorConnection($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasWanEthPoorConnection() => $_has(5);
  @$pb.TagNumber(10)
  void clearWanEthPoorConnection() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get meshTopologyChangingOften => $_getBF(6);
  @$pb.TagNumber(11)
  set meshTopologyChangingOften($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(11)
  $core.bool hasMeshTopologyChangingOften() => $_has(6);
  @$pb.TagNumber(11)
  void clearMeshTopologyChangingOften() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get meshUnreliableBackhaul => $_getBF(7);
  @$pb.TagNumber(12)
  set meshUnreliableBackhaul($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(12)
  $core.bool hasMeshUnreliableBackhaul() => $_has(7);
  @$pb.TagNumber(12)
  void clearMeshUnreliableBackhaul() => clearField(12);
}

/// SpaceX.API.Device.DhcpServer is a message:
class DhcpServer extends $pb.GeneratedMessage {
  factory DhcpServer({
    $core.String? domain,
    $core.String? subnet,
    $core.Iterable<DhcpLease>? leases,
  }) {
    final $result = create();
    if (domain != null) {
      $result.domain = domain;
    }
    if (subnet != null) {
      $result.subnet = subnet;
    }
    if (leases != null) {
      $result.leases.addAll(leases);
    }
    return $result;
  }
  DhcpServer._() : super();
  factory DhcpServer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhcpServer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DhcpServer', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domain')
    ..aOS(2, _omitFieldNames ? '' : 'subnet')
    ..pc<DhcpLease>(3, _omitFieldNames ? '' : 'leases', $pb.PbFieldType.PM, subBuilder: DhcpLease.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhcpServer clone() => DhcpServer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhcpServer copyWith(void Function(DhcpServer) updates) => super.copyWith((message) => updates(message as DhcpServer)) as DhcpServer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DhcpServer create() => DhcpServer._();
  DhcpServer createEmptyInstance() => create();
  static $pb.PbList<DhcpServer> createRepeated() => $pb.PbList<DhcpServer>();
  @$core.pragma('dart2js:noInline')
  static DhcpServer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DhcpServer>(create);
  static DhcpServer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domain => $_getSZ(0);
  @$pb.TagNumber(1)
  set domain($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subnet => $_getSZ(1);
  @$pb.TagNumber(2)
  set subnet($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubnet() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubnet() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<DhcpLease> get leases => $_getList(2);
}

/// SpaceX.API.Device.DhcpLease is a message:
class DhcpLease extends $pb.GeneratedMessage {
  factory DhcpLease({
    $core.String? ipAddress,
    $core.String? macAddress,
    $core.String? hostname,
    $core.String? expiresTime,
    $core.bool? active,
    $core.int? clientId,
  }) {
    final $result = create();
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (expiresTime != null) {
      $result.expiresTime = expiresTime;
    }
    if (active != null) {
      $result.active = active;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    return $result;
  }
  DhcpLease._() : super();
  factory DhcpLease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhcpLease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DhcpLease', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ipAddress')
    ..aOS(2, _omitFieldNames ? '' : 'macAddress')
    ..aOS(3, _omitFieldNames ? '' : 'hostname')
    ..aOS(4, _omitFieldNames ? '' : 'expiresTime')
    ..aOB(5, _omitFieldNames ? '' : 'active')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'clientId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhcpLease clone() => DhcpLease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhcpLease copyWith(void Function(DhcpLease) updates) => super.copyWith((message) => updates(message as DhcpLease)) as DhcpLease;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DhcpLease create() => DhcpLease._();
  DhcpLease createEmptyInstance() => create();
  static $pb.PbList<DhcpLease> createRepeated() => $pb.PbList<DhcpLease>();
  @$core.pragma('dart2js:noInline')
  static DhcpLease getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DhcpLease>(create);
  static DhcpLease? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ipAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set ipAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIpAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearIpAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hostname => $_getSZ(2);
  @$pb.TagNumber(3)
  set hostname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHostname() => $_has(2);
  @$pb.TagNumber(3)
  void clearHostname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get expiresTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set expiresTime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiresTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get active => $_getBF(4);
  @$pb.TagNumber(5)
  set active($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearActive() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get clientId => $_getIZ(5);
  @$pb.TagNumber(6)
  set clientId($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasClientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearClientId() => clearField(6);
}

class RadiusStatsMap_RadiusStats extends $pb.GeneratedMessage {
  factory RadiusStatsMap_RadiusStats({
    $core.String? ifaceName,
    $core.int? timeoutCount,
    $core.int? accessRequestCount,
    $core.int? accessAcceptCount,
    $core.int? accessRejectCount,
    $core.int? accessChallengeCount,
    $core.int? accountingRequestCount,
    $core.int? accountingResponseCount,
  }) {
    final $result = create();
    if (ifaceName != null) {
      $result.ifaceName = ifaceName;
    }
    if (timeoutCount != null) {
      $result.timeoutCount = timeoutCount;
    }
    if (accessRequestCount != null) {
      $result.accessRequestCount = accessRequestCount;
    }
    if (accessAcceptCount != null) {
      $result.accessAcceptCount = accessAcceptCount;
    }
    if (accessRejectCount != null) {
      $result.accessRejectCount = accessRejectCount;
    }
    if (accessChallengeCount != null) {
      $result.accessChallengeCount = accessChallengeCount;
    }
    if (accountingRequestCount != null) {
      $result.accountingRequestCount = accountingRequestCount;
    }
    if (accountingResponseCount != null) {
      $result.accountingResponseCount = accountingResponseCount;
    }
    return $result;
  }
  RadiusStatsMap_RadiusStats._() : super();
  factory RadiusStatsMap_RadiusStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadiusStatsMap_RadiusStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadiusStatsMap.RadiusStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ifaceName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'timeoutCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'accessRequestCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'accessAcceptCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'accessRejectCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'accessChallengeCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'accountingRequestCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'accountingResponseCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadiusStatsMap_RadiusStats clone() => RadiusStatsMap_RadiusStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadiusStatsMap_RadiusStats copyWith(void Function(RadiusStatsMap_RadiusStats) updates) => super.copyWith((message) => updates(message as RadiusStatsMap_RadiusStats)) as RadiusStatsMap_RadiusStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadiusStatsMap_RadiusStats create() => RadiusStatsMap_RadiusStats._();
  RadiusStatsMap_RadiusStats createEmptyInstance() => create();
  static $pb.PbList<RadiusStatsMap_RadiusStats> createRepeated() => $pb.PbList<RadiusStatsMap_RadiusStats>();
  @$core.pragma('dart2js:noInline')
  static RadiusStatsMap_RadiusStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadiusStatsMap_RadiusStats>(create);
  static RadiusStatsMap_RadiusStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ifaceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set ifaceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIfaceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearIfaceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get timeoutCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set timeoutCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeoutCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeoutCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get accessRequestCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set accessRequestCount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessRequestCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessRequestCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get accessAcceptCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set accessAcceptCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessAcceptCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessAcceptCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get accessRejectCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set accessRejectCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccessRejectCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessRejectCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get accessChallengeCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set accessChallengeCount($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccessChallengeCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccessChallengeCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get accountingRequestCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set accountingRequestCount($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccountingRequestCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountingRequestCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get accountingResponseCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set accountingResponseCount($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccountingResponseCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccountingResponseCount() => clearField(8);
}

/// SpaceX.API.Device.RadiusStatsMap is a message:
class RadiusStatsMap extends $pb.GeneratedMessage {
  factory RadiusStatsMap({
    $core.Map<$core.String, RadiusStatsMap_RadiusStats>? radiusStats,
  }) {
    final $result = create();
    if (radiusStats != null) {
      $result.radiusStats.addAll(radiusStats);
    }
    return $result;
  }
  RadiusStatsMap._() : super();
  factory RadiusStatsMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadiusStatsMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadiusStatsMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, RadiusStatsMap_RadiusStats>(1, _omitFieldNames ? '' : 'radiusStats', entryClassName: 'RadiusStatsMap.RadiusStatsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: RadiusStatsMap_RadiusStats.create, valueDefaultOrMaker: RadiusStatsMap_RadiusStats.getDefault, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadiusStatsMap clone() => RadiusStatsMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadiusStatsMap copyWith(void Function(RadiusStatsMap) updates) => super.copyWith((message) => updates(message as RadiusStatsMap)) as RadiusStatsMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadiusStatsMap create() => RadiusStatsMap._();
  RadiusStatsMap createEmptyInstance() => create();
  static $pb.PbList<RadiusStatsMap> createRepeated() => $pb.PbList<RadiusStatsMap>();
  @$core.pragma('dart2js:noInline')
  static RadiusStatsMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadiusStatsMap>(create);
  static RadiusStatsMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, RadiusStatsMap_RadiusStats> get radiusStats => $_getMap(0);
}

/// SpaceX.API.Device.WifiAuthenticateResponse is a message:
class WifiAuthenticateResponse extends $pb.GeneratedMessage {
  factory WifiAuthenticateResponse({
    ChallengeResponse? wifi,
    ChallengeResponse? dish,
  }) {
    final $result = create();
    if (wifi != null) {
      $result.wifi = wifi;
    }
    if (dish != null) {
      $result.dish = dish;
    }
    return $result;
  }
  WifiAuthenticateResponse._() : super();
  factory WifiAuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiAuthenticateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ChallengeResponse>(1, _omitFieldNames ? '' : 'wifi', subBuilder: ChallengeResponse.create)
    ..aOM<ChallengeResponse>(2, _omitFieldNames ? '' : 'dish', subBuilder: ChallengeResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAuthenticateResponse clone() => WifiAuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAuthenticateResponse copyWith(void Function(WifiAuthenticateResponse) updates) => super.copyWith((message) => updates(message as WifiAuthenticateResponse)) as WifiAuthenticateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiAuthenticateResponse create() => WifiAuthenticateResponse._();
  WifiAuthenticateResponse createEmptyInstance() => create();
  static $pb.PbList<WifiAuthenticateResponse> createRepeated() => $pb.PbList<WifiAuthenticateResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiAuthenticateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiAuthenticateResponse>(create);
  static WifiAuthenticateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ChallengeResponse get wifi => $_getN(0);
  @$pb.TagNumber(1)
  set wifi(ChallengeResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWifi() => $_has(0);
  @$pb.TagNumber(1)
  void clearWifi() => clearField(1);
  @$pb.TagNumber(1)
  ChallengeResponse ensureWifi() => $_ensure(0);

  @$pb.TagNumber(2)
  ChallengeResponse get dish => $_getN(1);
  @$pb.TagNumber(2)
  set dish(ChallengeResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDish() => $_has(1);
  @$pb.TagNumber(2)
  void clearDish() => clearField(2);
  @$pb.TagNumber(2)
  ChallengeResponse ensureDish() => $_ensure(1);
}

/// SpaceX.API.Device.WifiGetHistoryResponse is a message:
class WifiGetHistoryResponse extends $pb.GeneratedMessage {
  factory WifiGetHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? pingDropRate,
    $core.Iterable<$core.double>? pingLatencyMs,
  }) {
    final $result = create();
    if (current != null) {
      $result.current = current;
    }
    if (pingDropRate != null) {
      $result.pingDropRate.addAll(pingDropRate);
    }
    if (pingLatencyMs != null) {
      $result.pingLatencyMs.addAll(pingLatencyMs);
    }
    return $result;
  }
  WifiGetHistoryResponse._() : super();
  factory WifiGetHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(1001, _omitFieldNames ? '' : 'pingDropRate', $pb.PbFieldType.KF)
    ..p<$core.double>(1002, _omitFieldNames ? '' : 'pingLatencyMs', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetHistoryResponse clone() => WifiGetHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetHistoryResponse copyWith(void Function(WifiGetHistoryResponse) updates) => super.copyWith((message) => updates(message as WifiGetHistoryResponse)) as WifiGetHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetHistoryResponse create() => WifiGetHistoryResponse._();
  WifiGetHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetHistoryResponse> createRepeated() => $pb.PbList<WifiGetHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetHistoryResponse>(create);
  static WifiGetHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get current => $_getI64(0);
  @$pb.TagNumber(1)
  set current($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(1001)
  $core.List<$core.double> get pingDropRate => $_getList(1);

  @$pb.TagNumber(1002)
  $core.List<$core.double> get pingLatencyMs => $_getList(2);
}

/// SpaceX.API.Device.WifiGetPingMetricsResponse is a message:
class WifiGetPingMetricsResponse extends $pb.GeneratedMessage {
  factory WifiGetPingMetricsResponse({
    PingMetrics? internet,
  }) {
    final $result = create();
    if (internet != null) {
      $result.internet = internet;
    }
    return $result;
  }
  WifiGetPingMetricsResponse._() : super();
  factory WifiGetPingMetricsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPingMetricsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetPingMetricsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<PingMetrics>(1, _omitFieldNames ? '' : 'internet', subBuilder: PingMetrics.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsResponse clone() => WifiGetPingMetricsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsResponse copyWith(void Function(WifiGetPingMetricsResponse) updates) => super.copyWith((message) => updates(message as WifiGetPingMetricsResponse)) as WifiGetPingMetricsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsResponse create() => WifiGetPingMetricsResponse._();
  WifiGetPingMetricsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetPingMetricsResponse> createRepeated() => $pb.PbList<WifiGetPingMetricsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetPingMetricsResponse>(create);
  static WifiGetPingMetricsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PingMetrics get internet => $_getN(0);
  @$pb.TagNumber(1)
  set internet(PingMetrics v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInternet() => $_has(0);
  @$pb.TagNumber(1)
  void clearInternet() => clearField(1);
  @$pb.TagNumber(1)
  PingMetrics ensureInternet() => $_ensure(0);
}

/// SpaceX.API.Device.PingMetrics is a message:
class PingMetrics extends $pb.GeneratedMessage {
  factory PingMetrics({
    $core.double? latencyMeanMs,
    $core.double? latencyStddevMs,
    $core.double? latencyMeanMs5m,
    $core.double? latencyMeanMs1h,
    $core.double? latencyMeanMs1d,
    $core.double? dropRate,
    $core.double? dropRate5m,
    $core.double? dropRate1h,
    $core.double? dropRate1d,
    $core.double? secondsSinceLastSuccess,
    $core.double? secondsSinceLast1sOutage,
    $core.double? secondsSinceLast5sOutage,
    $core.double? happyHours1s1d,
    $core.double? happyHours5s1d,
    $core.double? secondsSinceLast2sOutage,
    $core.double? happyHours2s1d,
    $core.double? secondsSinceLast15sOutage,
    $core.double? secondsSinceLast60sOutage,
    $core.double? secondsSinceLast300sOutage,
  }) {
    final $result = create();
    if (latencyMeanMs != null) {
      $result.latencyMeanMs = latencyMeanMs;
    }
    if (latencyStddevMs != null) {
      $result.latencyStddevMs = latencyStddevMs;
    }
    if (latencyMeanMs5m != null) {
      $result.latencyMeanMs5m = latencyMeanMs5m;
    }
    if (latencyMeanMs1h != null) {
      $result.latencyMeanMs1h = latencyMeanMs1h;
    }
    if (latencyMeanMs1d != null) {
      $result.latencyMeanMs1d = latencyMeanMs1d;
    }
    if (dropRate != null) {
      $result.dropRate = dropRate;
    }
    if (dropRate5m != null) {
      $result.dropRate5m = dropRate5m;
    }
    if (dropRate1h != null) {
      $result.dropRate1h = dropRate1h;
    }
    if (dropRate1d != null) {
      $result.dropRate1d = dropRate1d;
    }
    if (secondsSinceLastSuccess != null) {
      $result.secondsSinceLastSuccess = secondsSinceLastSuccess;
    }
    if (secondsSinceLast1sOutage != null) {
      $result.secondsSinceLast1sOutage = secondsSinceLast1sOutage;
    }
    if (secondsSinceLast5sOutage != null) {
      $result.secondsSinceLast5sOutage = secondsSinceLast5sOutage;
    }
    if (happyHours1s1d != null) {
      $result.happyHours1s1d = happyHours1s1d;
    }
    if (happyHours5s1d != null) {
      $result.happyHours5s1d = happyHours5s1d;
    }
    if (secondsSinceLast2sOutage != null) {
      $result.secondsSinceLast2sOutage = secondsSinceLast2sOutage;
    }
    if (happyHours2s1d != null) {
      $result.happyHours2s1d = happyHours2s1d;
    }
    if (secondsSinceLast15sOutage != null) {
      $result.secondsSinceLast15sOutage = secondsSinceLast15sOutage;
    }
    if (secondsSinceLast60sOutage != null) {
      $result.secondsSinceLast60sOutage = secondsSinceLast60sOutage;
    }
    if (secondsSinceLast300sOutage != null) {
      $result.secondsSinceLast300sOutage = secondsSinceLast300sOutage;
    }
    return $result;
  }
  PingMetrics._() : super();
  factory PingMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'latencyMeanMs', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'latencyStddevMs', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'latencyMeanMs5m', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_5m')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'latencyMeanMs1h', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_1h')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'latencyMeanMs1d', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_1d')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'dropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'dropRate5m', $pb.PbFieldType.OF, protoName: 'drop_rate_5m')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'dropRate1h', $pb.PbFieldType.OF, protoName: 'drop_rate_1h')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'dropRate1d', $pb.PbFieldType.OF, protoName: 'drop_rate_1d')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'secondsSinceLastSuccess', $pb.PbFieldType.OF)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'secondsSinceLast1sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_1s_outage')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'secondsSinceLast5sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_5s_outage')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'happyHours1s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_1s_1d')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'happyHours5s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_5s_1d')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'secondsSinceLast2sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_2s_outage')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'happyHours2s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_2s_1d')
    ..a<$core.double>(18, _omitFieldNames ? '' : 'secondsSinceLast15sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_15s_outage')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'secondsSinceLast60sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_60s_outage')
    ..a<$core.double>(20, _omitFieldNames ? '' : 'secondsSinceLast300sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_300s_outage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingMetrics clone() => PingMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingMetrics copyWith(void Function(PingMetrics) updates) => super.copyWith((message) => updates(message as PingMetrics)) as PingMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingMetrics create() => PingMetrics._();
  PingMetrics createEmptyInstance() => create();
  static $pb.PbList<PingMetrics> createRepeated() => $pb.PbList<PingMetrics>();
  @$core.pragma('dart2js:noInline')
  static PingMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingMetrics>(create);
  static PingMetrics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latencyMeanMs => $_getN(0);
  @$pb.TagNumber(1)
  set latencyMeanMs($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatencyMeanMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatencyMeanMs() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latencyStddevMs => $_getN(1);
  @$pb.TagNumber(2)
  set latencyStddevMs($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatencyStddevMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatencyStddevMs() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get latencyMeanMs5m => $_getN(2);
  @$pb.TagNumber(3)
  set latencyMeanMs5m($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatencyMeanMs5m() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatencyMeanMs5m() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get latencyMeanMs1h => $_getN(3);
  @$pb.TagNumber(4)
  set latencyMeanMs1h($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLatencyMeanMs1h() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatencyMeanMs1h() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get latencyMeanMs1d => $_getN(4);
  @$pb.TagNumber(5)
  set latencyMeanMs1d($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLatencyMeanMs1d() => $_has(4);
  @$pb.TagNumber(5)
  void clearLatencyMeanMs1d() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get dropRate => $_getN(5);
  @$pb.TagNumber(6)
  set dropRate($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDropRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDropRate() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get dropRate5m => $_getN(6);
  @$pb.TagNumber(7)
  set dropRate5m($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDropRate5m() => $_has(6);
  @$pb.TagNumber(7)
  void clearDropRate5m() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get dropRate1h => $_getN(7);
  @$pb.TagNumber(8)
  set dropRate1h($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDropRate1h() => $_has(7);
  @$pb.TagNumber(8)
  void clearDropRate1h() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get dropRate1d => $_getN(8);
  @$pb.TagNumber(9)
  set dropRate1d($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDropRate1d() => $_has(8);
  @$pb.TagNumber(9)
  void clearDropRate1d() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get secondsSinceLastSuccess => $_getN(9);
  @$pb.TagNumber(10)
  set secondsSinceLastSuccess($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSecondsSinceLastSuccess() => $_has(9);
  @$pb.TagNumber(10)
  void clearSecondsSinceLastSuccess() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get secondsSinceLast1sOutage => $_getN(10);
  @$pb.TagNumber(11)
  set secondsSinceLast1sOutage($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSecondsSinceLast1sOutage() => $_has(10);
  @$pb.TagNumber(11)
  void clearSecondsSinceLast1sOutage() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get secondsSinceLast5sOutage => $_getN(11);
  @$pb.TagNumber(12)
  set secondsSinceLast5sOutage($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSecondsSinceLast5sOutage() => $_has(11);
  @$pb.TagNumber(12)
  void clearSecondsSinceLast5sOutage() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get happyHours1s1d => $_getN(12);
  @$pb.TagNumber(13)
  set happyHours1s1d($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasHappyHours1s1d() => $_has(12);
  @$pb.TagNumber(13)
  void clearHappyHours1s1d() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get happyHours5s1d => $_getN(13);
  @$pb.TagNumber(14)
  set happyHours5s1d($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasHappyHours5s1d() => $_has(13);
  @$pb.TagNumber(14)
  void clearHappyHours5s1d() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get secondsSinceLast2sOutage => $_getN(14);
  @$pb.TagNumber(15)
  set secondsSinceLast2sOutage($core.double v) { $_setFloat(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSecondsSinceLast2sOutage() => $_has(14);
  @$pb.TagNumber(15)
  void clearSecondsSinceLast2sOutage() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get happyHours2s1d => $_getN(15);
  @$pb.TagNumber(16)
  set happyHours2s1d($core.double v) { $_setFloat(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasHappyHours2s1d() => $_has(15);
  @$pb.TagNumber(16)
  void clearHappyHours2s1d() => clearField(16);

  @$pb.TagNumber(18)
  $core.double get secondsSinceLast15sOutage => $_getN(16);
  @$pb.TagNumber(18)
  set secondsSinceLast15sOutage($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasSecondsSinceLast15sOutage() => $_has(16);
  @$pb.TagNumber(18)
  void clearSecondsSinceLast15sOutage() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get secondsSinceLast60sOutage => $_getN(17);
  @$pb.TagNumber(19)
  set secondsSinceLast60sOutage($core.double v) { $_setFloat(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasSecondsSinceLast60sOutage() => $_has(17);
  @$pb.TagNumber(19)
  void clearSecondsSinceLast60sOutage() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get secondsSinceLast300sOutage => $_getN(18);
  @$pb.TagNumber(20)
  set secondsSinceLast300sOutage($core.double v) { $_setFloat(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasSecondsSinceLast300sOutage() => $_has(18);
  @$pb.TagNumber(20)
  void clearSecondsSinceLast300sOutage() => clearField(20);
}

/// SpaceX.API.Device.WifiGetDiagnosticsResponse is a message:
class WifiGetDiagnosticsResponse extends $pb.GeneratedMessage {
  factory WifiGetDiagnosticsResponse({
    WifiScanResults? networkScan,
    $core.Iterable<WifiNetwork>? wifiNetworks,
  }) {
    final $result = create();
    if (networkScan != null) {
      $result.networkScan = networkScan;
    }
    if (wifiNetworks != null) {
      $result.wifiNetworks.addAll(wifiNetworks);
    }
    return $result;
  }
  WifiGetDiagnosticsResponse._() : super();
  factory WifiGetDiagnosticsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetDiagnosticsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiScanResults>(1, _omitFieldNames ? '' : 'networkScan', subBuilder: WifiScanResults.create)
    ..pc<WifiNetwork>(2, _omitFieldNames ? '' : 'wifiNetworks', $pb.PbFieldType.PM, subBuilder: WifiNetwork.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse clone() => WifiGetDiagnosticsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse copyWith(void Function(WifiGetDiagnosticsResponse) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsResponse)) as WifiGetDiagnosticsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsResponse create() => WifiGetDiagnosticsResponse._();
  WifiGetDiagnosticsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetDiagnosticsResponse> createRepeated() => $pb.PbList<WifiGetDiagnosticsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetDiagnosticsResponse>(create);
  static WifiGetDiagnosticsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiScanResults get networkScan => $_getN(0);
  @$pb.TagNumber(1)
  set networkScan(WifiScanResults v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkScan() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkScan() => clearField(1);
  @$pb.TagNumber(1)
  WifiScanResults ensureNetworkScan() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<WifiNetwork> get wifiNetworks => $_getList(1);
}

class WifiScanResults_Network extends $pb.GeneratedMessage {
  factory WifiScanResults_Network({
    WifiScanResults_Network_Source? source,
    $core.String? ssid,
    $core.String? bssid,
    $core.String? frequencyGhz,
    $core.int? channel,
    $core.int? signalLevelDbm,
    $core.int? noiseLevelDbm,
    $core.bool? hasEncryptionKey,
    $core.String? phyModeStr,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (bssid != null) {
      $result.bssid = bssid;
    }
    if (frequencyGhz != null) {
      $result.frequencyGhz = frequencyGhz;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (signalLevelDbm != null) {
      $result.signalLevelDbm = signalLevelDbm;
    }
    if (noiseLevelDbm != null) {
      $result.noiseLevelDbm = noiseLevelDbm;
    }
    if (hasEncryptionKey != null) {
      $result.hasEncryptionKey = hasEncryptionKey;
    }
    if (phyModeStr != null) {
      $result.phyModeStr = phyModeStr;
    }
    return $result;
  }
  WifiScanResults_Network._() : super();
  factory WifiScanResults_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiScanResults.Network', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiScanResults_Network_Source>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: WifiScanResults_Network_Source.UNKNOWN, valueOf: WifiScanResults_Network_Source.valueOf, enumValues: WifiScanResults_Network_Source.values)
    ..aOS(2, _omitFieldNames ? '' : 'ssid')
    ..aOS(3, _omitFieldNames ? '' : 'bssid')
    ..aOS(4, _omitFieldNames ? '' : 'frequencyGhz')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'channel', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'signalLevelDbm', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'noiseLevelDbm', $pb.PbFieldType.O3)
    ..aOB(8, _omitFieldNames ? '' : 'hasEncryptionKey')
    ..aOS(9, _omitFieldNames ? '' : 'phyModeStr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network clone() => WifiScanResults_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network copyWith(void Function(WifiScanResults_Network) updates) => super.copyWith((message) => updates(message as WifiScanResults_Network)) as WifiScanResults_Network;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiScanResults_Network create() => WifiScanResults_Network._();
  WifiScanResults_Network createEmptyInstance() => create();
  static $pb.PbList<WifiScanResults_Network> createRepeated() => $pb.PbList<WifiScanResults_Network>();
  @$core.pragma('dart2js:noInline')
  static WifiScanResults_Network getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiScanResults_Network>(create);
  static WifiScanResults_Network? _defaultInstance;

  @$pb.TagNumber(1)
  WifiScanResults_Network_Source get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(WifiScanResults_Network_Source v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bssid => $_getSZ(2);
  @$pb.TagNumber(3)
  set bssid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBssid() => $_has(2);
  @$pb.TagNumber(3)
  void clearBssid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get frequencyGhz => $_getSZ(3);
  @$pb.TagNumber(4)
  set frequencyGhz($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequencyGhz() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequencyGhz() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get channel => $_getIZ(4);
  @$pb.TagNumber(5)
  set channel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannel() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannel() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get signalLevelDbm => $_getIZ(5);
  @$pb.TagNumber(6)
  set signalLevelDbm($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSignalLevelDbm() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignalLevelDbm() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get noiseLevelDbm => $_getIZ(6);
  @$pb.TagNumber(7)
  set noiseLevelDbm($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNoiseLevelDbm() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoiseLevelDbm() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get hasEncryptionKey => $_getBF(7);
  @$pb.TagNumber(8)
  set hasEncryptionKey($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHasEncryptionKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearHasEncryptionKey() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get phyModeStr => $_getSZ(8);
  @$pb.TagNumber(9)
  set phyModeStr($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPhyModeStr() => $_has(8);
  @$pb.TagNumber(9)
  void clearPhyModeStr() => clearField(9);
}

/// SpaceX.API.Device.WifiScanResults is a message:
class WifiScanResults extends $pb.GeneratedMessage {
  factory WifiScanResults({
    $core.Iterable<WifiScanResults_Network>? networks,
  }) {
    final $result = create();
    if (networks != null) {
      $result.networks.addAll(networks);
    }
    return $result;
  }
  WifiScanResults._() : super();
  factory WifiScanResults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiScanResults', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiScanResults_Network>(1, _omitFieldNames ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiScanResults_Network.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults clone() => WifiScanResults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults copyWith(void Function(WifiScanResults) updates) => super.copyWith((message) => updates(message as WifiScanResults)) as WifiScanResults;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiScanResults create() => WifiScanResults._();
  WifiScanResults createEmptyInstance() => create();
  static $pb.PbList<WifiScanResults> createRepeated() => $pb.PbList<WifiScanResults>();
  @$core.pragma('dart2js:noInline')
  static WifiScanResults getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiScanResults>(create);
  static WifiScanResults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WifiScanResults_Network> get networks => $_getList(0);
}

/// SpaceX.API.Device.WifiNetwork is a message:
class WifiNetwork extends $pb.GeneratedMessage {
  factory WifiNetwork({
    WifiNetwork_Band? band,
    $core.String? ssid,
    $core.int? channel,
    $core.String? encryptionTypeStr,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (encryptionTypeStr != null) {
      $result.encryptionTypeStr = encryptionTypeStr;
    }
    return $result;
  }
  WifiNetwork._() : super();
  factory WifiNetwork.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetwork.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNetwork', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiNetwork_Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiNetwork_Band.WIFI_UNKNOWN, valueOf: WifiNetwork_Band.valueOf, enumValues: WifiNetwork_Band.values)
    ..aOS(2, _omitFieldNames ? '' : 'ssid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'channel', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'encryptionTypeStr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetwork clone() => WifiNetwork()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetwork copyWith(void Function(WifiNetwork) updates) => super.copyWith((message) => updates(message as WifiNetwork)) as WifiNetwork;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNetwork create() => WifiNetwork._();
  WifiNetwork createEmptyInstance() => create();
  static $pb.PbList<WifiNetwork> createRepeated() => $pb.PbList<WifiNetwork>();
  @$core.pragma('dart2js:noInline')
  static WifiNetwork getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNetwork>(create);
  static WifiNetwork? _defaultInstance;

  @$pb.TagNumber(1)
  WifiNetwork_Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(WifiNetwork_Band v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get encryptionTypeStr => $_getSZ(3);
  @$pb.TagNumber(4)
  set encryptionTypeStr($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncryptionTypeStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncryptionTypeStr() => clearField(4);
}

/// SpaceX.API.Device.WifiGetConfigResponse is a message:
class WifiGetConfigResponse extends $pb.GeneratedMessage {
  factory WifiGetConfigResponse({
    WifiConfig? wifiConfig,
  }) {
    final $result = create();
    if (wifiConfig != null) {
      $result.wifiConfig = wifiConfig;
    }
    return $result;
  }
  WifiGetConfigResponse._() : super();
  factory WifiGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, _omitFieldNames ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse clone() => WifiGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse copyWith(void Function(WifiGetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiGetConfigResponse)) as WifiGetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetConfigResponse create() => WifiGetConfigResponse._();
  WifiGetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetConfigResponse> createRepeated() => $pb.PbList<WifiGetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetConfigResponse>(create);
  static WifiGetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiConfig get wifiConfig => $_getN(0);
  @$pb.TagNumber(1)
  set wifiConfig(WifiConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWifiConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearWifiConfig() => clearField(1);
  @$pb.TagNumber(1)
  WifiConfig ensureWifiConfig() => $_ensure(0);
}

/// SpaceX.API.Device.WifiSetMeshDeviceTrustResponse is a message:
class WifiSetMeshDeviceTrustResponse extends $pb.GeneratedMessage {
  factory WifiSetMeshDeviceTrustResponse() => create();
  WifiSetMeshDeviceTrustResponse._() : super();
  factory WifiSetMeshDeviceTrustResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshDeviceTrustResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetMeshDeviceTrustResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustResponse clone() => WifiSetMeshDeviceTrustResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustResponse copyWith(void Function(WifiSetMeshDeviceTrustResponse) updates) => super.copyWith((message) => updates(message as WifiSetMeshDeviceTrustResponse)) as WifiSetMeshDeviceTrustResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustResponse create() => WifiSetMeshDeviceTrustResponse._();
  WifiSetMeshDeviceTrustResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshDeviceTrustResponse> createRepeated() => $pb.PbList<WifiSetMeshDeviceTrustResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshDeviceTrustResponse>(create);
  static WifiSetMeshDeviceTrustResponse? _defaultInstance;
}

/// SpaceX.API.Device.WifiSetMeshConfigResponse is a message:
class WifiSetMeshConfigResponse extends $pb.GeneratedMessage {
  factory WifiSetMeshConfigResponse() => create();
  WifiSetMeshConfigResponse._() : super();
  factory WifiSetMeshConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSetMeshConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigResponse clone() => WifiSetMeshConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigResponse copyWith(void Function(WifiSetMeshConfigResponse) updates) => super.copyWith((message) => updates(message as WifiSetMeshConfigResponse)) as WifiSetMeshConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigResponse create() => WifiSetMeshConfigResponse._();
  WifiSetMeshConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshConfigResponse> createRepeated() => $pb.PbList<WifiSetMeshConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshConfigResponse>(create);
  static WifiSetMeshConfigResponse? _defaultInstance;
}

/// SpaceX.API.Device.WifiGetClientHistoryResponse is a message:
class WifiGetClientHistoryResponse extends $pb.GeneratedMessage {
  factory WifiGetClientHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? txThroughputMbps,
    $core.Iterable<$core.double>? rxThroughputMbps,
    $core.Iterable<WifiGetClientHistoryResponse_WifiLimitedReason>? throughputLimited,
    $core.Iterable<$core.double>? rxRateMbps,
    $core.List<$core.int>? rssi,
  }) {
    final $result = create();
    if (current != null) {
      $result.current = current;
    }
    if (txThroughputMbps != null) {
      $result.txThroughputMbps.addAll(txThroughputMbps);
    }
    if (rxThroughputMbps != null) {
      $result.rxThroughputMbps.addAll(rxThroughputMbps);
    }
    if (throughputLimited != null) {
      $result.throughputLimited.addAll(throughputLimited);
    }
    if (rxRateMbps != null) {
      $result.rxRateMbps.addAll(rxRateMbps);
    }
    if (rssi != null) {
      $result.rssi = rssi;
    }
    return $result;
  }
  WifiGetClientHistoryResponse._() : super();
  factory WifiGetClientHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetClientHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'txThroughputMbps', $pb.PbFieldType.KF)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'rxThroughputMbps', $pb.PbFieldType.KF)
    ..pc<WifiGetClientHistoryResponse_WifiLimitedReason>(4, _omitFieldNames ? '' : 'throughputLimited', $pb.PbFieldType.KE, valueOf: WifiGetClientHistoryResponse_WifiLimitedReason.valueOf, enumValues: WifiGetClientHistoryResponse_WifiLimitedReason.values, defaultEnumValue: WifiGetClientHistoryResponse_WifiLimitedReason.LIMIT_UNKNOWN)
    ..p<$core.double>(5, _omitFieldNames ? '' : 'rxRateMbps', $pb.PbFieldType.KF)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'rssi', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryResponse clone() => WifiGetClientHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryResponse copyWith(void Function(WifiGetClientHistoryResponse) updates) => super.copyWith((message) => updates(message as WifiGetClientHistoryResponse)) as WifiGetClientHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryResponse create() => WifiGetClientHistoryResponse._();
  WifiGetClientHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientHistoryResponse> createRepeated() => $pb.PbList<WifiGetClientHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientHistoryResponse>(create);
  static WifiGetClientHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get current => $_getI64(0);
  @$pb.TagNumber(1)
  set current($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.double> get txThroughputMbps => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.double> get rxThroughputMbps => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<WifiGetClientHistoryResponse_WifiLimitedReason> get throughputLimited => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.double> get rxRateMbps => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get rssi => $_getN(5);
  @$pb.TagNumber(6)
  set rssi($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRssi() => $_has(5);
  @$pb.TagNumber(6)
  void clearRssi() => clearField(6);
}

/// SpaceX.API.Device.WifiSelfTestResponse is a message:
class WifiSelfTestResponse extends $pb.GeneratedMessage {
  factory WifiSelfTestResponse({
    WifiSelfTest? selfTest,
  }) {
    final $result = create();
    if (selfTest != null) {
      $result.selfTest = selfTest;
    }
    return $result;
  }
  WifiSelfTestResponse._() : super();
  factory WifiSelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSelfTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiSelfTest>(1, _omitFieldNames ? '' : 'selfTest', subBuilder: WifiSelfTest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTestResponse clone() => WifiSelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTestResponse copyWith(void Function(WifiSelfTestResponse) updates) => super.copyWith((message) => updates(message as WifiSelfTestResponse)) as WifiSelfTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSelfTestResponse create() => WifiSelfTestResponse._();
  WifiSelfTestResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSelfTestResponse> createRepeated() => $pb.PbList<WifiSelfTestResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSelfTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSelfTestResponse>(create);
  static WifiSelfTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiSelfTest get selfTest => $_getN(0);
  @$pb.TagNumber(1)
  set selfTest(WifiSelfTest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelfTest() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelfTest() => clearField(1);
  @$pb.TagNumber(1)
  WifiSelfTest ensureSelfTest() => $_ensure(0);
}

class WifiSelfTest_TestResult extends $pb.GeneratedMessage {
  factory WifiSelfTest_TestResult({
    $core.String? name,
    $core.bool? success,
    $core.String? failureReason,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (success != null) {
      $result.success = success;
    }
    if (failureReason != null) {
      $result.failureReason = failureReason;
    }
    return $result;
  }
  WifiSelfTest_TestResult._() : super();
  factory WifiSelfTest_TestResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTest_TestResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSelfTest.TestResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'failureReason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTest_TestResult clone() => WifiSelfTest_TestResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTest_TestResult copyWith(void Function(WifiSelfTest_TestResult) updates) => super.copyWith((message) => updates(message as WifiSelfTest_TestResult)) as WifiSelfTest_TestResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSelfTest_TestResult create() => WifiSelfTest_TestResult._();
  WifiSelfTest_TestResult createEmptyInstance() => create();
  static $pb.PbList<WifiSelfTest_TestResult> createRepeated() => $pb.PbList<WifiSelfTest_TestResult>();
  @$core.pragma('dart2js:noInline')
  static WifiSelfTest_TestResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSelfTest_TestResult>(create);
  static WifiSelfTest_TestResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get failureReason => $_getSZ(2);
  @$pb.TagNumber(3)
  set failureReason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFailureReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailureReason() => clearField(3);
}

/// SpaceX.API.Device.WifiSelfTest is a message:
class WifiSelfTest extends $pb.GeneratedMessage {
  factory WifiSelfTest({
    $core.bool? totalSuccess,
    WifiSelfTest_TestResult? fused,
    $core.Iterable<WifiSelfTest_TestResult>? ethPhys,
    $core.Iterable<WifiSelfTest_TestResult>? pcis,
    WifiSelfTest_TestResult? bl2Prod,
  }) {
    final $result = create();
    if (totalSuccess != null) {
      $result.totalSuccess = totalSuccess;
    }
    if (fused != null) {
      $result.fused = fused;
    }
    if (ethPhys != null) {
      $result.ethPhys.addAll(ethPhys);
    }
    if (pcis != null) {
      $result.pcis.addAll(pcis);
    }
    if (bl2Prod != null) {
      $result.bl2Prod = bl2Prod;
    }
    return $result;
  }
  WifiSelfTest._() : super();
  factory WifiSelfTest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiSelfTest', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'totalSuccess')
    ..aOM<WifiSelfTest_TestResult>(2, _omitFieldNames ? '' : 'fused', subBuilder: WifiSelfTest_TestResult.create)
    ..pc<WifiSelfTest_TestResult>(3, _omitFieldNames ? '' : 'ethPhys', $pb.PbFieldType.PM, subBuilder: WifiSelfTest_TestResult.create)
    ..pc<WifiSelfTest_TestResult>(4, _omitFieldNames ? '' : 'pcis', $pb.PbFieldType.PM, subBuilder: WifiSelfTest_TestResult.create)
    ..aOM<WifiSelfTest_TestResult>(5, _omitFieldNames ? '' : 'bl2Prod', subBuilder: WifiSelfTest_TestResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTest clone() => WifiSelfTest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTest copyWith(void Function(WifiSelfTest) updates) => super.copyWith((message) => updates(message as WifiSelfTest)) as WifiSelfTest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiSelfTest create() => WifiSelfTest._();
  WifiSelfTest createEmptyInstance() => create();
  static $pb.PbList<WifiSelfTest> createRepeated() => $pb.PbList<WifiSelfTest>();
  @$core.pragma('dart2js:noInline')
  static WifiSelfTest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSelfTest>(create);
  static WifiSelfTest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get totalSuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set totalSuccess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalSuccess() => clearField(1);

  @$pb.TagNumber(2)
  WifiSelfTest_TestResult get fused => $_getN(1);
  @$pb.TagNumber(2)
  set fused(WifiSelfTest_TestResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFused() => $_has(1);
  @$pb.TagNumber(2)
  void clearFused() => clearField(2);
  @$pb.TagNumber(2)
  WifiSelfTest_TestResult ensureFused() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<WifiSelfTest_TestResult> get ethPhys => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<WifiSelfTest_TestResult> get pcis => $_getList(3);

  @$pb.TagNumber(5)
  WifiSelfTest_TestResult get bl2Prod => $_getN(4);
  @$pb.TagNumber(5)
  set bl2Prod(WifiSelfTest_TestResult v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBl2Prod() => $_has(4);
  @$pb.TagNumber(5)
  void clearBl2Prod() => clearField(5);
  @$pb.TagNumber(5)
  WifiSelfTest_TestResult ensureBl2Prod() => $_ensure(4);
}

/// SpaceX.API.Device.WifiGetPersistentStatsResponse is a message:
class WifiGetPersistentStatsResponse extends $pb.GeneratedMessage {
  factory WifiGetPersistentStatsResponse({
    WifiPersistentStats? stats,
  }) {
    final $result = create();
    if (stats != null) {
      $result.stats = stats;
    }
    return $result;
  }
  WifiGetPersistentStatsResponse._() : super();
  factory WifiGetPersistentStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPersistentStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiGetPersistentStatsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats>(1, _omitFieldNames ? '' : 'stats', subBuilder: WifiPersistentStats.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse clone() => WifiGetPersistentStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse copyWith(void Function(WifiGetPersistentStatsResponse) updates) => super.copyWith((message) => updates(message as WifiGetPersistentStatsResponse)) as WifiGetPersistentStatsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiGetPersistentStatsResponse create() => WifiGetPersistentStatsResponse._();
  WifiGetPersistentStatsResponse createEmptyInstance() => create();
  static $pb.PbList<WifiGetPersistentStatsResponse> createRepeated() => $pb.PbList<WifiGetPersistentStatsResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiGetPersistentStatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetPersistentStatsResponse>(create);
  static WifiGetPersistentStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WifiPersistentStats get stats => $_getN(0);
  @$pb.TagNumber(1)
  set stats(WifiPersistentStats v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStats() => $_has(0);
  @$pb.TagNumber(1)
  void clearStats() => clearField(1);
  @$pb.TagNumber(1)
  WifiPersistentStats ensureStats() => $_ensure(0);
}

class WifiPersistentStats_Event extends $pb.GeneratedMessage {
  factory WifiPersistentStats_Event({
    $core.int? count,
    $fixnum.Int64? lastOccurredTimestamp,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (lastOccurredTimestamp != null) {
      $result.lastOccurredTimestamp = lastOccurredTimestamp;
    }
    return $result;
  }
  WifiPersistentStats_Event._() : super();
  factory WifiPersistentStats_Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats_Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiPersistentStats.Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..aInt64(2, _omitFieldNames ? '' : 'lastOccurredTimestamp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event clone() => WifiPersistentStats_Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event copyWith(void Function(WifiPersistentStats_Event) updates) => super.copyWith((message) => updates(message as WifiPersistentStats_Event)) as WifiPersistentStats_Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats_Event create() => WifiPersistentStats_Event._();
  WifiPersistentStats_Event createEmptyInstance() => create();
  static $pb.PbList<WifiPersistentStats_Event> createRepeated() => $pb.PbList<WifiPersistentStats_Event>();
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats_Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiPersistentStats_Event>(create);
  static WifiPersistentStats_Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastOccurredTimestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set lastOccurredTimestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastOccurredTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastOccurredTimestamp() => clearField(2);
}

/// SpaceX.API.Device.WifiPersistentStats is a message:
class WifiPersistentStats extends $pb.GeneratedMessage {
  factory WifiPersistentStats({
    WifiPersistentStats_Event? factoryResetButton,
    WifiPersistentStats_Event? factoryResetPlugUnplug,
    WifiPersistentStats_Event? factoryResetCommand,
    WifiPersistentStats_Event? factoryResetFailedLoadWifiConfig,
    WifiPersistentStats_Event? rebootFromSoftwareUpdate,
  }) {
    final $result = create();
    if (factoryResetButton != null) {
      $result.factoryResetButton = factoryResetButton;
    }
    if (factoryResetPlugUnplug != null) {
      $result.factoryResetPlugUnplug = factoryResetPlugUnplug;
    }
    if (factoryResetCommand != null) {
      $result.factoryResetCommand = factoryResetCommand;
    }
    if (factoryResetFailedLoadWifiConfig != null) {
      $result.factoryResetFailedLoadWifiConfig = factoryResetFailedLoadWifiConfig;
    }
    if (rebootFromSoftwareUpdate != null) {
      $result.rebootFromSoftwareUpdate = rebootFromSoftwareUpdate;
    }
    return $result;
  }
  WifiPersistentStats._() : super();
  factory WifiPersistentStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiPersistentStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats_Event>(1, _omitFieldNames ? '' : 'factoryResetButton', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(2, _omitFieldNames ? '' : 'factoryResetPlugUnplug', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(3, _omitFieldNames ? '' : 'factoryResetCommand', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(4, _omitFieldNames ? '' : 'factoryResetFailedLoadWifiConfig', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(5, _omitFieldNames ? '' : 'rebootFromSoftwareUpdate', subBuilder: WifiPersistentStats_Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats clone() => WifiPersistentStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats copyWith(void Function(WifiPersistentStats) updates) => super.copyWith((message) => updates(message as WifiPersistentStats)) as WifiPersistentStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats create() => WifiPersistentStats._();
  WifiPersistentStats createEmptyInstance() => create();
  static $pb.PbList<WifiPersistentStats> createRepeated() => $pb.PbList<WifiPersistentStats>();
  @$core.pragma('dart2js:noInline')
  static WifiPersistentStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiPersistentStats>(create);
  static WifiPersistentStats? _defaultInstance;

  @$pb.TagNumber(1)
  WifiPersistentStats_Event get factoryResetButton => $_getN(0);
  @$pb.TagNumber(1)
  set factoryResetButton(WifiPersistentStats_Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFactoryResetButton() => $_has(0);
  @$pb.TagNumber(1)
  void clearFactoryResetButton() => clearField(1);
  @$pb.TagNumber(1)
  WifiPersistentStats_Event ensureFactoryResetButton() => $_ensure(0);

  @$pb.TagNumber(2)
  WifiPersistentStats_Event get factoryResetPlugUnplug => $_getN(1);
  @$pb.TagNumber(2)
  set factoryResetPlugUnplug(WifiPersistentStats_Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFactoryResetPlugUnplug() => $_has(1);
  @$pb.TagNumber(2)
  void clearFactoryResetPlugUnplug() => clearField(2);
  @$pb.TagNumber(2)
  WifiPersistentStats_Event ensureFactoryResetPlugUnplug() => $_ensure(1);

  @$pb.TagNumber(3)
  WifiPersistentStats_Event get factoryResetCommand => $_getN(2);
  @$pb.TagNumber(3)
  set factoryResetCommand(WifiPersistentStats_Event v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFactoryResetCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearFactoryResetCommand() => clearField(3);
  @$pb.TagNumber(3)
  WifiPersistentStats_Event ensureFactoryResetCommand() => $_ensure(2);

  @$pb.TagNumber(4)
  WifiPersistentStats_Event get factoryResetFailedLoadWifiConfig => $_getN(3);
  @$pb.TagNumber(4)
  set factoryResetFailedLoadWifiConfig(WifiPersistentStats_Event v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFactoryResetFailedLoadWifiConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearFactoryResetFailedLoadWifiConfig() => clearField(4);
  @$pb.TagNumber(4)
  WifiPersistentStats_Event ensureFactoryResetFailedLoadWifiConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  WifiPersistentStats_Event get rebootFromSoftwareUpdate => $_getN(4);
  @$pb.TagNumber(5)
  set rebootFromSoftwareUpdate(WifiPersistentStats_Event v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRebootFromSoftwareUpdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearRebootFromSoftwareUpdate() => clearField(5);
  @$pb.TagNumber(5)
  WifiPersistentStats_Event ensureRebootFromSoftwareUpdate() => $_ensure(4);
}

/// SpaceX.API.Device.TransceiverIFLoopbackTestResponse is a message:
class TransceiverIFLoopbackTestResponse extends $pb.GeneratedMessage {
  factory TransceiverIFLoopbackTestResponse({
    $core.double? berLoopbackTest,
    $core.double? snrLoopbackTest,
    $core.double? rssiLoopbackTest,
    $core.bool? pllLock,
  }) {
    final $result = create();
    if (berLoopbackTest != null) {
      $result.berLoopbackTest = berLoopbackTest;
    }
    if (snrLoopbackTest != null) {
      $result.snrLoopbackTest = snrLoopbackTest;
    }
    if (rssiLoopbackTest != null) {
      $result.rssiLoopbackTest = rssiLoopbackTest;
    }
    if (pllLock != null) {
      $result.pllLock = pllLock;
    }
    return $result;
  }
  TransceiverIFLoopbackTestResponse._() : super();
  factory TransceiverIFLoopbackTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverIFLoopbackTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverIFLoopbackTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'berLoopbackTest', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'snrLoopbackTest', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rssiLoopbackTest', $pb.PbFieldType.OF)
    ..aOB(4, _omitFieldNames ? '' : 'pllLock')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestResponse clone() => TransceiverIFLoopbackTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestResponse copyWith(void Function(TransceiverIFLoopbackTestResponse) updates) => super.copyWith((message) => updates(message as TransceiverIFLoopbackTestResponse)) as TransceiverIFLoopbackTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverIFLoopbackTestResponse create() => TransceiverIFLoopbackTestResponse._();
  TransceiverIFLoopbackTestResponse createEmptyInstance() => create();
  static $pb.PbList<TransceiverIFLoopbackTestResponse> createRepeated() => $pb.PbList<TransceiverIFLoopbackTestResponse>();
  @$core.pragma('dart2js:noInline')
  static TransceiverIFLoopbackTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverIFLoopbackTestResponse>(create);
  static TransceiverIFLoopbackTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get berLoopbackTest => $_getN(0);
  @$pb.TagNumber(1)
  set berLoopbackTest($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBerLoopbackTest() => $_has(0);
  @$pb.TagNumber(1)
  void clearBerLoopbackTest() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get snrLoopbackTest => $_getN(1);
  @$pb.TagNumber(2)
  set snrLoopbackTest($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSnrLoopbackTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnrLoopbackTest() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rssiLoopbackTest => $_getN(2);
  @$pb.TagNumber(3)
  set rssiLoopbackTest($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRssiLoopbackTest() => $_has(2);
  @$pb.TagNumber(3)
  void clearRssiLoopbackTest() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get pllLock => $_getBF(3);
  @$pb.TagNumber(4)
  set pllLock($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPllLock() => $_has(3);
  @$pb.TagNumber(4)
  void clearPllLock() => clearField(4);
}

/// SpaceX.API.Device.TransceiverGetStatusResponse is a message:
class TransceiverGetStatusResponse extends $pb.GeneratedMessage {
  factory TransceiverGetStatusResponse({
    TransceiverModulatorState? modState,
    TransceiverModulatorState? demodState,
    TransceiverTxRxState? txState,
    TransceiverTxRxState? rxState,
    DishState? state,
    TransceiverFaults? faults,
    TransceiverTransmitBlankingState? transmitBlankingState,
    $core.double? modemAsicTemp,
    $core.double? txIfTemp,
  }) {
    final $result = create();
    if (modState != null) {
      $result.modState = modState;
    }
    if (demodState != null) {
      $result.demodState = demodState;
    }
    if (txState != null) {
      $result.txState = txState;
    }
    if (rxState != null) {
      $result.rxState = rxState;
    }
    if (state != null) {
      $result.state = state;
    }
    if (faults != null) {
      $result.faults = faults;
    }
    if (transmitBlankingState != null) {
      $result.transmitBlankingState = transmitBlankingState;
    }
    if (modemAsicTemp != null) {
      $result.modemAsicTemp = modemAsicTemp;
    }
    if (txIfTemp != null) {
      $result.txIfTemp = txIfTemp;
    }
    return $result;
  }
  TransceiverGetStatusResponse._() : super();
  factory TransceiverGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverGetStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<TransceiverModulatorState>(1, _omitFieldNames ? '' : 'modState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverModulatorState>(2, _omitFieldNames ? '' : 'demodState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverTxRxState>(3, _omitFieldNames ? '' : 'txState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<TransceiverTxRxState>(4, _omitFieldNames ? '' : 'rxState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<DishState>(1006, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: DishState.UNKNOWN, valueOf: DishState.valueOf, enumValues: DishState.values)
    ..aOM<TransceiverFaults>(1007, _omitFieldNames ? '' : 'faults', subBuilder: TransceiverFaults.create)
    ..e<TransceiverTransmitBlankingState>(1008, _omitFieldNames ? '' : 'transmitBlankingState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTransmitBlankingState.TB_UNKNOWN, valueOf: TransceiverTransmitBlankingState.valueOf, enumValues: TransceiverTransmitBlankingState.values)
    ..a<$core.double>(1009, _omitFieldNames ? '' : 'modemAsicTemp', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, _omitFieldNames ? '' : 'txIfTemp', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse clone() => TransceiverGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse copyWith(void Function(TransceiverGetStatusResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusResponse)) as TransceiverGetStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusResponse create() => TransceiverGetStatusResponse._();
  TransceiverGetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetStatusResponse> createRepeated() => $pb.PbList<TransceiverGetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetStatusResponse>(create);
  static TransceiverGetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TransceiverModulatorState get modState => $_getN(0);
  @$pb.TagNumber(1)
  set modState(TransceiverModulatorState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModState() => $_has(0);
  @$pb.TagNumber(1)
  void clearModState() => clearField(1);

  @$pb.TagNumber(2)
  TransceiverModulatorState get demodState => $_getN(1);
  @$pb.TagNumber(2)
  set demodState(TransceiverModulatorState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDemodState() => $_has(1);
  @$pb.TagNumber(2)
  void clearDemodState() => clearField(2);

  @$pb.TagNumber(3)
  TransceiverTxRxState get txState => $_getN(2);
  @$pb.TagNumber(3)
  set txState(TransceiverTxRxState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxState() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxState() => clearField(3);

  @$pb.TagNumber(4)
  TransceiverTxRxState get rxState => $_getN(3);
  @$pb.TagNumber(4)
  set rxState(TransceiverTxRxState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRxState() => $_has(3);
  @$pb.TagNumber(4)
  void clearRxState() => clearField(4);

  @$pb.TagNumber(1006)
  DishState get state => $_getN(4);
  @$pb.TagNumber(1006)
  set state(DishState v) { setField(1006, v); }
  @$pb.TagNumber(1006)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(1006)
  void clearState() => clearField(1006);

  @$pb.TagNumber(1007)
  TransceiverFaults get faults => $_getN(5);
  @$pb.TagNumber(1007)
  set faults(TransceiverFaults v) { setField(1007, v); }
  @$pb.TagNumber(1007)
  $core.bool hasFaults() => $_has(5);
  @$pb.TagNumber(1007)
  void clearFaults() => clearField(1007);
  @$pb.TagNumber(1007)
  TransceiverFaults ensureFaults() => $_ensure(5);

  @$pb.TagNumber(1008)
  TransceiverTransmitBlankingState get transmitBlankingState => $_getN(6);
  @$pb.TagNumber(1008)
  set transmitBlankingState(TransceiverTransmitBlankingState v) { setField(1008, v); }
  @$pb.TagNumber(1008)
  $core.bool hasTransmitBlankingState() => $_has(6);
  @$pb.TagNumber(1008)
  void clearTransmitBlankingState() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get modemAsicTemp => $_getN(7);
  @$pb.TagNumber(1009)
  set modemAsicTemp($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1009)
  $core.bool hasModemAsicTemp() => $_has(7);
  @$pb.TagNumber(1009)
  void clearModemAsicTemp() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.double get txIfTemp => $_getN(8);
  @$pb.TagNumber(1010)
  set txIfTemp($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1010)
  $core.bool hasTxIfTemp() => $_has(8);
  @$pb.TagNumber(1010)
  void clearTxIfTemp() => clearField(1010);
}

/// SpaceX.API.Device.TransceiverFaults is a message:
class TransceiverFaults extends $pb.GeneratedMessage {
  factory TransceiverFaults({
    $core.bool? overTempModemAsicFault,
    $core.bool? overTempPcbaFault,
    $core.bool? dcVoltageFault,
  }) {
    final $result = create();
    if (overTempModemAsicFault != null) {
      $result.overTempModemAsicFault = overTempModemAsicFault;
    }
    if (overTempPcbaFault != null) {
      $result.overTempPcbaFault = overTempPcbaFault;
    }
    if (dcVoltageFault != null) {
      $result.dcVoltageFault = dcVoltageFault;
    }
    return $result;
  }
  TransceiverFaults._() : super();
  factory TransceiverFaults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverFaults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverFaults', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'overTempModemAsicFault')
    ..aOB(2, _omitFieldNames ? '' : 'overTempPcbaFault')
    ..aOB(3, _omitFieldNames ? '' : 'dcVoltageFault')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverFaults clone() => TransceiverFaults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverFaults copyWith(void Function(TransceiverFaults) updates) => super.copyWith((message) => updates(message as TransceiverFaults)) as TransceiverFaults;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverFaults create() => TransceiverFaults._();
  TransceiverFaults createEmptyInstance() => create();
  static $pb.PbList<TransceiverFaults> createRepeated() => $pb.PbList<TransceiverFaults>();
  @$core.pragma('dart2js:noInline')
  static TransceiverFaults getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverFaults>(create);
  static TransceiverFaults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get overTempModemAsicFault => $_getBF(0);
  @$pb.TagNumber(1)
  set overTempModemAsicFault($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOverTempModemAsicFault() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverTempModemAsicFault() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get overTempPcbaFault => $_getBF(1);
  @$pb.TagNumber(2)
  set overTempPcbaFault($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOverTempPcbaFault() => $_has(1);
  @$pb.TagNumber(2)
  void clearOverTempPcbaFault() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get dcVoltageFault => $_getBF(2);
  @$pb.TagNumber(3)
  set dcVoltageFault($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDcVoltageFault() => $_has(2);
  @$pb.TagNumber(3)
  void clearDcVoltageFault() => clearField(3);
}

/// SpaceX.API.Device.TransceiverGetTelemetryResponse is a message:
class TransceiverGetTelemetryResponse extends $pb.GeneratedMessage {
  factory TransceiverGetTelemetryResponse({
    $core.int? antennaPointingMode,
    $core.double? antennaPitch,
    $core.double? antennaRoll,
    $core.double? antennaRxTheta,
    $core.double? antennaTrueHeading,
    $core.int? rxChannel,
    $core.int? currentCellId,
    $core.double? secondsUntilSlotEnd,
    $core.double? wbRssiPeakMagDb,
    $core.double? popPingDropRate,
    $core.double? snrDb,
    $core.double? l1SnrAvgDb,
    $core.double? l1SnrMinDb,
    $core.double? l1SnrMaxDb,
    $core.int? lmacSatelliteId,
    $core.int? targetSatelliteId,
    $core.int? grantMcs,
    $core.double? grantSymbolsAvg,
    $core.int? dedGrant,
    $core.int? mobilityProactiveSlotChange,
    $core.int? mobilityReactiveSlotChange,
    $core.int? rfpTotalSynFailed,
    $core.int? numOutOfSeq,
    $core.int? numUlmapDrop,
    $core.double? currentSecondsOfSchedule,
    $core.int? sendLabelSwitchToGroundFailedCalls,
    $core.double? emaVelocityX,
    $core.double? emaVelocityY,
    $core.double? emaVelocityZ,
    $core.double? ceRssiDb,
  }) {
    final $result = create();
    if (antennaPointingMode != null) {
      $result.antennaPointingMode = antennaPointingMode;
    }
    if (antennaPitch != null) {
      $result.antennaPitch = antennaPitch;
    }
    if (antennaRoll != null) {
      $result.antennaRoll = antennaRoll;
    }
    if (antennaRxTheta != null) {
      $result.antennaRxTheta = antennaRxTheta;
    }
    if (antennaTrueHeading != null) {
      $result.antennaTrueHeading = antennaTrueHeading;
    }
    if (rxChannel != null) {
      $result.rxChannel = rxChannel;
    }
    if (currentCellId != null) {
      $result.currentCellId = currentCellId;
    }
    if (secondsUntilSlotEnd != null) {
      $result.secondsUntilSlotEnd = secondsUntilSlotEnd;
    }
    if (wbRssiPeakMagDb != null) {
      $result.wbRssiPeakMagDb = wbRssiPeakMagDb;
    }
    if (popPingDropRate != null) {
      $result.popPingDropRate = popPingDropRate;
    }
    if (snrDb != null) {
      $result.snrDb = snrDb;
    }
    if (l1SnrAvgDb != null) {
      $result.l1SnrAvgDb = l1SnrAvgDb;
    }
    if (l1SnrMinDb != null) {
      $result.l1SnrMinDb = l1SnrMinDb;
    }
    if (l1SnrMaxDb != null) {
      $result.l1SnrMaxDb = l1SnrMaxDb;
    }
    if (lmacSatelliteId != null) {
      $result.lmacSatelliteId = lmacSatelliteId;
    }
    if (targetSatelliteId != null) {
      $result.targetSatelliteId = targetSatelliteId;
    }
    if (grantMcs != null) {
      $result.grantMcs = grantMcs;
    }
    if (grantSymbolsAvg != null) {
      $result.grantSymbolsAvg = grantSymbolsAvg;
    }
    if (dedGrant != null) {
      $result.dedGrant = dedGrant;
    }
    if (mobilityProactiveSlotChange != null) {
      $result.mobilityProactiveSlotChange = mobilityProactiveSlotChange;
    }
    if (mobilityReactiveSlotChange != null) {
      $result.mobilityReactiveSlotChange = mobilityReactiveSlotChange;
    }
    if (rfpTotalSynFailed != null) {
      $result.rfpTotalSynFailed = rfpTotalSynFailed;
    }
    if (numOutOfSeq != null) {
      $result.numOutOfSeq = numOutOfSeq;
    }
    if (numUlmapDrop != null) {
      $result.numUlmapDrop = numUlmapDrop;
    }
    if (currentSecondsOfSchedule != null) {
      $result.currentSecondsOfSchedule = currentSecondsOfSchedule;
    }
    if (sendLabelSwitchToGroundFailedCalls != null) {
      $result.sendLabelSwitchToGroundFailedCalls = sendLabelSwitchToGroundFailedCalls;
    }
    if (emaVelocityX != null) {
      $result.emaVelocityX = emaVelocityX;
    }
    if (emaVelocityY != null) {
      $result.emaVelocityY = emaVelocityY;
    }
    if (emaVelocityZ != null) {
      $result.emaVelocityZ = emaVelocityZ;
    }
    if (ceRssiDb != null) {
      $result.ceRssiDb = ceRssiDb;
    }
    return $result;
  }
  TransceiverGetTelemetryResponse._() : super();
  factory TransceiverGetTelemetryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransceiverGetTelemetryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1001, _omitFieldNames ? '' : 'antennaPointingMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(1002, _omitFieldNames ? '' : 'antennaPitch', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, _omitFieldNames ? '' : 'antennaRoll', $pb.PbFieldType.OF)
    ..a<$core.double>(1004, _omitFieldNames ? '' : 'antennaRxTheta', $pb.PbFieldType.OF)
    ..a<$core.double>(1005, _omitFieldNames ? '' : 'antennaTrueHeading', $pb.PbFieldType.OF)
    ..a<$core.int>(1006, _omitFieldNames ? '' : 'rxChannel', $pb.PbFieldType.OU3)
    ..a<$core.int>(1007, _omitFieldNames ? '' : 'currentCellId', $pb.PbFieldType.OU3)
    ..a<$core.double>(1008, _omitFieldNames ? '' : 'secondsUntilSlotEnd', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, _omitFieldNames ? '' : 'wbRssiPeakMagDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, _omitFieldNames ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1011, _omitFieldNames ? '' : 'snrDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, _omitFieldNames ? '' : 'l1SnrAvgDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1013, _omitFieldNames ? '' : 'l1SnrMinDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1014, _omitFieldNames ? '' : 'l1SnrMaxDb', $pb.PbFieldType.OF)
    ..a<$core.int>(1015, _omitFieldNames ? '' : 'lmacSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1016, _omitFieldNames ? '' : 'targetSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1017, _omitFieldNames ? '' : 'grantMcs', $pb.PbFieldType.OU3)
    ..a<$core.double>(1018, _omitFieldNames ? '' : 'grantSymbolsAvg', $pb.PbFieldType.OF)
    ..a<$core.int>(1019, _omitFieldNames ? '' : 'dedGrant', $pb.PbFieldType.OU3)
    ..a<$core.int>(1020, _omitFieldNames ? '' : 'mobilityProactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1021, _omitFieldNames ? '' : 'mobilityReactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1022, _omitFieldNames ? '' : 'rfpTotalSynFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(1023, _omitFieldNames ? '' : 'numOutOfSeq', $pb.PbFieldType.OU3)
    ..a<$core.int>(1024, _omitFieldNames ? '' : 'numUlmapDrop', $pb.PbFieldType.OU3)
    ..a<$core.double>(1025, _omitFieldNames ? '' : 'currentSecondsOfSchedule', $pb.PbFieldType.OF)
    ..a<$core.int>(1026, _omitFieldNames ? '' : 'sendLabelSwitchToGroundFailedCalls', $pb.PbFieldType.OU3)
    ..a<$core.double>(1027, _omitFieldNames ? '' : 'emaVelocityX', $pb.PbFieldType.OD)
    ..a<$core.double>(1028, _omitFieldNames ? '' : 'emaVelocityY', $pb.PbFieldType.OD)
    ..a<$core.double>(1029, _omitFieldNames ? '' : 'emaVelocityZ', $pb.PbFieldType.OD)
    ..a<$core.double>(1030, _omitFieldNames ? '' : 'ceRssiDb', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse clone() => TransceiverGetTelemetryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse copyWith(void Function(TransceiverGetTelemetryResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryResponse)) as TransceiverGetTelemetryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryResponse create() => TransceiverGetTelemetryResponse._();
  TransceiverGetTelemetryResponse createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetTelemetryResponse> createRepeated() => $pb.PbList<TransceiverGetTelemetryResponse>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetTelemetryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetTelemetryResponse>(create);
  static TransceiverGetTelemetryResponse? _defaultInstance;

  @$pb.TagNumber(1001)
  $core.int get antennaPointingMode => $_getIZ(0);
  @$pb.TagNumber(1001)
  set antennaPointingMode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1001)
  $core.bool hasAntennaPointingMode() => $_has(0);
  @$pb.TagNumber(1001)
  void clearAntennaPointingMode() => clearField(1001);

  @$pb.TagNumber(1002)
  $core.double get antennaPitch => $_getN(1);
  @$pb.TagNumber(1002)
  set antennaPitch($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(1002)
  $core.bool hasAntennaPitch() => $_has(1);
  @$pb.TagNumber(1002)
  void clearAntennaPitch() => clearField(1002);

  @$pb.TagNumber(1003)
  $core.double get antennaRoll => $_getN(2);
  @$pb.TagNumber(1003)
  set antennaRoll($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(1003)
  $core.bool hasAntennaRoll() => $_has(2);
  @$pb.TagNumber(1003)
  void clearAntennaRoll() => clearField(1003);

  @$pb.TagNumber(1004)
  $core.double get antennaRxTheta => $_getN(3);
  @$pb.TagNumber(1004)
  set antennaRxTheta($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(1004)
  $core.bool hasAntennaRxTheta() => $_has(3);
  @$pb.TagNumber(1004)
  void clearAntennaRxTheta() => clearField(1004);

  @$pb.TagNumber(1005)
  $core.double get antennaTrueHeading => $_getN(4);
  @$pb.TagNumber(1005)
  set antennaTrueHeading($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(1005)
  $core.bool hasAntennaTrueHeading() => $_has(4);
  @$pb.TagNumber(1005)
  void clearAntennaTrueHeading() => clearField(1005);

  @$pb.TagNumber(1006)
  $core.int get rxChannel => $_getIZ(5);
  @$pb.TagNumber(1006)
  set rxChannel($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(1006)
  $core.bool hasRxChannel() => $_has(5);
  @$pb.TagNumber(1006)
  void clearRxChannel() => clearField(1006);

  @$pb.TagNumber(1007)
  $core.int get currentCellId => $_getIZ(6);
  @$pb.TagNumber(1007)
  set currentCellId($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(1007)
  $core.bool hasCurrentCellId() => $_has(6);
  @$pb.TagNumber(1007)
  void clearCurrentCellId() => clearField(1007);

  @$pb.TagNumber(1008)
  $core.double get secondsUntilSlotEnd => $_getN(7);
  @$pb.TagNumber(1008)
  set secondsUntilSlotEnd($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(1008)
  $core.bool hasSecondsUntilSlotEnd() => $_has(7);
  @$pb.TagNumber(1008)
  void clearSecondsUntilSlotEnd() => clearField(1008);

  @$pb.TagNumber(1009)
  $core.double get wbRssiPeakMagDb => $_getN(8);
  @$pb.TagNumber(1009)
  set wbRssiPeakMagDb($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(1009)
  $core.bool hasWbRssiPeakMagDb() => $_has(8);
  @$pb.TagNumber(1009)
  void clearWbRssiPeakMagDb() => clearField(1009);

  @$pb.TagNumber(1010)
  $core.double get popPingDropRate => $_getN(9);
  @$pb.TagNumber(1010)
  set popPingDropRate($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(1010)
  $core.bool hasPopPingDropRate() => $_has(9);
  @$pb.TagNumber(1010)
  void clearPopPingDropRate() => clearField(1010);

  @$pb.TagNumber(1011)
  $core.double get snrDb => $_getN(10);
  @$pb.TagNumber(1011)
  set snrDb($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(1011)
  $core.bool hasSnrDb() => $_has(10);
  @$pb.TagNumber(1011)
  void clearSnrDb() => clearField(1011);

  @$pb.TagNumber(1012)
  $core.double get l1SnrAvgDb => $_getN(11);
  @$pb.TagNumber(1012)
  set l1SnrAvgDb($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(1012)
  $core.bool hasL1SnrAvgDb() => $_has(11);
  @$pb.TagNumber(1012)
  void clearL1SnrAvgDb() => clearField(1012);

  @$pb.TagNumber(1013)
  $core.double get l1SnrMinDb => $_getN(12);
  @$pb.TagNumber(1013)
  set l1SnrMinDb($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(1013)
  $core.bool hasL1SnrMinDb() => $_has(12);
  @$pb.TagNumber(1013)
  void clearL1SnrMinDb() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.double get l1SnrMaxDb => $_getN(13);
  @$pb.TagNumber(1014)
  set l1SnrMaxDb($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(1014)
  $core.bool hasL1SnrMaxDb() => $_has(13);
  @$pb.TagNumber(1014)
  void clearL1SnrMaxDb() => clearField(1014);

  @$pb.TagNumber(1015)
  $core.int get lmacSatelliteId => $_getIZ(14);
  @$pb.TagNumber(1015)
  set lmacSatelliteId($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(1015)
  $core.bool hasLmacSatelliteId() => $_has(14);
  @$pb.TagNumber(1015)
  void clearLmacSatelliteId() => clearField(1015);

  @$pb.TagNumber(1016)
  $core.int get targetSatelliteId => $_getIZ(15);
  @$pb.TagNumber(1016)
  set targetSatelliteId($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(1016)
  $core.bool hasTargetSatelliteId() => $_has(15);
  @$pb.TagNumber(1016)
  void clearTargetSatelliteId() => clearField(1016);

  @$pb.TagNumber(1017)
  $core.int get grantMcs => $_getIZ(16);
  @$pb.TagNumber(1017)
  set grantMcs($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(1017)
  $core.bool hasGrantMcs() => $_has(16);
  @$pb.TagNumber(1017)
  void clearGrantMcs() => clearField(1017);

  @$pb.TagNumber(1018)
  $core.double get grantSymbolsAvg => $_getN(17);
  @$pb.TagNumber(1018)
  set grantSymbolsAvg($core.double v) { $_setFloat(17, v); }
  @$pb.TagNumber(1018)
  $core.bool hasGrantSymbolsAvg() => $_has(17);
  @$pb.TagNumber(1018)
  void clearGrantSymbolsAvg() => clearField(1018);

  @$pb.TagNumber(1019)
  $core.int get dedGrant => $_getIZ(18);
  @$pb.TagNumber(1019)
  set dedGrant($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(1019)
  $core.bool hasDedGrant() => $_has(18);
  @$pb.TagNumber(1019)
  void clearDedGrant() => clearField(1019);

  @$pb.TagNumber(1020)
  $core.int get mobilityProactiveSlotChange => $_getIZ(19);
  @$pb.TagNumber(1020)
  set mobilityProactiveSlotChange($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(1020)
  $core.bool hasMobilityProactiveSlotChange() => $_has(19);
  @$pb.TagNumber(1020)
  void clearMobilityProactiveSlotChange() => clearField(1020);

  @$pb.TagNumber(1021)
  $core.int get mobilityReactiveSlotChange => $_getIZ(20);
  @$pb.TagNumber(1021)
  set mobilityReactiveSlotChange($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(1021)
  $core.bool hasMobilityReactiveSlotChange() => $_has(20);
  @$pb.TagNumber(1021)
  void clearMobilityReactiveSlotChange() => clearField(1021);

  @$pb.TagNumber(1022)
  $core.int get rfpTotalSynFailed => $_getIZ(21);
  @$pb.TagNumber(1022)
  set rfpTotalSynFailed($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(1022)
  $core.bool hasRfpTotalSynFailed() => $_has(21);
  @$pb.TagNumber(1022)
  void clearRfpTotalSynFailed() => clearField(1022);

  @$pb.TagNumber(1023)
  $core.int get numOutOfSeq => $_getIZ(22);
  @$pb.TagNumber(1023)
  set numOutOfSeq($core.int v) { $_setUnsignedInt32(22, v); }
  @$pb.TagNumber(1023)
  $core.bool hasNumOutOfSeq() => $_has(22);
  @$pb.TagNumber(1023)
  void clearNumOutOfSeq() => clearField(1023);

  @$pb.TagNumber(1024)
  $core.int get numUlmapDrop => $_getIZ(23);
  @$pb.TagNumber(1024)
  set numUlmapDrop($core.int v) { $_setUnsignedInt32(23, v); }
  @$pb.TagNumber(1024)
  $core.bool hasNumUlmapDrop() => $_has(23);
  @$pb.TagNumber(1024)
  void clearNumUlmapDrop() => clearField(1024);

  @$pb.TagNumber(1025)
  $core.double get currentSecondsOfSchedule => $_getN(24);
  @$pb.TagNumber(1025)
  set currentSecondsOfSchedule($core.double v) { $_setFloat(24, v); }
  @$pb.TagNumber(1025)
  $core.bool hasCurrentSecondsOfSchedule() => $_has(24);
  @$pb.TagNumber(1025)
  void clearCurrentSecondsOfSchedule() => clearField(1025);

  @$pb.TagNumber(1026)
  $core.int get sendLabelSwitchToGroundFailedCalls => $_getIZ(25);
  @$pb.TagNumber(1026)
  set sendLabelSwitchToGroundFailedCalls($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(1026)
  $core.bool hasSendLabelSwitchToGroundFailedCalls() => $_has(25);
  @$pb.TagNumber(1026)
  void clearSendLabelSwitchToGroundFailedCalls() => clearField(1026);

  @$pb.TagNumber(1027)
  $core.double get emaVelocityX => $_getN(26);
  @$pb.TagNumber(1027)
  set emaVelocityX($core.double v) { $_setDouble(26, v); }
  @$pb.TagNumber(1027)
  $core.bool hasEmaVelocityX() => $_has(26);
  @$pb.TagNumber(1027)
  void clearEmaVelocityX() => clearField(1027);

  @$pb.TagNumber(1028)
  $core.double get emaVelocityY => $_getN(27);
  @$pb.TagNumber(1028)
  set emaVelocityY($core.double v) { $_setDouble(27, v); }
  @$pb.TagNumber(1028)
  $core.bool hasEmaVelocityY() => $_has(27);
  @$pb.TagNumber(1028)
  void clearEmaVelocityY() => clearField(1028);

  @$pb.TagNumber(1029)
  $core.double get emaVelocityZ => $_getN(28);
  @$pb.TagNumber(1029)
  set emaVelocityZ($core.double v) { $_setDouble(28, v); }
  @$pb.TagNumber(1029)
  $core.bool hasEmaVelocityZ() => $_has(28);
  @$pb.TagNumber(1029)
  void clearEmaVelocityZ() => clearField(1029);

  @$pb.TagNumber(1030)
  $core.double get ceRssiDb => $_getN(29);
  @$pb.TagNumber(1030)
  set ceRssiDb($core.double v) { $_setFloat(29, v); }
  @$pb.TagNumber(1030)
  $core.bool hasCeRssiDb() => $_has(29);
  @$pb.TagNumber(1030)
  void clearCeRssiDb() => clearField(1030);
}

enum ToDevice_Message {
  request, 
  healthCheck, 
  notSet
}

/// SpaceX.API.Device.ToDevice is a message:
class ToDevice extends $pb.GeneratedMessage {
  factory ToDevice({
    Request? request,
    HealthCheck? healthCheck,
  }) {
    final $result = create();
    if (request != null) {
      $result.request = request;
    }
    if (healthCheck != null) {
      $result.healthCheck = healthCheck;
    }
    return $result;
  }
  ToDevice._() : super();
  factory ToDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ToDevice_Message> _ToDevice_MessageByTag = {
    1 : ToDevice_Message.request,
    2 : ToDevice_Message.healthCheck,
    0 : ToDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ToDevice', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Request>(1, _omitFieldNames ? '' : 'request', subBuilder: Request.create)
    ..aOM<HealthCheck>(2, _omitFieldNames ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToDevice clone() => ToDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToDevice copyWith(void Function(ToDevice) updates) => super.copyWith((message) => updates(message as ToDevice)) as ToDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToDevice create() => ToDevice._();
  ToDevice createEmptyInstance() => create();
  static $pb.PbList<ToDevice> createRepeated() => $pb.PbList<ToDevice>();
  @$core.pragma('dart2js:noInline')
  static ToDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToDevice>(create);
  static ToDevice? _defaultInstance;

  ToDevice_Message whichMessage() => _ToDevice_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  HealthCheck get healthCheck => $_getN(1);
  @$pb.TagNumber(2)
  set healthCheck(HealthCheck v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHealthCheck() => $_has(1);
  @$pb.TagNumber(2)
  void clearHealthCheck() => clearField(2);
  @$pb.TagNumber(2)
  HealthCheck ensureHealthCheck() => $_ensure(1);
}

/// SpaceX.API.Device.HealthCheck is a message:
class HealthCheck extends $pb.GeneratedMessage {
  factory HealthCheck() => create();
  HealthCheck._() : super();
  factory HealthCheck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthCheck', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthCheck clone() => HealthCheck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthCheck copyWith(void Function(HealthCheck) updates) => super.copyWith((message) => updates(message as HealthCheck)) as HealthCheck;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthCheck create() => HealthCheck._();
  HealthCheck createEmptyInstance() => create();
  static $pb.PbList<HealthCheck> createRepeated() => $pb.PbList<HealthCheck>();
  @$core.pragma('dart2js:noInline')
  static HealthCheck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthCheck>(create);
  static HealthCheck? _defaultInstance;
}

enum FromDevice_Message {
  response, 
  event, 
  healthCheck, 
  notSet
}

/// SpaceX.API.Device.FromDevice is a message:
class FromDevice extends $pb.GeneratedMessage {
  factory FromDevice({
    Response? response,
    Event? event,
    HealthCheck? healthCheck,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    if (event != null) {
      $result.event = event;
    }
    if (healthCheck != null) {
      $result.healthCheck = healthCheck;
    }
    return $result;
  }
  FromDevice._() : super();
  factory FromDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FromDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FromDevice_Message> _FromDevice_MessageByTag = {
    1 : FromDevice_Message.response,
    2 : FromDevice_Message.event,
    3 : FromDevice_Message.healthCheck,
    0 : FromDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FromDevice', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Response>(1, _omitFieldNames ? '' : 'response', subBuilder: Response.create)
    ..aOM<Event>(2, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
    ..aOM<HealthCheck>(3, _omitFieldNames ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FromDevice clone() => FromDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FromDevice copyWith(void Function(FromDevice) updates) => super.copyWith((message) => updates(message as FromDevice)) as FromDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FromDevice create() => FromDevice._();
  FromDevice createEmptyInstance() => create();
  static $pb.PbList<FromDevice> createRepeated() => $pb.PbList<FromDevice>();
  @$core.pragma('dart2js:noInline')
  static FromDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FromDevice>(create);
  static FromDevice? _defaultInstance;

  FromDevice_Message whichMessage() => _FromDevice_MessageByTag[$_whichOneof(0)]!;
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Response get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(Response v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  Response ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  Event get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  Event ensureEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  HealthCheck get healthCheck => $_getN(2);
  @$pb.TagNumber(3)
  set healthCheck(HealthCheck v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthCheck() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthCheck() => clearField(3);
  @$pb.TagNumber(3)
  HealthCheck ensureHealthCheck() => $_ensure(2);
}

enum Event_Event {
  wifiNewClientConnected, 
  wifiAccountBonding, 
  wifiNewPeer, 
  wifiCloudStatus, 
  notSet
}

/// SpaceX.API.Device.Event is a message:
class Event extends $pb.GeneratedMessage {
  factory Event({
    WifiNewClientConnectedEvent? wifiNewClientConnected,
    WifiAccountBondingEvent? wifiAccountBonding,
    WifiNewPeerEvent? wifiNewPeer,
    WifiCloudStatusEvent? wifiCloudStatus,
  }) {
    final $result = create();
    if (wifiNewClientConnected != null) {
      $result.wifiNewClientConnected = wifiNewClientConnected;
    }
    if (wifiAccountBonding != null) {
      $result.wifiAccountBonding = wifiAccountBonding;
    }
    if (wifiNewPeer != null) {
      $result.wifiNewPeer = wifiNewPeer;
    }
    if (wifiCloudStatus != null) {
      $result.wifiCloudStatus = wifiCloudStatus;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Event_Event> _Event_EventByTag = {
    3001 : Event_Event.wifiNewClientConnected,
    3002 : Event_Event.wifiAccountBonding,
    3003 : Event_Event.wifiNewPeer,
    3004 : Event_Event.wifiCloudStatus,
    0 : Event_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [3001, 3002, 3003, 3004])
    ..aOM<WifiNewClientConnectedEvent>(3001, _omitFieldNames ? '' : 'wifiNewClientConnected', subBuilder: WifiNewClientConnectedEvent.create)
    ..aOM<WifiAccountBondingEvent>(3002, _omitFieldNames ? '' : 'wifiAccountBonding', subBuilder: WifiAccountBondingEvent.create)
    ..aOM<WifiNewPeerEvent>(3003, _omitFieldNames ? '' : 'wifiNewPeer', subBuilder: WifiNewPeerEvent.create)
    ..aOM<WifiCloudStatusEvent>(3004, _omitFieldNames ? '' : 'wifiCloudStatus', subBuilder: WifiCloudStatusEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  Event_Event whichEvent() => _Event_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(3001)
  WifiNewClientConnectedEvent get wifiNewClientConnected => $_getN(0);
  @$pb.TagNumber(3001)
  set wifiNewClientConnected(WifiNewClientConnectedEvent v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiNewClientConnected() => $_has(0);
  @$pb.TagNumber(3001)
  void clearWifiNewClientConnected() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiNewClientConnectedEvent ensureWifiNewClientConnected() => $_ensure(0);

  @$pb.TagNumber(3002)
  WifiAccountBondingEvent get wifiAccountBonding => $_getN(1);
  @$pb.TagNumber(3002)
  set wifiAccountBonding(WifiAccountBondingEvent v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiAccountBonding() => $_has(1);
  @$pb.TagNumber(3002)
  void clearWifiAccountBonding() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiAccountBondingEvent ensureWifiAccountBonding() => $_ensure(1);

  @$pb.TagNumber(3003)
  WifiNewPeerEvent get wifiNewPeer => $_getN(2);
  @$pb.TagNumber(3003)
  set wifiNewPeer(WifiNewPeerEvent v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasWifiNewPeer() => $_has(2);
  @$pb.TagNumber(3003)
  void clearWifiNewPeer() => clearField(3003);
  @$pb.TagNumber(3003)
  WifiNewPeerEvent ensureWifiNewPeer() => $_ensure(2);

  @$pb.TagNumber(3004)
  WifiCloudStatusEvent get wifiCloudStatus => $_getN(3);
  @$pb.TagNumber(3004)
  set wifiCloudStatus(WifiCloudStatusEvent v) { setField(3004, v); }
  @$pb.TagNumber(3004)
  $core.bool hasWifiCloudStatus() => $_has(3);
  @$pb.TagNumber(3004)
  void clearWifiCloudStatus() => clearField(3004);
  @$pb.TagNumber(3004)
  WifiCloudStatusEvent ensureWifiCloudStatus() => $_ensure(3);
}

/// SpaceX.API.Device.WifiNewClientConnectedEvent is a message:
class WifiNewClientConnectedEvent extends $pb.GeneratedMessage {
  factory WifiNewClientConnectedEvent({
    WifiClient? client,
  }) {
    final $result = create();
    if (client != null) {
      $result.client = client;
    }
    return $result;
  }
  WifiNewClientConnectedEvent._() : super();
  factory WifiNewClientConnectedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewClientConnectedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNewClientConnectedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiClient>(1, _omitFieldNames ? '' : 'client', subBuilder: WifiClient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent clone() => WifiNewClientConnectedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent copyWith(void Function(WifiNewClientConnectedEvent) updates) => super.copyWith((message) => updates(message as WifiNewClientConnectedEvent)) as WifiNewClientConnectedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNewClientConnectedEvent create() => WifiNewClientConnectedEvent._();
  WifiNewClientConnectedEvent createEmptyInstance() => create();
  static $pb.PbList<WifiNewClientConnectedEvent> createRepeated() => $pb.PbList<WifiNewClientConnectedEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiNewClientConnectedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNewClientConnectedEvent>(create);
  static WifiNewClientConnectedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  WifiClient get client => $_getN(0);
  @$pb.TagNumber(1)
  set client(WifiClient v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClient() => $_has(0);
  @$pb.TagNumber(1)
  void clearClient() => clearField(1);
  @$pb.TagNumber(1)
  WifiClient ensureClient() => $_ensure(0);
}

/// SpaceX.API.Device.WifiAccountBondingEvent is a message:
class WifiAccountBondingEvent extends $pb.GeneratedMessage {
  factory WifiAccountBondingEvent({
    $core.String? dishId,
    $core.bool? isRepeater,
    $core.String? hardwareVersion,
  }) {
    final $result = create();
    if (dishId != null) {
      $result.dishId = dishId;
    }
    if (isRepeater != null) {
      $result.isRepeater = isRepeater;
    }
    if (hardwareVersion != null) {
      $result.hardwareVersion = hardwareVersion;
    }
    return $result;
  }
  WifiAccountBondingEvent._() : super();
  factory WifiAccountBondingEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAccountBondingEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiAccountBondingEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dishId')
    ..aOB(2, _omitFieldNames ? '' : 'isRepeater')
    ..aOS(3, _omitFieldNames ? '' : 'hardwareVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent clone() => WifiAccountBondingEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent copyWith(void Function(WifiAccountBondingEvent) updates) => super.copyWith((message) => updates(message as WifiAccountBondingEvent)) as WifiAccountBondingEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiAccountBondingEvent create() => WifiAccountBondingEvent._();
  WifiAccountBondingEvent createEmptyInstance() => create();
  static $pb.PbList<WifiAccountBondingEvent> createRepeated() => $pb.PbList<WifiAccountBondingEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiAccountBondingEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiAccountBondingEvent>(create);
  static WifiAccountBondingEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dishId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dishId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDishId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDishId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isRepeater => $_getBF(1);
  @$pb.TagNumber(2)
  set isRepeater($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsRepeater() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsRepeater() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hardwareVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set hardwareVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHardwareVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearHardwareVersion() => clearField(3);
}

/// SpaceX.API.Device.WifiNewPeerEvent is a message:
class WifiNewPeerEvent extends $pb.GeneratedMessage {
  factory WifiNewPeerEvent({
    $core.String? peerId,
  }) {
    final $result = create();
    if (peerId != null) {
      $result.peerId = peerId;
    }
    return $result;
  }
  WifiNewPeerEvent._() : super();
  factory WifiNewPeerEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewPeerEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiNewPeerEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'peerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent clone() => WifiNewPeerEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent copyWith(void Function(WifiNewPeerEvent) updates) => super.copyWith((message) => updates(message as WifiNewPeerEvent)) as WifiNewPeerEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiNewPeerEvent create() => WifiNewPeerEvent._();
  WifiNewPeerEvent createEmptyInstance() => create();
  static $pb.PbList<WifiNewPeerEvent> createRepeated() => $pb.PbList<WifiNewPeerEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiNewPeerEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiNewPeerEvent>(create);
  static WifiNewPeerEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set peerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerId() => clearField(1);
}

/// SpaceX.API.Device.WifiCloudStatusEvent is a message:
class WifiCloudStatusEvent extends $pb.GeneratedMessage {
  factory WifiCloudStatusEvent({
    $core.bool? directLinkToDish,
    $core.String? hardwareVersion,
  }) {
    final $result = create();
    if (directLinkToDish != null) {
      $result.directLinkToDish = directLinkToDish;
    }
    if (hardwareVersion != null) {
      $result.hardwareVersion = hardwareVersion;
    }
    return $result;
  }
  WifiCloudStatusEvent._() : super();
  factory WifiCloudStatusEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCloudStatusEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiCloudStatusEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'directLinkToDish')
    ..aOS(2, _omitFieldNames ? '' : 'hardwareVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCloudStatusEvent clone() => WifiCloudStatusEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCloudStatusEvent copyWith(void Function(WifiCloudStatusEvent) updates) => super.copyWith((message) => updates(message as WifiCloudStatusEvent)) as WifiCloudStatusEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiCloudStatusEvent create() => WifiCloudStatusEvent._();
  WifiCloudStatusEvent createEmptyInstance() => create();
  static $pb.PbList<WifiCloudStatusEvent> createRepeated() => $pb.PbList<WifiCloudStatusEvent>();
  @$core.pragma('dart2js:noInline')
  static WifiCloudStatusEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCloudStatusEvent>(create);
  static WifiCloudStatusEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get directLinkToDish => $_getBF(0);
  @$pb.TagNumber(1)
  set directLinkToDish($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirectLinkToDish() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirectLinkToDish() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hardwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set hardwareVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHardwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearHardwareVersion() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
