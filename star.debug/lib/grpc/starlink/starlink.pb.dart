///
//  Generated code. Do not modify.
//  source: starlink.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'status.pb.dart' as $1;

import 'starlink.pbenum.dart';
import 'network.pbenum.dart' as $2;

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

class Request extends $pb.GeneratedMessage {
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [15, 1001, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1022, 1023, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 2002, 2003, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 3001, 3002, 3003, 3007, 3008, 3009, 3012, 3013, 3015, 3016, 3017, 3018, 3019, 4001, 4003, 4004])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetId')
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<SignedData>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedRequest', subBuilder: SignedData.create)
    ..aOM<RebootRequest>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot', subBuilder: RebootRequest.create)
    ..aOM<SpeedTestRequest>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speedTest', subBuilder: SpeedTestRequest.create)
    ..aOM<GetStatusRequest>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getStatus', subBuilder: GetStatusRequest.create)
    ..aOM<AuthenticateRequest>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authenticate', subBuilder: AuthenticateRequest.create)
    ..aOM<GetNextIdRequest>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getNextId', subBuilder: GetNextIdRequest.create)
    ..aOM<GetHistoryRequest>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getHistory', subBuilder: GetHistoryRequest.create)
    ..aOM<GetDeviceInfoRequest>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoRequest.create)
    ..aOM<GetPingRequest>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPing', subBuilder: GetPingRequest.create)
    ..aOM<SetTrustedKeysRequest>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setTrustedKeys', subBuilder: SetTrustedKeysRequest.create)
    ..aOM<FactoryResetRequest>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryReset', subBuilder: FactoryResetRequest.create)
    ..aOM<GetLogRequest>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLog', subBuilder: GetLogRequest.create)
    ..aOM<SetSkuRequest>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setSku', subBuilder: SetSkuRequest.create)
    ..aOM<UpdateRequest>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'update', subBuilder: UpdateRequest.create)
    ..aOM<GetNetworkInterfacesRequest>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getNetworkInterfaces', subBuilder: GetNetworkInterfacesRequest.create)
    ..aOM<PingHostRequest>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingHost', subBuilder: PingHostRequest.create)
    ..aOM<GetLocationRequest>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLocation', subBuilder: GetLocationRequest.create)
    ..aOM<GetHeapDumpRequest>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getHeapDump', subBuilder: GetHeapDumpRequest.create)
    ..aOM<RestartControlRequest>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restartControl', subBuilder: RestartControlRequest.create)
    ..aOM<FuseRequest>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fuse', subBuilder: FuseRequest.create)
    ..aOM<GetPersistentStatsRequest>(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPersistentStats', subBuilder: GetPersistentStatsRequest.create)
    ..aOM<GetConnectionsRequest>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnections', subBuilder: GetConnectionsRequest.create)
    ..aOM<StartSpeedtestRequest>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startSpeedtest', subBuilder: StartSpeedtestRequest.create)
    ..aOM<GetSpeedtestStatusRequest>(1028, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSpeedtestStatus', subBuilder: GetSpeedtestStatusRequest.create)
    ..aOM<ReportClientSpeedtestRequest>(1029, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reportClientSpeedtest', subBuilder: ReportClientSpeedtestRequest.create)
    ..aOM<InitiateRemoteSshRequest>(1030, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initiateRemoteSsh', subBuilder: InitiateRemoteSshRequest.create)
    ..aOM<SelfTestRequest>(1031, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfTest', subBuilder: SelfTestRequest.create)
    ..aOM<SetTestModeRequest>(1032, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setTestMode', subBuilder: SetTestModeRequest.create)
    ..aOM<SoftwareUpdateRequest>(1033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdate', subBuilder: SoftwareUpdateRequest.create)
    ..aOM<EnableDebugTelemRequest>(1034, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableDebugTelem', subBuilder: EnableDebugTelemRequest.create)
    ..aOM<DishStowRequest>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishStow', subBuilder: DishStowRequest.create)
    ..aOM<DishGetContextRequest>(2003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetContext', subBuilder: DishGetContextRequest.create)
    ..aOM<DishSetEmcRequest>(2007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetEmc', subBuilder: DishSetEmcRequest.create)
    ..aOM<DishGetObstructionMapRequest>(2008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapRequest.create)
    ..aOM<DishGetEmcRequest>(2009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetEmc', subBuilder: DishGetEmcRequest.create)
    ..aOM<DishSetConfigRequest>(2010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetConfig', subBuilder: DishSetConfigRequest.create)
    ..aOM<DishGetConfigRequest>(2011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetConfig', subBuilder: DishGetConfigRequest.create)
    ..aOM<StartDishSelfTestRequest>(2012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDishSelfTest', subBuilder: StartDishSelfTestRequest.create)
    ..aOM<DishPowerSaveRequest>(2013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishPowerSave', subBuilder: DishPowerSaveRequest.create)
    ..aOM<DishInhibitGpsRequest>(2014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsRequest.create)
    ..aOM<WifiSetConfigRequest>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigRequest.create)
    ..aOM<WifiGetClientsRequest>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClients', subBuilder: WifiGetClientsRequest.create)
    ..aOM<WifiSetupRequest>(3003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetup', subBuilder: WifiSetupRequest.create)
    ..aOM<WifiGetPingMetricsRequest>(3007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetPingMetrics', subBuilder: WifiGetPingMetricsRequest.create)
    ..aOM<WifiGetDiagnosticsRequest>(3008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsRequest.create)
    ..aOM<WifiGetConfigRequest>(3009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigRequest.create)
    ..aOM<WifiSetMeshDeviceTrustRequest>(3012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetMeshDeviceTrust', subBuilder: WifiSetMeshDeviceTrustRequest.create)
    ..aOM<WifiSetMeshConfigRequest>(3013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetMeshConfig', subBuilder: WifiSetMeshConfigRequest.create)
    ..aOM<WifiGetClientHistoryRequest>(3015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClientHistory', subBuilder: WifiGetClientHistoryRequest.create)
    ..aOM<WifiSetAviationConformedRequest>(3016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetAviationConformed', subBuilder: WifiSetAviationConformedRequest.create)
    ..aOM<WifiSetClientGivenNameRequest>(3017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetClientGivenName', subBuilder: WifiSetClientGivenNameRequest.create)
    ..aOM<WifiSelfTestRequest>(3018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSelfTest', subBuilder: WifiSelfTestRequest.create)
    ..aOM<WifiCalibrationModeRequest>(3019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiCalibrationMode', subBuilder: WifiCalibrationModeRequest.create)
    ..aOM<TransceiverIFLoopbackTestRequest>(4001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverIfLoopbackTest', subBuilder: TransceiverIFLoopbackTestRequest.create)
    ..aOM<TransceiverGetStatusRequest>(4003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusRequest.create)
    ..aOM<TransceiverGetTelemetryRequest>(4004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryRequest.create)
    ..hasRequiredFields = false
  ;

  Request._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (targetId != null) {
      _result.targetId = targetId;
    }
    if (epochId != null) {
      _result.epochId = epochId;
    }
    if (signedRequest != null) {
      _result.signedRequest = signedRequest;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (speedTest != null) {
      _result.speedTest = speedTest;
    }
    if (getStatus != null) {
      _result.getStatus = getStatus;
    }
    if (authenticate != null) {
      _result.authenticate = authenticate;
    }
    if (getNextId != null) {
      _result.getNextId = getNextId;
    }
    if (getHistory != null) {
      _result.getHistory = getHistory;
    }
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
    }
    if (getPing != null) {
      _result.getPing = getPing;
    }
    if (setTrustedKeys != null) {
      _result.setTrustedKeys = setTrustedKeys;
    }
    if (factoryReset != null) {
      _result.factoryReset = factoryReset;
    }
    if (getLog != null) {
      _result.getLog = getLog;
    }
    if (setSku != null) {
      _result.setSku = setSku;
    }
    if (update != null) {
      _result.update = update;
    }
    if (getNetworkInterfaces != null) {
      _result.getNetworkInterfaces = getNetworkInterfaces;
    }
    if (pingHost != null) {
      _result.pingHost = pingHost;
    }
    if (getLocation != null) {
      _result.getLocation = getLocation;
    }
    if (getHeapDump != null) {
      _result.getHeapDump = getHeapDump;
    }
    if (restartControl != null) {
      _result.restartControl = restartControl;
    }
    if (fuse != null) {
      _result.fuse = fuse;
    }
    if (getPersistentStats != null) {
      _result.getPersistentStats = getPersistentStats;
    }
    if (getConnections != null) {
      _result.getConnections = getConnections;
    }
    if (startSpeedtest != null) {
      _result.startSpeedtest = startSpeedtest;
    }
    if (getSpeedtestStatus != null) {
      _result.getSpeedtestStatus = getSpeedtestStatus;
    }
    if (reportClientSpeedtest != null) {
      _result.reportClientSpeedtest = reportClientSpeedtest;
    }
    if (initiateRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.initiateRemoteSsh = initiateRemoteSsh;
    }
    if (selfTest != null) {
      _result.selfTest = selfTest;
    }
    if (setTestMode != null) {
      _result.setTestMode = setTestMode;
    }
    if (softwareUpdate != null) {
      _result.softwareUpdate = softwareUpdate;
    }
    if (enableDebugTelem != null) {
      _result.enableDebugTelem = enableDebugTelem;
    }
    if (dishStow != null) {
      _result.dishStow = dishStow;
    }
    if (dishGetContext != null) {
      _result.dishGetContext = dishGetContext;
    }
    if (dishSetEmc != null) {
      _result.dishSetEmc = dishSetEmc;
    }
    if (dishGetObstructionMap != null) {
      _result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishGetEmc != null) {
      _result.dishGetEmc = dishGetEmc;
    }
    if (dishSetConfig != null) {
      _result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      _result.dishGetConfig = dishGetConfig;
    }
    if (startDishSelfTest != null) {
      _result.startDishSelfTest = startDishSelfTest;
    }
    if (dishPowerSave != null) {
      _result.dishPowerSave = dishPowerSave;
    }
    if (dishInhibitGps != null) {
      _result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      _result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      _result.wifiGetClients = wifiGetClients;
    }
    if (wifiSetup != null) {
      _result.wifiSetup = wifiSetup;
    }
    if (wifiGetPingMetrics != null) {
      _result.wifiGetPingMetrics = wifiGetPingMetrics;
    }
    if (wifiGetDiagnostics != null) {
      _result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      _result.wifiGetConfig = wifiGetConfig;
    }
    if (wifiSetMeshDeviceTrust != null) {
      _result.wifiSetMeshDeviceTrust = wifiSetMeshDeviceTrust;
    }
    if (wifiSetMeshConfig != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.wifiSetMeshConfig = wifiSetMeshConfig;
    }
    if (wifiGetClientHistory != null) {
      _result.wifiGetClientHistory = wifiGetClientHistory;
    }
    if (wifiSetAviationConformed != null) {
      _result.wifiSetAviationConformed = wifiSetAviationConformed;
    }
    if (wifiSetClientGivenName != null) {
      _result.wifiSetClientGivenName = wifiSetClientGivenName;
    }
    if (wifiSelfTest != null) {
      _result.wifiSelfTest = wifiSelfTest;
    }
    if (wifiCalibrationMode != null) {
      _result.wifiCalibrationMode = wifiCalibrationMode;
    }
    if (transceiverIfLoopbackTest != null) {
      _result.transceiverIfLoopbackTest = transceiverIfLoopbackTest;
    }
    if (transceiverGetStatus != null) {
      _result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      _result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2002)
  DishStowRequest get dishStow => $_getN(33);
  @$pb.TagNumber(2002)
  set dishStow(DishStowRequest v) { setField(2002, v); }
  @$pb.TagNumber(2002)
  $core.bool hasDishStow() => $_has(33);
  @$pb.TagNumber(2002)
  void clearDishStow() => clearField(2002);
  @$pb.TagNumber(2002)
  DishStowRequest ensureDishStow() => $_ensure(33);

  @$pb.TagNumber(2003)
  DishGetContextRequest get dishGetContext => $_getN(34);
  @$pb.TagNumber(2003)
  set dishGetContext(DishGetContextRequest v) { setField(2003, v); }
  @$pb.TagNumber(2003)
  $core.bool hasDishGetContext() => $_has(34);
  @$pb.TagNumber(2003)
  void clearDishGetContext() => clearField(2003);
  @$pb.TagNumber(2003)
  DishGetContextRequest ensureDishGetContext() => $_ensure(34);

  @$pb.TagNumber(2007)
  DishSetEmcRequest get dishSetEmc => $_getN(35);
  @$pb.TagNumber(2007)
  set dishSetEmc(DishSetEmcRequest v) { setField(2007, v); }
  @$pb.TagNumber(2007)
  $core.bool hasDishSetEmc() => $_has(35);
  @$pb.TagNumber(2007)
  void clearDishSetEmc() => clearField(2007);
  @$pb.TagNumber(2007)
  DishSetEmcRequest ensureDishSetEmc() => $_ensure(35);

  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest get dishGetObstructionMap => $_getN(36);
  @$pb.TagNumber(2008)
  set dishGetObstructionMap(DishGetObstructionMapRequest v) { setField(2008, v); }
  @$pb.TagNumber(2008)
  $core.bool hasDishGetObstructionMap() => $_has(36);
  @$pb.TagNumber(2008)
  void clearDishGetObstructionMap() => clearField(2008);
  @$pb.TagNumber(2008)
  DishGetObstructionMapRequest ensureDishGetObstructionMap() => $_ensure(36);

  @$pb.TagNumber(2009)
  DishGetEmcRequest get dishGetEmc => $_getN(37);
  @$pb.TagNumber(2009)
  set dishGetEmc(DishGetEmcRequest v) { setField(2009, v); }
  @$pb.TagNumber(2009)
  $core.bool hasDishGetEmc() => $_has(37);
  @$pb.TagNumber(2009)
  void clearDishGetEmc() => clearField(2009);
  @$pb.TagNumber(2009)
  DishGetEmcRequest ensureDishGetEmc() => $_ensure(37);

  @$pb.TagNumber(2010)
  DishSetConfigRequest get dishSetConfig => $_getN(38);
  @$pb.TagNumber(2010)
  set dishSetConfig(DishSetConfigRequest v) { setField(2010, v); }
  @$pb.TagNumber(2010)
  $core.bool hasDishSetConfig() => $_has(38);
  @$pb.TagNumber(2010)
  void clearDishSetConfig() => clearField(2010);
  @$pb.TagNumber(2010)
  DishSetConfigRequest ensureDishSetConfig() => $_ensure(38);

  @$pb.TagNumber(2011)
  DishGetConfigRequest get dishGetConfig => $_getN(39);
  @$pb.TagNumber(2011)
  set dishGetConfig(DishGetConfigRequest v) { setField(2011, v); }
  @$pb.TagNumber(2011)
  $core.bool hasDishGetConfig() => $_has(39);
  @$pb.TagNumber(2011)
  void clearDishGetConfig() => clearField(2011);
  @$pb.TagNumber(2011)
  DishGetConfigRequest ensureDishGetConfig() => $_ensure(39);

  @$pb.TagNumber(2012)
  StartDishSelfTestRequest get startDishSelfTest => $_getN(40);
  @$pb.TagNumber(2012)
  set startDishSelfTest(StartDishSelfTestRequest v) { setField(2012, v); }
  @$pb.TagNumber(2012)
  $core.bool hasStartDishSelfTest() => $_has(40);
  @$pb.TagNumber(2012)
  void clearStartDishSelfTest() => clearField(2012);
  @$pb.TagNumber(2012)
  StartDishSelfTestRequest ensureStartDishSelfTest() => $_ensure(40);

  @$pb.TagNumber(2013)
  DishPowerSaveRequest get dishPowerSave => $_getN(41);
  @$pb.TagNumber(2013)
  set dishPowerSave(DishPowerSaveRequest v) { setField(2013, v); }
  @$pb.TagNumber(2013)
  $core.bool hasDishPowerSave() => $_has(41);
  @$pb.TagNumber(2013)
  void clearDishPowerSave() => clearField(2013);
  @$pb.TagNumber(2013)
  DishPowerSaveRequest ensureDishPowerSave() => $_ensure(41);

  @$pb.TagNumber(2014)
  DishInhibitGpsRequest get dishInhibitGps => $_getN(42);
  @$pb.TagNumber(2014)
  set dishInhibitGps(DishInhibitGpsRequest v) { setField(2014, v); }
  @$pb.TagNumber(2014)
  $core.bool hasDishInhibitGps() => $_has(42);
  @$pb.TagNumber(2014)
  void clearDishInhibitGps() => clearField(2014);
  @$pb.TagNumber(2014)
  DishInhibitGpsRequest ensureDishInhibitGps() => $_ensure(42);

  @$pb.TagNumber(3001)
  WifiSetConfigRequest get wifiSetConfig => $_getN(43);
  @$pb.TagNumber(3001)
  set wifiSetConfig(WifiSetConfigRequest v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasWifiSetConfig() => $_has(43);
  @$pb.TagNumber(3001)
  void clearWifiSetConfig() => clearField(3001);
  @$pb.TagNumber(3001)
  WifiSetConfigRequest ensureWifiSetConfig() => $_ensure(43);

  @$pb.TagNumber(3002)
  WifiGetClientsRequest get wifiGetClients => $_getN(44);
  @$pb.TagNumber(3002)
  set wifiGetClients(WifiGetClientsRequest v) { setField(3002, v); }
  @$pb.TagNumber(3002)
  $core.bool hasWifiGetClients() => $_has(44);
  @$pb.TagNumber(3002)
  void clearWifiGetClients() => clearField(3002);
  @$pb.TagNumber(3002)
  WifiGetClientsRequest ensureWifiGetClients() => $_ensure(44);

  @$pb.TagNumber(3003)
  WifiSetupRequest get wifiSetup => $_getN(45);
  @$pb.TagNumber(3003)
  set wifiSetup(WifiSetupRequest v) { setField(3003, v); }
  @$pb.TagNumber(3003)
  $core.bool hasWifiSetup() => $_has(45);
  @$pb.TagNumber(3003)
  void clearWifiSetup() => clearField(3003);
  @$pb.TagNumber(3003)
  WifiSetupRequest ensureWifiSetup() => $_ensure(45);

  @$pb.TagNumber(3007)
  WifiGetPingMetricsRequest get wifiGetPingMetrics => $_getN(46);
  @$pb.TagNumber(3007)
  set wifiGetPingMetrics(WifiGetPingMetricsRequest v) { setField(3007, v); }
  @$pb.TagNumber(3007)
  $core.bool hasWifiGetPingMetrics() => $_has(46);
  @$pb.TagNumber(3007)
  void clearWifiGetPingMetrics() => clearField(3007);
  @$pb.TagNumber(3007)
  WifiGetPingMetricsRequest ensureWifiGetPingMetrics() => $_ensure(46);

  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest get wifiGetDiagnostics => $_getN(47);
  @$pb.TagNumber(3008)
  set wifiGetDiagnostics(WifiGetDiagnosticsRequest v) { setField(3008, v); }
  @$pb.TagNumber(3008)
  $core.bool hasWifiGetDiagnostics() => $_has(47);
  @$pb.TagNumber(3008)
  void clearWifiGetDiagnostics() => clearField(3008);
  @$pb.TagNumber(3008)
  WifiGetDiagnosticsRequest ensureWifiGetDiagnostics() => $_ensure(47);

  @$pb.TagNumber(3009)
  WifiGetConfigRequest get wifiGetConfig => $_getN(48);
  @$pb.TagNumber(3009)
  set wifiGetConfig(WifiGetConfigRequest v) { setField(3009, v); }
  @$pb.TagNumber(3009)
  $core.bool hasWifiGetConfig() => $_has(48);
  @$pb.TagNumber(3009)
  void clearWifiGetConfig() => clearField(3009);
  @$pb.TagNumber(3009)
  WifiGetConfigRequest ensureWifiGetConfig() => $_ensure(48);

  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustRequest get wifiSetMeshDeviceTrust => $_getN(49);
  @$pb.TagNumber(3012)
  set wifiSetMeshDeviceTrust(WifiSetMeshDeviceTrustRequest v) { setField(3012, v); }
  @$pb.TagNumber(3012)
  $core.bool hasWifiSetMeshDeviceTrust() => $_has(49);
  @$pb.TagNumber(3012)
  void clearWifiSetMeshDeviceTrust() => clearField(3012);
  @$pb.TagNumber(3012)
  WifiSetMeshDeviceTrustRequest ensureWifiSetMeshDeviceTrust() => $_ensure(49);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigRequest get wifiSetMeshConfig => $_getN(50);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  set wifiSetMeshConfig(WifiSetMeshConfigRequest v) { setField(3013, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  $core.bool hasWifiSetMeshConfig() => $_has(50);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  void clearWifiSetMeshConfig() => clearField(3013);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3013)
  WifiSetMeshConfigRequest ensureWifiSetMeshConfig() => $_ensure(50);

  @$pb.TagNumber(3015)
  WifiGetClientHistoryRequest get wifiGetClientHistory => $_getN(51);
  @$pb.TagNumber(3015)
  set wifiGetClientHistory(WifiGetClientHistoryRequest v) { setField(3015, v); }
  @$pb.TagNumber(3015)
  $core.bool hasWifiGetClientHistory() => $_has(51);
  @$pb.TagNumber(3015)
  void clearWifiGetClientHistory() => clearField(3015);
  @$pb.TagNumber(3015)
  WifiGetClientHistoryRequest ensureWifiGetClientHistory() => $_ensure(51);

  @$pb.TagNumber(3016)
  WifiSetAviationConformedRequest get wifiSetAviationConformed => $_getN(52);
  @$pb.TagNumber(3016)
  set wifiSetAviationConformed(WifiSetAviationConformedRequest v) { setField(3016, v); }
  @$pb.TagNumber(3016)
  $core.bool hasWifiSetAviationConformed() => $_has(52);
  @$pb.TagNumber(3016)
  void clearWifiSetAviationConformed() => clearField(3016);
  @$pb.TagNumber(3016)
  WifiSetAviationConformedRequest ensureWifiSetAviationConformed() => $_ensure(52);

  @$pb.TagNumber(3017)
  WifiSetClientGivenNameRequest get wifiSetClientGivenName => $_getN(53);
  @$pb.TagNumber(3017)
  set wifiSetClientGivenName(WifiSetClientGivenNameRequest v) { setField(3017, v); }
  @$pb.TagNumber(3017)
  $core.bool hasWifiSetClientGivenName() => $_has(53);
  @$pb.TagNumber(3017)
  void clearWifiSetClientGivenName() => clearField(3017);
  @$pb.TagNumber(3017)
  WifiSetClientGivenNameRequest ensureWifiSetClientGivenName() => $_ensure(53);

  @$pb.TagNumber(3018)
  WifiSelfTestRequest get wifiSelfTest => $_getN(54);
  @$pb.TagNumber(3018)
  set wifiSelfTest(WifiSelfTestRequest v) { setField(3018, v); }
  @$pb.TagNumber(3018)
  $core.bool hasWifiSelfTest() => $_has(54);
  @$pb.TagNumber(3018)
  void clearWifiSelfTest() => clearField(3018);
  @$pb.TagNumber(3018)
  WifiSelfTestRequest ensureWifiSelfTest() => $_ensure(54);

  @$pb.TagNumber(3019)
  WifiCalibrationModeRequest get wifiCalibrationMode => $_getN(55);
  @$pb.TagNumber(3019)
  set wifiCalibrationMode(WifiCalibrationModeRequest v) { setField(3019, v); }
  @$pb.TagNumber(3019)
  $core.bool hasWifiCalibrationMode() => $_has(55);
  @$pb.TagNumber(3019)
  void clearWifiCalibrationMode() => clearField(3019);
  @$pb.TagNumber(3019)
  WifiCalibrationModeRequest ensureWifiCalibrationMode() => $_ensure(55);

  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestRequest get transceiverIfLoopbackTest => $_getN(56);
  @$pb.TagNumber(4001)
  set transceiverIfLoopbackTest(TransceiverIFLoopbackTestRequest v) { setField(4001, v); }
  @$pb.TagNumber(4001)
  $core.bool hasTransceiverIfLoopbackTest() => $_has(56);
  @$pb.TagNumber(4001)
  void clearTransceiverIfLoopbackTest() => clearField(4001);
  @$pb.TagNumber(4001)
  TransceiverIFLoopbackTestRequest ensureTransceiverIfLoopbackTest() => $_ensure(56);

  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest get transceiverGetStatus => $_getN(57);
  @$pb.TagNumber(4003)
  set transceiverGetStatus(TransceiverGetStatusRequest v) { setField(4003, v); }
  @$pb.TagNumber(4003)
  $core.bool hasTransceiverGetStatus() => $_has(57);
  @$pb.TagNumber(4003)
  void clearTransceiverGetStatus() => clearField(4003);
  @$pb.TagNumber(4003)
  TransceiverGetStatusRequest ensureTransceiverGetStatus() => $_ensure(57);

  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest get transceiverGetTelemetry => $_getN(58);
  @$pb.TagNumber(4004)
  set transceiverGetTelemetry(TransceiverGetTelemetryRequest v) { setField(4004, v); }
  @$pb.TagNumber(4004)
  $core.bool hasTransceiverGetTelemetry() => $_has(58);
  @$pb.TagNumber(4004)
  void clearTransceiverGetTelemetry() => clearField(4004);
  @$pb.TagNumber(4004)
  TransceiverGetTelemetryRequest ensureTransceiverGetTelemetry() => $_ensure(58);
}

class SignedData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignedData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignedData._() : super();
  factory SignedData({
    $core.List<$core.int>? data,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignedData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedData clone() => SignedData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedData copyWith(void Function(SignedData) updates) => super.copyWith((message) => updates(message as SignedData)) as SignedData; // ignore: deprecated_member_use
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

class RebootRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RebootRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RebootRequest._() : super();
  factory RebootRequest() => create();
  factory RebootRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootRequest clone() => RebootRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootRequest copyWith(void Function(RebootRequest) updates) => super.copyWith((message) => updates(message as RebootRequest)) as RebootRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RebootRequest create() => RebootRequest._();
  RebootRequest createEmptyInstance() => create();
  static $pb.PbList<RebootRequest> createRepeated() => $pb.PbList<RebootRequest>();
  @$core.pragma('dart2js:noInline')
  static RebootRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootRequest>(create);
  static RebootRequest? _defaultInstance;
}

class SpeedTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedTestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SpeedTestStats>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientSpeedtest', subBuilder: SpeedTestStats.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientRssi', $pb.PbFieldType.OF)
    ..aOM<ClientPlatform>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientPlatform', subBuilder: ClientPlatform.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SpeedTestRequest._() : super();
  factory SpeedTestRequest({
    SpeedTestStats? clientSpeedtest,
    $core.double? clientRssi,
    ClientPlatform? clientPlatform,
    $core.int? id,
  }) {
    final _result = create();
    if (clientSpeedtest != null) {
      _result.clientSpeedtest = clientSpeedtest;
    }
    if (clientRssi != null) {
      _result.clientRssi = clientRssi;
    }
    if (clientPlatform != null) {
      _result.clientPlatform = clientPlatform;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SpeedTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestRequest clone() => SpeedTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestRequest copyWith(void Function(SpeedTestRequest) updates) => super.copyWith((message) => updates(message as SpeedTestRequest)) as SpeedTestRequest; // ignore: deprecated_member_use
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

class SpeedTestStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedTestStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMs', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadStartTime')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadStartTime')
    ..e<SpeedTestStats_Target>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target', $pb.PbFieldType.OE, defaultOrMaker: SpeedTestStats_Target.UNKNOWN, valueOf: SpeedTestStats_Target.valueOf, enumValues: SpeedTestStats_Target.values)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tcpStreams', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SpeedTestStats._() : super();
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
    final _result = create();
    if (uploadMbps != null) {
      _result.uploadMbps = uploadMbps;
    }
    if (downloadMbps != null) {
      _result.downloadMbps = downloadMbps;
    }
    if (latencyMs != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.latencyMs = latencyMs;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (uploadStartTime != null) {
      _result.uploadStartTime = uploadStartTime;
    }
    if (downloadStartTime != null) {
      _result.downloadStartTime = downloadStartTime;
    }
    if (target != null) {
      _result.target = target;
    }
    if (tcpStreams != null) {
      _result.tcpStreams = tcpStreams;
    }
    return _result;
  }
  factory SpeedTestStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestStats clone() => SpeedTestStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestStats copyWith(void Function(SpeedTestStats) updates) => super.copyWith((message) => updates(message as SpeedTestStats)) as SpeedTestStats; // ignore: deprecated_member_use
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

class ClientPlatform extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientPlatform', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<ClientPlatform_Platform>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'platform', $pb.PbFieldType.OE, defaultOrMaker: ClientPlatform_Platform.UNKNOWN, valueOf: ClientPlatform_Platform.valueOf, enumValues: ClientPlatform_Platform.values)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'majorVersion', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minorVersion', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  ClientPlatform._() : super();
  factory ClientPlatform({
    ClientPlatform_Platform? platform,
    $core.double? majorVersion,
    $core.double? minorVersion,
  }) {
    final _result = create();
    if (platform != null) {
      _result.platform = platform;
    }
    if (majorVersion != null) {
      _result.majorVersion = majorVersion;
    }
    if (minorVersion != null) {
      _result.minorVersion = minorVersion;
    }
    return _result;
  }
  factory ClientPlatform.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientPlatform.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientPlatform clone() => ClientPlatform()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientPlatform copyWith(void Function(ClientPlatform) updates) => super.copyWith((message) => updates(message as ClientPlatform)) as ClientPlatform; // ignore: deprecated_member_use
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

class GetStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetStatusRequest._() : super();
  factory GetStatusRequest() => create();
  factory GetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusRequest clone() => GetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusRequest copyWith(void Function(GetStatusRequest) updates) => super.copyWith((message) => updates(message as GetStatusRequest)) as GetStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest create() => GetStatusRequest._();
  GetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetStatusRequest> createRepeated() => $pb.PbList<GetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusRequest>(create);
  static GetStatusRequest? _defaultInstance;
}

class AuthenticateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SignedData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'challenge', subBuilder: SignedData.create)
    ..hasRequiredFields = false
  ;

  AuthenticateRequest._() : super();
  factory AuthenticateRequest({
    SignedData? challenge,
  }) {
    final _result = create();
    if (challenge != null) {
      _result.challenge = challenge;
    }
    return _result;
  }
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) => super.copyWith((message) => updates(message as AuthenticateRequest)) as AuthenticateRequest; // ignore: deprecated_member_use
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

class GetNextIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNextIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNextIdRequest._() : super();
  factory GetNextIdRequest() => create();
  factory GetNextIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNextIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNextIdRequest clone() => GetNextIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNextIdRequest copyWith(void Function(GetNextIdRequest) updates) => super.copyWith((message) => updates(message as GetNextIdRequest)) as GetNextIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNextIdRequest create() => GetNextIdRequest._();
  GetNextIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetNextIdRequest> createRepeated() => $pb.PbList<GetNextIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNextIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNextIdRequest>(create);
  static GetNextIdRequest? _defaultInstance;
}

class GetHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetHistoryRequest._() : super();
  factory GetHistoryRequest() => create();
  factory GetHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHistoryRequest clone() => GetHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHistoryRequest copyWith(void Function(GetHistoryRequest) updates) => super.copyWith((message) => updates(message as GetHistoryRequest)) as GetHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest create() => GetHistoryRequest._();
  GetHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetHistoryRequest> createRepeated() => $pb.PbList<GetHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHistoryRequest>(create);
  static GetHistoryRequest? _defaultInstance;
}

class GetDeviceInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetDeviceInfoRequest._() : super();
  factory GetDeviceInfoRequest() => create();
  factory GetDeviceInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest clone() => GetDeviceInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoRequest copyWith(void Function(GetDeviceInfoRequest) updates) => super.copyWith((message) => updates(message as GetDeviceInfoRequest)) as GetDeviceInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest create() => GetDeviceInfoRequest._();
  GetDeviceInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetDeviceInfoRequest> createRepeated() => $pb.PbList<GetDeviceInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceInfoRequest>(create);
  static GetDeviceInfoRequest? _defaultInstance;
}

class GetPingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPingRequest._() : super();
  factory GetPingRequest() => create();
  factory GetPingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPingRequest clone() => GetPingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPingRequest copyWith(void Function(GetPingRequest) updates) => super.copyWith((message) => updates(message as GetPingRequest)) as GetPingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPingRequest create() => GetPingRequest._();
  GetPingRequest createEmptyInstance() => create();
  static $pb.PbList<GetPingRequest> createRepeated() => $pb.PbList<GetPingRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPingRequest>(create);
  static GetPingRequest? _defaultInstance;
}

class SetTrustedKeysRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetTrustedKeysRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<PublicKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys', $pb.PbFieldType.PM, subBuilder: PublicKey.create)
    ..hasRequiredFields = false
  ;

  SetTrustedKeysRequest._() : super();
  factory SetTrustedKeysRequest({
    $core.Iterable<PublicKey>? keys,
  }) {
    final _result = create();
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    return _result;
  }
  factory SetTrustedKeysRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTrustedKeysRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTrustedKeysRequest clone() => SetTrustedKeysRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTrustedKeysRequest copyWith(void Function(SetTrustedKeysRequest) updates) => super.copyWith((message) => updates(message as SetTrustedKeysRequest)) as SetTrustedKeysRequest; // ignore: deprecated_member_use
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

class PublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..pc<Capability>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capabilities', $pb.PbFieldType.KE, valueOf: Capability.valueOf, enumValues: Capability.values, defaultEnumValue: Capability.READ)
    ..hasRequiredFields = false
  ;

  PublicKey._() : super();
  factory PublicKey({
    $core.String? key,
    $core.Iterable<Capability>? capabilities,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (capabilities != null) {
      _result.capabilities.addAll(capabilities);
    }
    return _result;
  }
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey; // ignore: deprecated_member_use
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

class FactoryResetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FactoryResetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FactoryResetRequest._() : super();
  factory FactoryResetRequest() => create();
  factory FactoryResetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FactoryResetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FactoryResetRequest clone() => FactoryResetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FactoryResetRequest copyWith(void Function(FactoryResetRequest) updates) => super.copyWith((message) => updates(message as FactoryResetRequest)) as FactoryResetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FactoryResetRequest create() => FactoryResetRequest._();
  FactoryResetRequest createEmptyInstance() => create();
  static $pb.PbList<FactoryResetRequest> createRepeated() => $pb.PbList<FactoryResetRequest>();
  @$core.pragma('dart2js:noInline')
  static FactoryResetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FactoryResetRequest>(create);
  static FactoryResetRequest? _defaultInstance;
}

class GetLogRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLogRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLogRequest._() : super();
  factory GetLogRequest() => create();
  factory GetLogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLogRequest clone() => GetLogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLogRequest copyWith(void Function(GetLogRequest) updates) => super.copyWith((message) => updates(message as GetLogRequest)) as GetLogRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLogRequest create() => GetLogRequest._();
  GetLogRequest createEmptyInstance() => create();
  static $pb.PbList<GetLogRequest> createRepeated() => $pb.PbList<GetLogRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLogRequest>(create);
  static GetLogRequest? _defaultInstance;
}

class SetSkuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetSkuRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sku')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyCountryCode')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinCountryCode')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customPowerTable')
    ..hasRequiredFields = false
  ;

  SetSkuRequest._() : super();
  factory SetSkuRequest({
    $core.String? sku,
    $core.String? countryCode,
    $core.bool? applyCountryCode,
    $core.bool? pinCountryCode,
    $core.bool? customPowerTable,
  }) {
    final _result = create();
    if (sku != null) {
      _result.sku = sku;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (applyCountryCode != null) {
      _result.applyCountryCode = applyCountryCode;
    }
    if (pinCountryCode != null) {
      _result.pinCountryCode = pinCountryCode;
    }
    if (customPowerTable != null) {
      _result.customPowerTable = customPowerTable;
    }
    return _result;
  }
  factory SetSkuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSkuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSkuRequest clone() => SetSkuRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSkuRequest copyWith(void Function(SetSkuRequest) updates) => super.copyWith((message) => updates(message as SetSkuRequest)) as SetSkuRequest; // ignore: deprecated_member_use
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

class UpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateRequest._() : super();
  factory UpdateRequest() => create();
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;
}

class GetNetworkInterfacesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNetworkInterfacesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNetworkInterfacesRequest._() : super();
  factory GetNetworkInterfacesRequest() => create();
  factory GetNetworkInterfacesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkInterfacesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesRequest clone() => GetNetworkInterfacesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesRequest copyWith(void Function(GetNetworkInterfacesRequest) updates) => super.copyWith((message) => updates(message as GetNetworkInterfacesRequest)) as GetNetworkInterfacesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesRequest create() => GetNetworkInterfacesRequest._();
  GetNetworkInterfacesRequest createEmptyInstance() => create();
  static $pb.PbList<GetNetworkInterfacesRequest> createRepeated() => $pb.PbList<GetNetworkInterfacesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNetworkInterfacesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNetworkInterfacesRequest>(create);
  static GetNetworkInterfacesRequest? _defaultInstance;
}

class PingHostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingHostRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  PingHostRequest._() : super();
  factory PingHostRequest({
    $core.String? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory PingHostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingHostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingHostRequest clone() => PingHostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingHostRequest copyWith(void Function(PingHostRequest) updates) => super.copyWith((message) => updates(message as PingHostRequest)) as PingHostRequest; // ignore: deprecated_member_use
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

class GetLocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<PositionSource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..hasRequiredFields = false
  ;

  GetLocationRequest._() : super();
  factory GetLocationRequest({
    PositionSource? source,
  }) {
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    return _result;
  }
  factory GetLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationRequest clone() => GetLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationRequest copyWith(void Function(GetLocationRequest) updates) => super.copyWith((message) => updates(message as GetLocationRequest)) as GetLocationRequest; // ignore: deprecated_member_use
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

class GetHeapDumpRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHeapDumpRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetHeapDumpRequest._() : super();
  factory GetHeapDumpRequest() => create();
  factory GetHeapDumpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeapDumpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeapDumpRequest clone() => GetHeapDumpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeapDumpRequest copyWith(void Function(GetHeapDumpRequest) updates) => super.copyWith((message) => updates(message as GetHeapDumpRequest)) as GetHeapDumpRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetHeapDumpRequest create() => GetHeapDumpRequest._();
  GetHeapDumpRequest createEmptyInstance() => create();
  static $pb.PbList<GetHeapDumpRequest> createRepeated() => $pb.PbList<GetHeapDumpRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHeapDumpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHeapDumpRequest>(create);
  static GetHeapDumpRequest? _defaultInstance;
}

class RestartControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestartControlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RestartControlRequest._() : super();
  factory RestartControlRequest() => create();
  factory RestartControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestartControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestartControlRequest clone() => RestartControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestartControlRequest copyWith(void Function(RestartControlRequest) updates) => super.copyWith((message) => updates(message as RestartControlRequest)) as RestartControlRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestartControlRequest create() => RestartControlRequest._();
  RestartControlRequest createEmptyInstance() => create();
  static $pb.PbList<RestartControlRequest> createRepeated() => $pb.PbList<RestartControlRequest>();
  @$core.pragma('dart2js:noInline')
  static RestartControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestartControlRequest>(create);
  static RestartControlRequest? _defaultInstance;
}

class FuseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FuseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FuseRequest._() : super();
  factory FuseRequest() => create();
  factory FuseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuseRequest clone() => FuseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuseRequest copyWith(void Function(FuseRequest) updates) => super.copyWith((message) => updates(message as FuseRequest)) as FuseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FuseRequest create() => FuseRequest._();
  FuseRequest createEmptyInstance() => create();
  static $pb.PbList<FuseRequest> createRepeated() => $pb.PbList<FuseRequest>();
  @$core.pragma('dart2js:noInline')
  static FuseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuseRequest>(create);
  static FuseRequest? _defaultInstance;
}

class GetPersistentStatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPersistentStatsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPersistentStatsRequest._() : super();
  factory GetPersistentStatsRequest() => create();
  factory GetPersistentStatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPersistentStatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest clone() => GetPersistentStatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPersistentStatsRequest copyWith(void Function(GetPersistentStatsRequest) updates) => super.copyWith((message) => updates(message as GetPersistentStatsRequest)) as GetPersistentStatsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest create() => GetPersistentStatsRequest._();
  GetPersistentStatsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPersistentStatsRequest> createRepeated() => $pb.PbList<GetPersistentStatsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPersistentStatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPersistentStatsRequest>(create);
  static GetPersistentStatsRequest? _defaultInstance;
}

class GetConnectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetConnectionsRequest._() : super();
  factory GetConnectionsRequest() => create();
  factory GetConnectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest clone() => GetConnectionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsRequest copyWith(void Function(GetConnectionsRequest) updates) => super.copyWith((message) => updates(message as GetConnectionsRequest)) as GetConnectionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest create() => GetConnectionsRequest._();
  GetConnectionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetConnectionsRequest> createRepeated() => $pb.PbList<GetConnectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConnectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectionsRequest>(create);
  static GetConnectionsRequest? _defaultInstance;
}

class StartSpeedtestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartSpeedtestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartSpeedtestRequest._() : super();
  factory StartSpeedtestRequest() => create();
  factory StartSpeedtestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartSpeedtestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartSpeedtestRequest clone() => StartSpeedtestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartSpeedtestRequest copyWith(void Function(StartSpeedtestRequest) updates) => super.copyWith((message) => updates(message as StartSpeedtestRequest)) as StartSpeedtestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestRequest create() => StartSpeedtestRequest._();
  StartSpeedtestRequest createEmptyInstance() => create();
  static $pb.PbList<StartSpeedtestRequest> createRepeated() => $pb.PbList<StartSpeedtestRequest>();
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartSpeedtestRequest>(create);
  static StartSpeedtestRequest? _defaultInstance;
}

class GetSpeedtestStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSpeedtestStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSpeedtestStatusRequest._() : super();
  factory GetSpeedtestStatusRequest() => create();
  factory GetSpeedtestStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpeedtestStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusRequest clone() => GetSpeedtestStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusRequest copyWith(void Function(GetSpeedtestStatusRequest) updates) => super.copyWith((message) => updates(message as GetSpeedtestStatusRequest)) as GetSpeedtestStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusRequest create() => GetSpeedtestStatusRequest._();
  GetSpeedtestStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetSpeedtestStatusRequest> createRepeated() => $pb.PbList<GetSpeedtestStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSpeedtestStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpeedtestStatusRequest>(create);
  static GetSpeedtestStatusRequest? _defaultInstance;
}

class ReportClientSpeedtestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportClientSpeedtestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOM<SpeedTestStats>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientSpeedtest', subBuilder: SpeedTestStats.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientRssi', $pb.PbFieldType.OF)
    ..aOM<ClientPlatform>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientPlatform', subBuilder: ClientPlatform.create)
    ..aOM<SpeedTestStats>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSpeedtest', subBuilder: SpeedTestStats.create)
    ..hasRequiredFields = false
  ;

  ReportClientSpeedtestRequest._() : super();
  factory ReportClientSpeedtestRequest({
    $core.int? id,
    SpeedTestStats? clientSpeedtest,
    $core.double? clientRssi,
    ClientPlatform? clientPlatform,
    SpeedTestStats? wifiSpeedtest,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (clientSpeedtest != null) {
      _result.clientSpeedtest = clientSpeedtest;
    }
    if (clientRssi != null) {
      _result.clientRssi = clientRssi;
    }
    if (clientPlatform != null) {
      _result.clientPlatform = clientPlatform;
    }
    if (wifiSpeedtest != null) {
      _result.wifiSpeedtest = wifiSpeedtest;
    }
    return _result;
  }
  factory ReportClientSpeedtestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportClientSpeedtestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestRequest clone() => ReportClientSpeedtestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestRequest copyWith(void Function(ReportClientSpeedtestRequest) updates) => super.copyWith((message) => updates(message as ReportClientSpeedtestRequest)) as ReportClientSpeedtestRequest; // ignore: deprecated_member_use
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

class InitiateRemoteSshRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateRemoteSshRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  InitiateRemoteSshRequest._() : super();
  factory InitiateRemoteSshRequest() => create();
  factory InitiateRemoteSshRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateRemoteSshRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshRequest clone() => InitiateRemoteSshRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshRequest copyWith(void Function(InitiateRemoteSshRequest) updates) => super.copyWith((message) => updates(message as InitiateRemoteSshRequest)) as InitiateRemoteSshRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshRequest create() => InitiateRemoteSshRequest._();
  InitiateRemoteSshRequest createEmptyInstance() => create();
  static $pb.PbList<InitiateRemoteSshRequest> createRepeated() => $pb.PbList<InitiateRemoteSshRequest>();
  @$core.pragma('dart2js:noInline')
  static InitiateRemoteSshRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateRemoteSshRequest>(create);
  static InitiateRemoteSshRequest? _defaultInstance;
}

class SelfTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelfTestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detailed')
    ..hasRequiredFields = false
  ;

  SelfTestRequest._() : super();
  factory SelfTestRequest({
    $core.bool? detailed,
  }) {
    final _result = create();
    if (detailed != null) {
      _result.detailed = detailed;
    }
    return _result;
  }
  factory SelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfTestRequest clone() => SelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfTestRequest copyWith(void Function(SelfTestRequest) updates) => super.copyWith((message) => updates(message as SelfTestRequest)) as SelfTestRequest; // ignore: deprecated_member_use
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

class SetTestModeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetTestModeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<SetTestModeRequest_RfMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rfMode', $pb.PbFieldType.OE, defaultOrMaker: SetTestModeRequest_RfMode.RX, valueOf: SetTestModeRequest_RfMode.valueOf, enumValues: SetTestModeRequest_RfMode.values)
    ..aOB(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableLossOfCommFdir')
    ..aOB(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableRulesOverride')
    ..hasRequiredFields = false
  ;

  SetTestModeRequest._() : super();
  factory SetTestModeRequest({
    SetTestModeRequest_RfMode? rfMode,
    $core.bool? disableLossOfCommFdir,
    $core.bool? enableRulesOverride,
  }) {
    final _result = create();
    if (rfMode != null) {
      _result.rfMode = rfMode;
    }
    if (disableLossOfCommFdir != null) {
      _result.disableLossOfCommFdir = disableLossOfCommFdir;
    }
    if (enableRulesOverride != null) {
      _result.enableRulesOverride = enableRulesOverride;
    }
    return _result;
  }
  factory SetTestModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTestModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTestModeRequest clone() => SetTestModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTestModeRequest copyWith(void Function(SetTestModeRequest) updates) => super.copyWith((message) => updates(message as SetTestModeRequest)) as SetTestModeRequest; // ignore: deprecated_member_use
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

class SoftwareUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SoftwareUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'streamId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'open')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'close')
    ..hasRequiredFields = false
  ;

  SoftwareUpdateRequest._() : super();
  factory SoftwareUpdateRequest({
    $fixnum.Int64? streamId,
    $core.List<$core.int>? data,
    $core.bool? open,
    $core.bool? close,
  }) {
    final _result = create();
    if (streamId != null) {
      _result.streamId = streamId;
    }
    if (data != null) {
      _result.data = data;
    }
    if (open != null) {
      _result.open = open;
    }
    if (close != null) {
      _result.close = close;
    }
    return _result;
  }
  factory SoftwareUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateRequest clone() => SoftwareUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateRequest copyWith(void Function(SoftwareUpdateRequest) updates) => super.copyWith((message) => updates(message as SoftwareUpdateRequest)) as SoftwareUpdateRequest; // ignore: deprecated_member_use
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

class EnableDebugTelemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EnableDebugTelemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationM', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  EnableDebugTelemRequest._() : super();
  factory EnableDebugTelemRequest({
    $core.int? durationM,
  }) {
    final _result = create();
    if (durationM != null) {
      _result.durationM = durationM;
    }
    return _result;
  }
  factory EnableDebugTelemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableDebugTelemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableDebugTelemRequest clone() => EnableDebugTelemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableDebugTelemRequest copyWith(void Function(EnableDebugTelemRequest) updates) => super.copyWith((message) => updates(message as EnableDebugTelemRequest)) as EnableDebugTelemRequest; // ignore: deprecated_member_use
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

class DishStowRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishStowRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unstow')
    ..hasRequiredFields = false
  ;

  DishStowRequest._() : super();
  factory DishStowRequest({
    $core.bool? unstow,
  }) {
    final _result = create();
    if (unstow != null) {
      _result.unstow = unstow;
    }
    return _result;
  }
  factory DishStowRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowRequest clone() => DishStowRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowRequest copyWith(void Function(DishStowRequest) updates) => super.copyWith((message) => updates(message as DishStowRequest)) as DishStowRequest; // ignore: deprecated_member_use
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

class DishGetContextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetContextRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetContextRequest._() : super();
  factory DishGetContextRequest() => create();
  factory DishGetContextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetContextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetContextRequest clone() => DishGetContextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetContextRequest copyWith(void Function(DishGetContextRequest) updates) => super.copyWith((message) => updates(message as DishGetContextRequest)) as DishGetContextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetContextRequest create() => DishGetContextRequest._();
  DishGetContextRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetContextRequest> createRepeated() => $pb.PbList<DishGetContextRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetContextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetContextRequest>(create);
  static DishGetContextRequest? _defaultInstance;
}

class DishSetEmcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetEmcRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'theta', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phi', $pb.PbFieldType.OD)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxChan', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txChan', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modulation', $pb.PbFieldType.OU3)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desiredTiltAngle', $pb.PbFieldType.OD)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanOverride')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thetaEnabled')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phiEnabled')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idle')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fastSwitching')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skySearch')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forcePllUnlock')
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forceEirpFailure')
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snowActiveOverride')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualTilting')
    ..aOB(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tiltToStowed')
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot')
    ..aOB(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'continuousMotorTest')
    ..a<$core.double>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distanceOverrideMeters', $pb.PbFieldType.OD)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amplitudeTaperOverride', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCodeOverride', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.int>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.double>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eirpLegalLimitDbwOverride', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  DishSetEmcRequest._() : super();
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
  }) {
    final _result = create();
    if (theta != null) {
      _result.theta = theta;
    }
    if (phi != null) {
      _result.phi = phi;
    }
    if (rxChan != null) {
      _result.rxChan = rxChan;
    }
    if (txChan != null) {
      _result.txChan = txChan;
    }
    if (modulation != null) {
      _result.modulation = modulation;
    }
    if (desiredTiltAngle != null) {
      _result.desiredTiltAngle = desiredTiltAngle;
    }
    if (chanOverride != null) {
      _result.chanOverride = chanOverride;
    }
    if (thetaEnabled != null) {
      _result.thetaEnabled = thetaEnabled;
    }
    if (phiEnabled != null) {
      _result.phiEnabled = phiEnabled;
    }
    if (idle != null) {
      _result.idle = idle;
    }
    if (fastSwitching != null) {
      _result.fastSwitching = fastSwitching;
    }
    if (skySearch != null) {
      _result.skySearch = skySearch;
    }
    if (forcePllUnlock != null) {
      _result.forcePllUnlock = forcePllUnlock;
    }
    if (forceEirpFailure != null) {
      _result.forceEirpFailure = forceEirpFailure;
    }
    if (snowActiveOverride != null) {
      _result.snowActiveOverride = snowActiveOverride;
    }
    if (manualTilting != null) {
      _result.manualTilting = manualTilting;
    }
    if (tiltToStowed != null) {
      _result.tiltToStowed = tiltToStowed;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (continuousMotorTest != null) {
      _result.continuousMotorTest = continuousMotorTest;
    }
    if (distanceOverrideMeters != null) {
      _result.distanceOverrideMeters = distanceOverrideMeters;
    }
    if (amplitudeTaperOverride != null) {
      _result.amplitudeTaperOverride = amplitudeTaperOverride;
    }
    if (countryCodeOverride != null) {
      _result.countryCodeOverride = countryCodeOverride;
    }
    if (txDutyCycleOverride != null) {
      _result.txDutyCycleOverride = txDutyCycleOverride;
    }
    if (rxDutyCycleOverride != null) {
      _result.rxDutyCycleOverride = rxDutyCycleOverride;
    }
    if (eirpLegalLimitDbwOverride != null) {
      _result.eirpLegalLimitDbwOverride = eirpLegalLimitDbwOverride;
    }
    return _result;
  }
  factory DishSetEmcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetEmcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetEmcRequest clone() => DishSetEmcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetEmcRequest copyWith(void Function(DishSetEmcRequest) updates) => super.copyWith((message) => updates(message as DishSetEmcRequest)) as DishSetEmcRequest; // ignore: deprecated_member_use
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
}

class DishGetObstructionMapRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetObstructionMapRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetObstructionMapRequest._() : super();
  factory DishGetObstructionMapRequest() => create();
  factory DishGetObstructionMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest clone() => DishGetObstructionMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapRequest copyWith(void Function(DishGetObstructionMapRequest) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapRequest)) as DishGetObstructionMapRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest create() => DishGetObstructionMapRequest._();
  DishGetObstructionMapRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetObstructionMapRequest> createRepeated() => $pb.PbList<DishGetObstructionMapRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetObstructionMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetObstructionMapRequest>(create);
  static DishGetObstructionMapRequest? _defaultInstance;
}

class DishGetEmcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetEmcRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetEmcRequest._() : super();
  factory DishGetEmcRequest() => create();
  factory DishGetEmcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetEmcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetEmcRequest clone() => DishGetEmcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetEmcRequest copyWith(void Function(DishGetEmcRequest) updates) => super.copyWith((message) => updates(message as DishGetEmcRequest)) as DishGetEmcRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetEmcRequest create() => DishGetEmcRequest._();
  DishGetEmcRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetEmcRequest> createRepeated() => $pb.PbList<DishGetEmcRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetEmcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetEmcRequest>(create);
  static DishGetEmcRequest? _defaultInstance;
}

class DishSetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishSetConfigRequest._() : super();
  factory DishSetConfigRequest({
    DishConfig? dishConfig,
  }) {
    final _result = create();
    if (dishConfig != null) {
      _result.dishConfig = dishConfig;
    }
    return _result;
  }
  factory DishSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest clone() => DishSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigRequest copyWith(void Function(DishSetConfigRequest) updates) => super.copyWith((message) => updates(message as DishSetConfigRequest)) as DishSetConfigRequest; // ignore: deprecated_member_use
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

class DishConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishConfig_SnowMeltMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snowMeltMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_SnowMeltMode.AUTO, valueOf: DishConfig_SnowMeltMode.valueOf, enumValues: DishConfig_SnowMeltMode.values)
    ..e<DishConfig_LocationRequestMode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationRequestMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LocationRequestMode.NONE, valueOf: DishConfig_LocationRequestMode.valueOf, enumValues: DishConfig_LocationRequestMode.values)
    ..e<DishConfig_LevelDishMode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'levelDishMode', $pb.PbFieldType.OE, defaultOrMaker: DishConfig_LevelDishMode.TILT_LIKE_NORMAL, valueOf: DishConfig_LevelDishMode.valueOf, enumValues: DishConfig_LevelDishMode.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveStartMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveDurationMinutes', $pb.PbFieldType.OU3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveMode')
    ..aOB(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySnowMeltMode')
    ..aOB(2001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLocationRequestMode')
    ..aOB(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLevelDishMode')
    ..aOB(4001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveStartMinutes')
    ..aOB(5001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveDurationMinutes')
    ..aOB(6001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPowerSaveMode')
    ..hasRequiredFields = false
  ;

  DishConfig._() : super();
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
    final _result = create();
    if (snowMeltMode != null) {
      _result.snowMeltMode = snowMeltMode;
    }
    if (locationRequestMode != null) {
      _result.locationRequestMode = locationRequestMode;
    }
    if (levelDishMode != null) {
      _result.levelDishMode = levelDishMode;
    }
    if (powerSaveStartMinutes != null) {
      _result.powerSaveStartMinutes = powerSaveStartMinutes;
    }
    if (powerSaveDurationMinutes != null) {
      _result.powerSaveDurationMinutes = powerSaveDurationMinutes;
    }
    if (powerSaveMode != null) {
      _result.powerSaveMode = powerSaveMode;
    }
    if (applySnowMeltMode != null) {
      _result.applySnowMeltMode = applySnowMeltMode;
    }
    if (applyLocationRequestMode != null) {
      _result.applyLocationRequestMode = applyLocationRequestMode;
    }
    if (applyLevelDishMode != null) {
      _result.applyLevelDishMode = applyLevelDishMode;
    }
    if (applyPowerSaveStartMinutes != null) {
      _result.applyPowerSaveStartMinutes = applyPowerSaveStartMinutes;
    }
    if (applyPowerSaveDurationMinutes != null) {
      _result.applyPowerSaveDurationMinutes = applyPowerSaveDurationMinutes;
    }
    if (applyPowerSaveMode != null) {
      _result.applyPowerSaveMode = applyPowerSaveMode;
    }
    return _result;
  }
  factory DishConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishConfig clone() => DishConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishConfig copyWith(void Function(DishConfig) updates) => super.copyWith((message) => updates(message as DishConfig)) as DishConfig; // ignore: deprecated_member_use
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

class DishGetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishGetConfigRequest._() : super();
  factory DishGetConfigRequest() => create();
  factory DishGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest clone() => DishGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigRequest copyWith(void Function(DishGetConfigRequest) updates) => super.copyWith((message) => updates(message as DishGetConfigRequest)) as DishGetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest create() => DishGetConfigRequest._();
  DishGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<DishGetConfigRequest> createRepeated() => $pb.PbList<DishGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static DishGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishGetConfigRequest>(create);
  static DishGetConfigRequest? _defaultInstance;
}

class StartDishSelfTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartDishSelfTestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartDishSelfTestRequest._() : super();
  factory StartDishSelfTestRequest() => create();
  factory StartDishSelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDishSelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDishSelfTestRequest clone() => StartDishSelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDishSelfTestRequest copyWith(void Function(StartDishSelfTestRequest) updates) => super.copyWith((message) => updates(message as StartDishSelfTestRequest)) as StartDishSelfTestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestRequest create() => StartDishSelfTestRequest._();
  StartDishSelfTestRequest createEmptyInstance() => create();
  static $pb.PbList<StartDishSelfTestRequest> createRepeated() => $pb.PbList<StartDishSelfTestRequest>();
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDishSelfTestRequest>(create);
  static StartDishSelfTestRequest? _defaultInstance;
}

class DishPowerSaveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishPowerSaveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveStartMinutes', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSaveDurationMinutes', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enablePowerSave')
    ..hasRequiredFields = false
  ;

  DishPowerSaveRequest._() : super();
  factory DishPowerSaveRequest({
    $core.int? powerSaveStartMinutes,
    $core.int? powerSaveDurationMinutes,
    $core.bool? enablePowerSave,
  }) {
    final _result = create();
    if (powerSaveStartMinutes != null) {
      _result.powerSaveStartMinutes = powerSaveStartMinutes;
    }
    if (powerSaveDurationMinutes != null) {
      _result.powerSaveDurationMinutes = powerSaveDurationMinutes;
    }
    if (enablePowerSave != null) {
      _result.enablePowerSave = enablePowerSave;
    }
    return _result;
  }
  factory DishPowerSaveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishPowerSaveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishPowerSaveRequest clone() => DishPowerSaveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishPowerSaveRequest copyWith(void Function(DishPowerSaveRequest) updates) => super.copyWith((message) => updates(message as DishPowerSaveRequest)) as DishPowerSaveRequest; // ignore: deprecated_member_use
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

class DishInhibitGpsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishInhibitGpsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishInhibitGpsRequest._() : super();
  factory DishInhibitGpsRequest({
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishInhibitGpsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest clone() => DishInhibitGpsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsRequest copyWith(void Function(DishInhibitGpsRequest) updates) => super.copyWith((message) => updates(message as DishInhibitGpsRequest)) as DishInhibitGpsRequest; // ignore: deprecated_member_use
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

class WifiSetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiSetConfigRequest._() : super();
  factory WifiSetConfigRequest({
    WifiConfig? wifiConfig,
  }) {
    final _result = create();
    if (wifiConfig != null) {
      _result.wifiConfig = wifiConfig;
    }
    return _result;
  }
  factory WifiSetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest clone() => WifiSetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigRequest copyWith(void Function(WifiSetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiSetConfigRequest)) as WifiSetConfigRequest; // ignore: deprecated_member_use
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
  static const $core.Map<$core.int, WifiConfig_BasicServiceSet_Auth> _WifiConfig_BasicServiceSet_AuthByTag = {
    2001 : WifiConfig_BasicServiceSet_Auth.authOpen,
    2002 : WifiConfig_BasicServiceSet_Auth.authWpa2,
    2003 : WifiConfig_BasicServiceSet_Auth.authWpa3,
    2004 : WifiConfig_BasicServiceSet_Auth.authWpa2Wpa3,
    2005 : WifiConfig_BasicServiceSet_Auth.authRadius,
    0 : WifiConfig_BasicServiceSet_Auth.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig.BasicServiceSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [2001, 2002, 2003, 2004, 2005])
    ..aOS(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bssid')
    ..aOS(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..e<WifiConfig_Band>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Band.RF_UNKNOWN, valueOf: WifiConfig_Band.valueOf, enumValues: WifiConfig_Band.values)
    ..aOB(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable')
    ..aOB(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidden')
    ..aOS(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ifaceName')
    ..aOM<AuthOpen>(2001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOpen', subBuilder: AuthOpen.create)
    ..aOM<AuthWpa2>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa2', subBuilder: AuthWpa2.create)
    ..aOM<AuthWpa3>(2003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa3', subBuilder: AuthWpa3.create)
    ..aOM<AuthWpa2Wpa3>(2004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authWpa2Wpa3', subBuilder: AuthWpa2Wpa3.create)
    ..aOM<AuthRadius>(2005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authRadius', subBuilder: AuthRadius.create)
    ..hasRequiredFields = false
  ;

  WifiConfig_BasicServiceSet._() : super();
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
    final _result = create();
    if (bssid != null) {
      _result.bssid = bssid;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (band != null) {
      _result.band = band;
    }
    if (disable != null) {
      _result.disable = disable;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    if (ifaceName != null) {
      _result.ifaceName = ifaceName;
    }
    if (authOpen != null) {
      _result.authOpen = authOpen;
    }
    if (authWpa2 != null) {
      _result.authWpa2 = authWpa2;
    }
    if (authWpa3 != null) {
      _result.authWpa3 = authWpa3;
    }
    if (authWpa2Wpa3 != null) {
      _result.authWpa2Wpa3 = authWpa2Wpa3;
    }
    if (authRadius != null) {
      _result.authRadius = authRadius;
    }
    return _result;
  }
  factory WifiConfig_BasicServiceSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_BasicServiceSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet clone() => WifiConfig_BasicServiceSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_BasicServiceSet copyWith(void Function(WifiConfig_BasicServiceSet) updates) => super.copyWith((message) => updates(message as WifiConfig_BasicServiceSet)) as WifiConfig_BasicServiceSet; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig.Network', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv4')
    ..pc<WifiConfig_BasicServiceSet>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicServiceSets', $pb.PbFieldType.PM, subBuilder: WifiConfig_BasicServiceSet.create)
    ..aOB(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIsolation')
    ..aOB(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guest')
    ..aOS(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'landing')
    ..aOS(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..a<$core.int>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dhcpv4Start', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiConfig_Network._() : super();
  factory WifiConfig_Network({
    $core.String? ipv4,
    $core.Iterable<WifiConfig_BasicServiceSet>? basicServiceSets,
    $core.bool? clientIsolation,
    $core.bool? guest,
    $core.String? landing,
    $core.String? domain,
    $core.int? dhcpv4Start,
  }) {
    final _result = create();
    if (ipv4 != null) {
      _result.ipv4 = ipv4;
    }
    if (basicServiceSets != null) {
      _result.basicServiceSets.addAll(basicServiceSets);
    }
    if (clientIsolation != null) {
      _result.clientIsolation = clientIsolation;
    }
    if (guest != null) {
      _result.guest = guest;
    }
    if (landing != null) {
      _result.landing = landing;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (dhcpv4Start != null) {
      _result.dhcpv4Start = dhcpv4Start;
    }
    return _result;
  }
  factory WifiConfig_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig_Network clone() => WifiConfig_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig_Network copyWith(void Function(WifiConfig_Network) updates) => super.copyWith((message) => updates(message as WifiConfig_Network)) as WifiConfig_Network; // ignore: deprecated_member_use
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

class WifiConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkPassword')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lanIpv4')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setupComplete')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..e<WifiConfig_Security>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSecurity', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_Security.UNKNOWN, valueOf: WifiConfig_Security.valueOf, enumValues: WifiConfig_Security.values)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkName5ghz', protoName: 'network_name_5ghz')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macWan')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macLan')
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel2ghz', $pb.PbFieldType.OU3, protoName: 'channel_2ghz')
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel5ghz', $pb.PbFieldType.OU3, protoName: 'channel_5ghz')
    ..pc<PublicKey>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dynamicKeys', $pb.PbFieldType.PM, subBuilder: PublicKey.create)
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRepeater')
    ..a<$core.int>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootCount', $pb.PbFieldType.O3)
    ..pPS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameservers')
    ..aOB(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bypassMode')
    ..m<$core.String, MeshConfig>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshConfigs', entryClassName: 'WifiConfig.MeshConfigsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..aOB(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableRemoteSsh')
    ..aInt64(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRemoteSshAccess')
    ..aOB(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyLanIpv4')
    ..aOB(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDynamicKeys')
    ..aOB(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dfsEnabled')
    ..a<$fixnum.Int64>(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<WifiConfig_WirelessMode>(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode2ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_2ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_WirelessMode>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode5ghz', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth2ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_2ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_HTBandwidth>(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth5ghz', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vhtBandwidth', $pb.PbFieldType.OE, defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAviation')
    ..aOB(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secureDns')
    ..aOB(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apMode')
    ..aOB(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableMeshOnboarding')
    ..aOB(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinCountryCode')
    ..aOB(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customPowerTable')
    ..aOB(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usePublicServices')
    ..aOB(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableAutomatedSpeedtests')
    ..a<$core.int>(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel5ghzHigh', $pb.PbFieldType.OU3, protoName: 'channel_5ghz_high')
    ..e<WifiConfig_WirelessMode>(58, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessMode5ghzHigh', $pb.PbFieldType.OE, protoName: 'wireless_mode_5ghz_high', defaultOrMaker: WifiConfig_WirelessMode.WIRELESS_MODE_DEFAULT, valueOf: WifiConfig_WirelessMode.valueOf, enumValues: WifiConfig_WirelessMode.values)
    ..e<WifiConfig_HTBandwidth>(59, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'ht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_HTBandwidth.HT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_HTBandwidth.valueOf, enumValues: WifiConfig_HTBandwidth.values)
    ..e<WifiConfig_VHTBandwidth>(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vhtBandwidth5ghzHigh', $pb.PbFieldType.OE, protoName: 'vht_bandwidth_5ghz_high', defaultOrMaker: WifiConfig_VHTBandwidth.VHT_BANDWIDTH_DEFAULT, valueOf: WifiConfig_VHTBandwidth.valueOf, enumValues: WifiConfig_VHTBandwidth.values)
    ..aOB(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableUmbilicalVlan')
    ..pc<ClientName>(62, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientNames', $pb.PbFieldType.PM, subBuilder: ClientName.create)
    ..aOB(63, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outdoorMode')
    ..aOB(64, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable2ghz', protoName: 'disable_2ghz')
    ..aOB(65, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable5ghz', protoName: 'disable_5ghz')
    ..aOB(66, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disable5ghzHigh', protoName: 'disable_5ghz_high')
    ..aOB(67, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableXMeshBackhaul')
    ..aOS(68, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goldenBssid')
    ..e<IfaceType>(69, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goldenIfaceType', $pb.PbFieldType.OE, defaultOrMaker: IfaceType.IFACE_TYPE_UNKNOWN, valueOf: IfaceType.valueOf, enumValues: IfaceType.values)
    ..e<TxPowerLevel>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel2ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_2ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(71, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel5ghz', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..e<TxPowerLevel>(72, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPowerLevel5ghzHigh', $pb.PbFieldType.OE, protoName: 'tx_power_level_5ghz_high', defaultOrMaker: TxPowerLevel.TX_POWER_LEVEL_100, valueOf: TxPowerLevel.valueOf, enumValues: TxPowerLevel.values)
    ..aOB(73, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disablePendingUpdateReboot')
    ..aOB(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkName')
    ..aOB(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkPassword')
    ..aOB(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWifiSecurity')
    ..aOB(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworkName5ghz', protoName: 'apply_network_name_5ghz')
    ..aOB(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySetupComplete')
    ..aOB(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel2ghz', protoName: 'apply_channel_2ghz')
    ..aOB(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel5ghz', protoName: 'apply_channel_5ghz')
    ..aOB(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyChannel5ghzHigh', protoName: 'apply_channel_5ghz_high')
    ..aOB(1031, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyIsRepeater')
    ..aOB(1033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyMeshConfigs')
    ..aOB(1054, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNameservers')
    ..aOB(1055, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyBypassMode')
    ..aOB(1057, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyEnableRemoteSsh')
    ..aOB(1058, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDfsEnabled')
    ..aOB(1059, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode2ghz', protoName: 'apply_wireless_mode_2ghz')
    ..aOB(1060, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode5ghz', protoName: 'apply_wireless_mode_5ghz')
    ..aOB(1061, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth2ghz', protoName: 'apply_ht_bandwidth_2ghz')
    ..aOB(1062, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth5ghz', protoName: 'apply_ht_bandwidth_5ghz')
    ..aOB(1063, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyVhtBandwidth')
    ..aOB(1064, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyIsAviation')
    ..aOB(1065, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applySecureDns')
    ..aOB(1066, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyApMode')
    ..aOB(1067, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableMeshOnboarding')
    ..aOB(1068, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyUsePublicServices')
    ..aOB(1069, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableAutomatedSpeedtests')
    ..aOB(1070, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyWirelessMode5ghzHigh', protoName: 'apply_wireless_mode_5ghz_high')
    ..aOB(1071, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyHtBandwidth5ghzHigh', protoName: 'apply_ht_bandwidth_5ghz_high')
    ..aOB(1072, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyVhtBandwidth5ghzHigh', protoName: 'apply_vht_bandwidth_5ghz_high')
    ..aOB(1073, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyEnableUmbilicalVlan')
    ..aOB(1074, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyClientNames')
    ..aOB(1075, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyOutdoorMode')
    ..aOB(1076, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable2ghz', protoName: 'apply_disable_2ghz')
    ..aOB(1077, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable5ghz', protoName: 'apply_disable_5ghz')
    ..aOB(1078, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisable5ghzHigh', protoName: 'apply_disable_5ghz_high')
    ..aOB(1079, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisableXMeshBackhaul')
    ..aOB(1080, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyGoldenBssid')
    ..aOB(1081, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyGoldenIfaceType')
    ..aOB(1082, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel2ghz', protoName: 'apply_tx_power_level_2ghz')
    ..aOB(1083, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel5ghz', protoName: 'apply_tx_power_level_5ghz')
    ..aOB(1084, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTxPowerLevel5ghzHigh', protoName: 'apply_tx_power_level_5ghz_high')
    ..aOB(1085, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyCountryCode')
    ..aOB(1086, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyPinCountryCode')
    ..aOB(1087, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyCustomPowerTable')
    ..aOB(1088, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisablePendingUpdateReboot')
    ..pc<WifiConfig_Network>(1100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiConfig_Network.create)
    ..aOB(1101, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyNetworks')
    ..aOM<BootInfo>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boot', subBuilder: BootInfo.create)
    ..m<$core.String, MeshConfig>(3033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshConfigsUpdates', entryClassName: 'WifiConfig.MeshConfigsUpdatesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MeshConfig.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  WifiConfig._() : super();
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
  @$core.Deprecated('This field is deprecated.')
    $core.String? macWan,
  @$core.Deprecated('This field is deprecated.')
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
    $core.Iterable<WifiConfig_Network>? networks,
    $core.bool? applyNetworks,
    BootInfo? boot,
    $core.Map<$core.String, MeshConfig>? meshConfigsUpdates,
  }) {
    final _result = create();
    if (networkName != null) {
      _result.networkName = networkName;
    }
    if (networkPassword != null) {
      _result.networkPassword = networkPassword;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (lanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.lanIpv4 = lanIpv4;
    }
    if (setupComplete != null) {
      _result.setupComplete = setupComplete;
    }
    if (version != null) {
      _result.version = version;
    }
    if (wifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.wifiSecurity = wifiSecurity;
    }
    if (networkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.networkName5ghz = networkName5ghz;
    }
    if (macWan != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.macWan = macWan;
    }
    if (macLan != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.macLan = macLan;
    }
    if (channel2ghz != null) {
      _result.channel2ghz = channel2ghz;
    }
    if (channel5ghz != null) {
      _result.channel5ghz = channel5ghz;
    }
    if (dynamicKeys != null) {
      _result.dynamicKeys.addAll(dynamicKeys);
    }
    if (isRepeater != null) {
      _result.isRepeater = isRepeater;
    }
    if (bootCount != null) {
      _result.bootCount = bootCount;
    }
    if (nameservers != null) {
      _result.nameservers.addAll(nameservers);
    }
    if (bypassMode != null) {
      _result.bypassMode = bypassMode;
    }
    if (meshConfigs != null) {
      _result.meshConfigs.addAll(meshConfigs);
    }
    if (enableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.enableRemoteSsh = enableRemoteSsh;
    }
    if (lastRemoteSshAccess != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.lastRemoteSshAccess = lastRemoteSshAccess;
    }
    if (applyLanIpv4 != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyLanIpv4 = applyLanIpv4;
    }
    if (applyDynamicKeys != null) {
      _result.applyDynamicKeys = applyDynamicKeys;
    }
    if (dfsEnabled != null) {
      _result.dfsEnabled = dfsEnabled;
    }
    if (incarnation != null) {
      _result.incarnation = incarnation;
    }
    if (wirelessMode2ghz != null) {
      _result.wirelessMode2ghz = wirelessMode2ghz;
    }
    if (wirelessMode5ghz != null) {
      _result.wirelessMode5ghz = wirelessMode5ghz;
    }
    if (htBandwidth2ghz != null) {
      _result.htBandwidth2ghz = htBandwidth2ghz;
    }
    if (htBandwidth5ghz != null) {
      _result.htBandwidth5ghz = htBandwidth5ghz;
    }
    if (vhtBandwidth != null) {
      _result.vhtBandwidth = vhtBandwidth;
    }
    if (isAviation != null) {
      _result.isAviation = isAviation;
    }
    if (secureDns != null) {
      _result.secureDns = secureDns;
    }
    if (apMode != null) {
      _result.apMode = apMode;
    }
    if (disableMeshOnboarding != null) {
      _result.disableMeshOnboarding = disableMeshOnboarding;
    }
    if (pinCountryCode != null) {
      _result.pinCountryCode = pinCountryCode;
    }
    if (customPowerTable != null) {
      _result.customPowerTable = customPowerTable;
    }
    if (usePublicServices != null) {
      _result.usePublicServices = usePublicServices;
    }
    if (disableAutomatedSpeedtests != null) {
      _result.disableAutomatedSpeedtests = disableAutomatedSpeedtests;
    }
    if (channel5ghzHigh != null) {
      _result.channel5ghzHigh = channel5ghzHigh;
    }
    if (wirelessMode5ghzHigh != null) {
      _result.wirelessMode5ghzHigh = wirelessMode5ghzHigh;
    }
    if (htBandwidth5ghzHigh != null) {
      _result.htBandwidth5ghzHigh = htBandwidth5ghzHigh;
    }
    if (vhtBandwidth5ghzHigh != null) {
      _result.vhtBandwidth5ghzHigh = vhtBandwidth5ghzHigh;
    }
    if (enableUmbilicalVlan != null) {
      _result.enableUmbilicalVlan = enableUmbilicalVlan;
    }
    if (clientNames != null) {
      _result.clientNames.addAll(clientNames);
    }
    if (outdoorMode != null) {
      _result.outdoorMode = outdoorMode;
    }
    if (disable2ghz != null) {
      _result.disable2ghz = disable2ghz;
    }
    if (disable5ghz != null) {
      _result.disable5ghz = disable5ghz;
    }
    if (disable5ghzHigh != null) {
      _result.disable5ghzHigh = disable5ghzHigh;
    }
    if (disableXMeshBackhaul != null) {
      _result.disableXMeshBackhaul = disableXMeshBackhaul;
    }
    if (goldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.goldenBssid = goldenBssid;
    }
    if (goldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.goldenIfaceType = goldenIfaceType;
    }
    if (txPowerLevel2ghz != null) {
      _result.txPowerLevel2ghz = txPowerLevel2ghz;
    }
    if (txPowerLevel5ghz != null) {
      _result.txPowerLevel5ghz = txPowerLevel5ghz;
    }
    if (txPowerLevel5ghzHigh != null) {
      _result.txPowerLevel5ghzHigh = txPowerLevel5ghzHigh;
    }
    if (disablePendingUpdateReboot != null) {
      _result.disablePendingUpdateReboot = disablePendingUpdateReboot;
    }
    if (applyNetworkName != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkName = applyNetworkName;
    }
    if (applyNetworkPassword != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkPassword = applyNetworkPassword;
    }
    if (applyWifiSecurity != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyWifiSecurity = applyWifiSecurity;
    }
    if (applyNetworkName5ghz != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyNetworkName5ghz = applyNetworkName5ghz;
    }
    if (applySetupComplete != null) {
      _result.applySetupComplete = applySetupComplete;
    }
    if (applyChannel2ghz != null) {
      _result.applyChannel2ghz = applyChannel2ghz;
    }
    if (applyChannel5ghz != null) {
      _result.applyChannel5ghz = applyChannel5ghz;
    }
    if (applyChannel5ghzHigh != null) {
      _result.applyChannel5ghzHigh = applyChannel5ghzHigh;
    }
    if (applyIsRepeater != null) {
      _result.applyIsRepeater = applyIsRepeater;
    }
    if (applyMeshConfigs != null) {
      _result.applyMeshConfigs = applyMeshConfigs;
    }
    if (applyNameservers != null) {
      _result.applyNameservers = applyNameservers;
    }
    if (applyBypassMode != null) {
      _result.applyBypassMode = applyBypassMode;
    }
    if (applyEnableRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyEnableRemoteSsh = applyEnableRemoteSsh;
    }
    if (applyDfsEnabled != null) {
      _result.applyDfsEnabled = applyDfsEnabled;
    }
    if (applyWirelessMode2ghz != null) {
      _result.applyWirelessMode2ghz = applyWirelessMode2ghz;
    }
    if (applyWirelessMode5ghz != null) {
      _result.applyWirelessMode5ghz = applyWirelessMode5ghz;
    }
    if (applyHtBandwidth2ghz != null) {
      _result.applyHtBandwidth2ghz = applyHtBandwidth2ghz;
    }
    if (applyHtBandwidth5ghz != null) {
      _result.applyHtBandwidth5ghz = applyHtBandwidth5ghz;
    }
    if (applyVhtBandwidth != null) {
      _result.applyVhtBandwidth = applyVhtBandwidth;
    }
    if (applyIsAviation != null) {
      _result.applyIsAviation = applyIsAviation;
    }
    if (applySecureDns != null) {
      _result.applySecureDns = applySecureDns;
    }
    if (applyApMode != null) {
      _result.applyApMode = applyApMode;
    }
    if (applyDisableMeshOnboarding != null) {
      _result.applyDisableMeshOnboarding = applyDisableMeshOnboarding;
    }
    if (applyUsePublicServices != null) {
      _result.applyUsePublicServices = applyUsePublicServices;
    }
    if (applyDisableAutomatedSpeedtests != null) {
      _result.applyDisableAutomatedSpeedtests = applyDisableAutomatedSpeedtests;
    }
    if (applyWirelessMode5ghzHigh != null) {
      _result.applyWirelessMode5ghzHigh = applyWirelessMode5ghzHigh;
    }
    if (applyHtBandwidth5ghzHigh != null) {
      _result.applyHtBandwidth5ghzHigh = applyHtBandwidth5ghzHigh;
    }
    if (applyVhtBandwidth5ghzHigh != null) {
      _result.applyVhtBandwidth5ghzHigh = applyVhtBandwidth5ghzHigh;
    }
    if (applyEnableUmbilicalVlan != null) {
      _result.applyEnableUmbilicalVlan = applyEnableUmbilicalVlan;
    }
    if (applyClientNames != null) {
      _result.applyClientNames = applyClientNames;
    }
    if (applyOutdoorMode != null) {
      _result.applyOutdoorMode = applyOutdoorMode;
    }
    if (applyDisable2ghz != null) {
      _result.applyDisable2ghz = applyDisable2ghz;
    }
    if (applyDisable5ghz != null) {
      _result.applyDisable5ghz = applyDisable5ghz;
    }
    if (applyDisable5ghzHigh != null) {
      _result.applyDisable5ghzHigh = applyDisable5ghzHigh;
    }
    if (applyDisableXMeshBackhaul != null) {
      _result.applyDisableXMeshBackhaul = applyDisableXMeshBackhaul;
    }
    if (applyGoldenBssid != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyGoldenBssid = applyGoldenBssid;
    }
    if (applyGoldenIfaceType != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.applyGoldenIfaceType = applyGoldenIfaceType;
    }
    if (applyTxPowerLevel2ghz != null) {
      _result.applyTxPowerLevel2ghz = applyTxPowerLevel2ghz;
    }
    if (applyTxPowerLevel5ghz != null) {
      _result.applyTxPowerLevel5ghz = applyTxPowerLevel5ghz;
    }
    if (applyTxPowerLevel5ghzHigh != null) {
      _result.applyTxPowerLevel5ghzHigh = applyTxPowerLevel5ghzHigh;
    }
    if (applyCountryCode != null) {
      _result.applyCountryCode = applyCountryCode;
    }
    if (applyPinCountryCode != null) {
      _result.applyPinCountryCode = applyPinCountryCode;
    }
    if (applyCustomPowerTable != null) {
      _result.applyCustomPowerTable = applyCustomPowerTable;
    }
    if (applyDisablePendingUpdateReboot != null) {
      _result.applyDisablePendingUpdateReboot = applyDisablePendingUpdateReboot;
    }
    if (networks != null) {
      _result.networks.addAll(networks);
    }
    if (applyNetworks != null) {
      _result.applyNetworks = applyNetworks;
    }
    if (boot != null) {
      _result.boot = boot;
    }
    if (meshConfigsUpdates != null) {
      _result.meshConfigsUpdates.addAll(meshConfigsUpdates);
    }
    return _result;
  }
  factory WifiConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiConfig clone() => WifiConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiConfig copyWith(void Function(WifiConfig) updates) => super.copyWith((message) => updates(message as WifiConfig)) as WifiConfig; // ignore: deprecated_member_use
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.String get macWan => $_getSZ(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set macWan($core.String v) { $_setString(8, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasMacWan() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearMacWan() => clearField(12);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.String get macLan => $_getSZ(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  set macLan($core.String v) { $_setString(9, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.bool hasMacLan() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool get applyNetworkName => $_getBF(54);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  set applyNetworkName($core.bool v) { $_setBool(54, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  $core.bool hasApplyNetworkName() => $_has(54);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1001)
  void clearApplyNetworkName() => clearField(1001);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool get applyNetworkPassword => $_getBF(55);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  set applyNetworkPassword($core.bool v) { $_setBool(55, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  $core.bool hasApplyNetworkPassword() => $_has(55);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1002)
  void clearApplyNetworkPassword() => clearField(1002);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool get applyWifiSecurity => $_getBF(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  set applyWifiSecurity($core.bool v) { $_setBool(56, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  $core.bool hasApplyWifiSecurity() => $_has(56);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1004)
  void clearApplyWifiSecurity() => clearField(1004);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool get applyNetworkName5ghz => $_getBF(57);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  set applyNetworkName5ghz($core.bool v) { $_setBool(57, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  $core.bool hasApplyNetworkName5ghz() => $_has(57);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1005)
  void clearApplyNetworkName5ghz() => clearField(1005);

  @$pb.TagNumber(1010)
  $core.bool get applySetupComplete => $_getBF(58);
  @$pb.TagNumber(1010)
  set applySetupComplete($core.bool v) { $_setBool(58, v); }
  @$pb.TagNumber(1010)
  $core.bool hasApplySetupComplete() => $_has(58);
  @$pb.TagNumber(1010)
  void clearApplySetupComplete() => clearField(1010);

  @$pb.TagNumber(1013)
  $core.bool get applyChannel2ghz => $_getBF(59);
  @$pb.TagNumber(1013)
  set applyChannel2ghz($core.bool v) { $_setBool(59, v); }
  @$pb.TagNumber(1013)
  $core.bool hasApplyChannel2ghz() => $_has(59);
  @$pb.TagNumber(1013)
  void clearApplyChannel2ghz() => clearField(1013);

  @$pb.TagNumber(1014)
  $core.bool get applyChannel5ghz => $_getBF(60);
  @$pb.TagNumber(1014)
  set applyChannel5ghz($core.bool v) { $_setBool(60, v); }
  @$pb.TagNumber(1014)
  $core.bool hasApplyChannel5ghz() => $_has(60);
  @$pb.TagNumber(1014)
  void clearApplyChannel5ghz() => clearField(1014);

  @$pb.TagNumber(1016)
  $core.bool get applyChannel5ghzHigh => $_getBF(61);
  @$pb.TagNumber(1016)
  set applyChannel5ghzHigh($core.bool v) { $_setBool(61, v); }
  @$pb.TagNumber(1016)
  $core.bool hasApplyChannel5ghzHigh() => $_has(61);
  @$pb.TagNumber(1016)
  void clearApplyChannel5ghzHigh() => clearField(1016);

  @$pb.TagNumber(1031)
  $core.bool get applyIsRepeater => $_getBF(62);
  @$pb.TagNumber(1031)
  set applyIsRepeater($core.bool v) { $_setBool(62, v); }
  @$pb.TagNumber(1031)
  $core.bool hasApplyIsRepeater() => $_has(62);
  @$pb.TagNumber(1031)
  void clearApplyIsRepeater() => clearField(1031);

  @$pb.TagNumber(1033)
  $core.bool get applyMeshConfigs => $_getBF(63);
  @$pb.TagNumber(1033)
  set applyMeshConfigs($core.bool v) { $_setBool(63, v); }
  @$pb.TagNumber(1033)
  $core.bool hasApplyMeshConfigs() => $_has(63);
  @$pb.TagNumber(1033)
  void clearApplyMeshConfigs() => clearField(1033);

  @$pb.TagNumber(1054)
  $core.bool get applyNameservers => $_getBF(64);
  @$pb.TagNumber(1054)
  set applyNameservers($core.bool v) { $_setBool(64, v); }
  @$pb.TagNumber(1054)
  $core.bool hasApplyNameservers() => $_has(64);
  @$pb.TagNumber(1054)
  void clearApplyNameservers() => clearField(1054);

  @$pb.TagNumber(1055)
  $core.bool get applyBypassMode => $_getBF(65);
  @$pb.TagNumber(1055)
  set applyBypassMode($core.bool v) { $_setBool(65, v); }
  @$pb.TagNumber(1055)
  $core.bool hasApplyBypassMode() => $_has(65);
  @$pb.TagNumber(1055)
  void clearApplyBypassMode() => clearField(1055);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool get applyEnableRemoteSsh => $_getBF(66);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  set applyEnableRemoteSsh($core.bool v) { $_setBool(66, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  $core.bool hasApplyEnableRemoteSsh() => $_has(66);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1057)
  void clearApplyEnableRemoteSsh() => clearField(1057);

  @$pb.TagNumber(1058)
  $core.bool get applyDfsEnabled => $_getBF(67);
  @$pb.TagNumber(1058)
  set applyDfsEnabled($core.bool v) { $_setBool(67, v); }
  @$pb.TagNumber(1058)
  $core.bool hasApplyDfsEnabled() => $_has(67);
  @$pb.TagNumber(1058)
  void clearApplyDfsEnabled() => clearField(1058);

  @$pb.TagNumber(1059)
  $core.bool get applyWirelessMode2ghz => $_getBF(68);
  @$pb.TagNumber(1059)
  set applyWirelessMode2ghz($core.bool v) { $_setBool(68, v); }
  @$pb.TagNumber(1059)
  $core.bool hasApplyWirelessMode2ghz() => $_has(68);
  @$pb.TagNumber(1059)
  void clearApplyWirelessMode2ghz() => clearField(1059);

  @$pb.TagNumber(1060)
  $core.bool get applyWirelessMode5ghz => $_getBF(69);
  @$pb.TagNumber(1060)
  set applyWirelessMode5ghz($core.bool v) { $_setBool(69, v); }
  @$pb.TagNumber(1060)
  $core.bool hasApplyWirelessMode5ghz() => $_has(69);
  @$pb.TagNumber(1060)
  void clearApplyWirelessMode5ghz() => clearField(1060);

  @$pb.TagNumber(1061)
  $core.bool get applyHtBandwidth2ghz => $_getBF(70);
  @$pb.TagNumber(1061)
  set applyHtBandwidth2ghz($core.bool v) { $_setBool(70, v); }
  @$pb.TagNumber(1061)
  $core.bool hasApplyHtBandwidth2ghz() => $_has(70);
  @$pb.TagNumber(1061)
  void clearApplyHtBandwidth2ghz() => clearField(1061);

  @$pb.TagNumber(1062)
  $core.bool get applyHtBandwidth5ghz => $_getBF(71);
  @$pb.TagNumber(1062)
  set applyHtBandwidth5ghz($core.bool v) { $_setBool(71, v); }
  @$pb.TagNumber(1062)
  $core.bool hasApplyHtBandwidth5ghz() => $_has(71);
  @$pb.TagNumber(1062)
  void clearApplyHtBandwidth5ghz() => clearField(1062);

  @$pb.TagNumber(1063)
  $core.bool get applyVhtBandwidth => $_getBF(72);
  @$pb.TagNumber(1063)
  set applyVhtBandwidth($core.bool v) { $_setBool(72, v); }
  @$pb.TagNumber(1063)
  $core.bool hasApplyVhtBandwidth() => $_has(72);
  @$pb.TagNumber(1063)
  void clearApplyVhtBandwidth() => clearField(1063);

  @$pb.TagNumber(1064)
  $core.bool get applyIsAviation => $_getBF(73);
  @$pb.TagNumber(1064)
  set applyIsAviation($core.bool v) { $_setBool(73, v); }
  @$pb.TagNumber(1064)
  $core.bool hasApplyIsAviation() => $_has(73);
  @$pb.TagNumber(1064)
  void clearApplyIsAviation() => clearField(1064);

  @$pb.TagNumber(1065)
  $core.bool get applySecureDns => $_getBF(74);
  @$pb.TagNumber(1065)
  set applySecureDns($core.bool v) { $_setBool(74, v); }
  @$pb.TagNumber(1065)
  $core.bool hasApplySecureDns() => $_has(74);
  @$pb.TagNumber(1065)
  void clearApplySecureDns() => clearField(1065);

  @$pb.TagNumber(1066)
  $core.bool get applyApMode => $_getBF(75);
  @$pb.TagNumber(1066)
  set applyApMode($core.bool v) { $_setBool(75, v); }
  @$pb.TagNumber(1066)
  $core.bool hasApplyApMode() => $_has(75);
  @$pb.TagNumber(1066)
  void clearApplyApMode() => clearField(1066);

  @$pb.TagNumber(1067)
  $core.bool get applyDisableMeshOnboarding => $_getBF(76);
  @$pb.TagNumber(1067)
  set applyDisableMeshOnboarding($core.bool v) { $_setBool(76, v); }
  @$pb.TagNumber(1067)
  $core.bool hasApplyDisableMeshOnboarding() => $_has(76);
  @$pb.TagNumber(1067)
  void clearApplyDisableMeshOnboarding() => clearField(1067);

  @$pb.TagNumber(1068)
  $core.bool get applyUsePublicServices => $_getBF(77);
  @$pb.TagNumber(1068)
  set applyUsePublicServices($core.bool v) { $_setBool(77, v); }
  @$pb.TagNumber(1068)
  $core.bool hasApplyUsePublicServices() => $_has(77);
  @$pb.TagNumber(1068)
  void clearApplyUsePublicServices() => clearField(1068);

  @$pb.TagNumber(1069)
  $core.bool get applyDisableAutomatedSpeedtests => $_getBF(78);
  @$pb.TagNumber(1069)
  set applyDisableAutomatedSpeedtests($core.bool v) { $_setBool(78, v); }
  @$pb.TagNumber(1069)
  $core.bool hasApplyDisableAutomatedSpeedtests() => $_has(78);
  @$pb.TagNumber(1069)
  void clearApplyDisableAutomatedSpeedtests() => clearField(1069);

  @$pb.TagNumber(1070)
  $core.bool get applyWirelessMode5ghzHigh => $_getBF(79);
  @$pb.TagNumber(1070)
  set applyWirelessMode5ghzHigh($core.bool v) { $_setBool(79, v); }
  @$pb.TagNumber(1070)
  $core.bool hasApplyWirelessMode5ghzHigh() => $_has(79);
  @$pb.TagNumber(1070)
  void clearApplyWirelessMode5ghzHigh() => clearField(1070);

  @$pb.TagNumber(1071)
  $core.bool get applyHtBandwidth5ghzHigh => $_getBF(80);
  @$pb.TagNumber(1071)
  set applyHtBandwidth5ghzHigh($core.bool v) { $_setBool(80, v); }
  @$pb.TagNumber(1071)
  $core.bool hasApplyHtBandwidth5ghzHigh() => $_has(80);
  @$pb.TagNumber(1071)
  void clearApplyHtBandwidth5ghzHigh() => clearField(1071);

  @$pb.TagNumber(1072)
  $core.bool get applyVhtBandwidth5ghzHigh => $_getBF(81);
  @$pb.TagNumber(1072)
  set applyVhtBandwidth5ghzHigh($core.bool v) { $_setBool(81, v); }
  @$pb.TagNumber(1072)
  $core.bool hasApplyVhtBandwidth5ghzHigh() => $_has(81);
  @$pb.TagNumber(1072)
  void clearApplyVhtBandwidth5ghzHigh() => clearField(1072);

  @$pb.TagNumber(1073)
  $core.bool get applyEnableUmbilicalVlan => $_getBF(82);
  @$pb.TagNumber(1073)
  set applyEnableUmbilicalVlan($core.bool v) { $_setBool(82, v); }
  @$pb.TagNumber(1073)
  $core.bool hasApplyEnableUmbilicalVlan() => $_has(82);
  @$pb.TagNumber(1073)
  void clearApplyEnableUmbilicalVlan() => clearField(1073);

  @$pb.TagNumber(1074)
  $core.bool get applyClientNames => $_getBF(83);
  @$pb.TagNumber(1074)
  set applyClientNames($core.bool v) { $_setBool(83, v); }
  @$pb.TagNumber(1074)
  $core.bool hasApplyClientNames() => $_has(83);
  @$pb.TagNumber(1074)
  void clearApplyClientNames() => clearField(1074);

  @$pb.TagNumber(1075)
  $core.bool get applyOutdoorMode => $_getBF(84);
  @$pb.TagNumber(1075)
  set applyOutdoorMode($core.bool v) { $_setBool(84, v); }
  @$pb.TagNumber(1075)
  $core.bool hasApplyOutdoorMode() => $_has(84);
  @$pb.TagNumber(1075)
  void clearApplyOutdoorMode() => clearField(1075);

  @$pb.TagNumber(1076)
  $core.bool get applyDisable2ghz => $_getBF(85);
  @$pb.TagNumber(1076)
  set applyDisable2ghz($core.bool v) { $_setBool(85, v); }
  @$pb.TagNumber(1076)
  $core.bool hasApplyDisable2ghz() => $_has(85);
  @$pb.TagNumber(1076)
  void clearApplyDisable2ghz() => clearField(1076);

  @$pb.TagNumber(1077)
  $core.bool get applyDisable5ghz => $_getBF(86);
  @$pb.TagNumber(1077)
  set applyDisable5ghz($core.bool v) { $_setBool(86, v); }
  @$pb.TagNumber(1077)
  $core.bool hasApplyDisable5ghz() => $_has(86);
  @$pb.TagNumber(1077)
  void clearApplyDisable5ghz() => clearField(1077);

  @$pb.TagNumber(1078)
  $core.bool get applyDisable5ghzHigh => $_getBF(87);
  @$pb.TagNumber(1078)
  set applyDisable5ghzHigh($core.bool v) { $_setBool(87, v); }
  @$pb.TagNumber(1078)
  $core.bool hasApplyDisable5ghzHigh() => $_has(87);
  @$pb.TagNumber(1078)
  void clearApplyDisable5ghzHigh() => clearField(1078);

  @$pb.TagNumber(1079)
  $core.bool get applyDisableXMeshBackhaul => $_getBF(88);
  @$pb.TagNumber(1079)
  set applyDisableXMeshBackhaul($core.bool v) { $_setBool(88, v); }
  @$pb.TagNumber(1079)
  $core.bool hasApplyDisableXMeshBackhaul() => $_has(88);
  @$pb.TagNumber(1079)
  void clearApplyDisableXMeshBackhaul() => clearField(1079);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool get applyGoldenBssid => $_getBF(89);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  set applyGoldenBssid($core.bool v) { $_setBool(89, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  $core.bool hasApplyGoldenBssid() => $_has(89);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1080)
  void clearApplyGoldenBssid() => clearField(1080);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool get applyGoldenIfaceType => $_getBF(90);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  set applyGoldenIfaceType($core.bool v) { $_setBool(90, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  $core.bool hasApplyGoldenIfaceType() => $_has(90);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1081)
  void clearApplyGoldenIfaceType() => clearField(1081);

  @$pb.TagNumber(1082)
  $core.bool get applyTxPowerLevel2ghz => $_getBF(91);
  @$pb.TagNumber(1082)
  set applyTxPowerLevel2ghz($core.bool v) { $_setBool(91, v); }
  @$pb.TagNumber(1082)
  $core.bool hasApplyTxPowerLevel2ghz() => $_has(91);
  @$pb.TagNumber(1082)
  void clearApplyTxPowerLevel2ghz() => clearField(1082);

  @$pb.TagNumber(1083)
  $core.bool get applyTxPowerLevel5ghz => $_getBF(92);
  @$pb.TagNumber(1083)
  set applyTxPowerLevel5ghz($core.bool v) { $_setBool(92, v); }
  @$pb.TagNumber(1083)
  $core.bool hasApplyTxPowerLevel5ghz() => $_has(92);
  @$pb.TagNumber(1083)
  void clearApplyTxPowerLevel5ghz() => clearField(1083);

  @$pb.TagNumber(1084)
  $core.bool get applyTxPowerLevel5ghzHigh => $_getBF(93);
  @$pb.TagNumber(1084)
  set applyTxPowerLevel5ghzHigh($core.bool v) { $_setBool(93, v); }
  @$pb.TagNumber(1084)
  $core.bool hasApplyTxPowerLevel5ghzHigh() => $_has(93);
  @$pb.TagNumber(1084)
  void clearApplyTxPowerLevel5ghzHigh() => clearField(1084);

  @$pb.TagNumber(1085)
  $core.bool get applyCountryCode => $_getBF(94);
  @$pb.TagNumber(1085)
  set applyCountryCode($core.bool v) { $_setBool(94, v); }
  @$pb.TagNumber(1085)
  $core.bool hasApplyCountryCode() => $_has(94);
  @$pb.TagNumber(1085)
  void clearApplyCountryCode() => clearField(1085);

  @$pb.TagNumber(1086)
  $core.bool get applyPinCountryCode => $_getBF(95);
  @$pb.TagNumber(1086)
  set applyPinCountryCode($core.bool v) { $_setBool(95, v); }
  @$pb.TagNumber(1086)
  $core.bool hasApplyPinCountryCode() => $_has(95);
  @$pb.TagNumber(1086)
  void clearApplyPinCountryCode() => clearField(1086);

  @$pb.TagNumber(1087)
  $core.bool get applyCustomPowerTable => $_getBF(96);
  @$pb.TagNumber(1087)
  set applyCustomPowerTable($core.bool v) { $_setBool(96, v); }
  @$pb.TagNumber(1087)
  $core.bool hasApplyCustomPowerTable() => $_has(96);
  @$pb.TagNumber(1087)
  void clearApplyCustomPowerTable() => clearField(1087);

  @$pb.TagNumber(1088)
  $core.bool get applyDisablePendingUpdateReboot => $_getBF(97);
  @$pb.TagNumber(1088)
  set applyDisablePendingUpdateReboot($core.bool v) { $_setBool(97, v); }
  @$pb.TagNumber(1088)
  $core.bool hasApplyDisablePendingUpdateReboot() => $_has(97);
  @$pb.TagNumber(1088)
  void clearApplyDisablePendingUpdateReboot() => clearField(1088);

  @$pb.TagNumber(1100)
  $core.List<WifiConfig_Network> get networks => $_getList(98);

  @$pb.TagNumber(1101)
  $core.bool get applyNetworks => $_getBF(99);
  @$pb.TagNumber(1101)
  set applyNetworks($core.bool v) { $_setBool(99, v); }
  @$pb.TagNumber(1101)
  $core.bool hasApplyNetworks() => $_has(99);
  @$pb.TagNumber(1101)
  void clearApplyNetworks() => clearField(1101);

  @$pb.TagNumber(3001)
  BootInfo get boot => $_getN(100);
  @$pb.TagNumber(3001)
  set boot(BootInfo v) { setField(3001, v); }
  @$pb.TagNumber(3001)
  $core.bool hasBoot() => $_has(100);
  @$pb.TagNumber(3001)
  void clearBoot() => clearField(3001);
  @$pb.TagNumber(3001)
  BootInfo ensureBoot() => $_ensure(100);

  @$pb.TagNumber(3033)
  $core.Map<$core.String, MeshConfig> get meshConfigsUpdates => $_getMap(101);
}

class MeshConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MeshConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDisplayName')
    ..e<MeshAuth>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', $pb.PbFieldType.OE, defaultOrMaker: MeshAuth.MESH_AUTH_UNKNOWN, valueOf: MeshAuth.valueOf, enumValues: MeshAuth.values)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyAuth')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastConnected')
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incarnation', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MeshConfig._() : super();
  factory MeshConfig({
    $core.String? displayName,
    $core.bool? applyDisplayName,
    MeshAuth? auth,
    $core.bool? applyAuth,
    $fixnum.Int64? lastConnected,
    $fixnum.Int64? incarnation,
  }) {
    final _result = create();
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (applyDisplayName != null) {
      _result.applyDisplayName = applyDisplayName;
    }
    if (auth != null) {
      _result.auth = auth;
    }
    if (applyAuth != null) {
      _result.applyAuth = applyAuth;
    }
    if (lastConnected != null) {
      _result.lastConnected = lastConnected;
    }
    if (incarnation != null) {
      _result.incarnation = incarnation;
    }
    return _result;
  }
  factory MeshConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MeshConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MeshConfig clone() => MeshConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MeshConfig copyWith(void Function(MeshConfig) updates) => super.copyWith((message) => updates(message as MeshConfig)) as MeshConfig; // ignore: deprecated_member_use
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
}

class ClientName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientName', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'givenName')
    ..hasRequiredFields = false
  ;

  ClientName._() : super();
  factory ClientName({
    $core.String? macAddress,
    $core.String? givenName,
  }) {
    final _result = create();
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (givenName != null) {
      _result.givenName = givenName;
    }
    return _result;
  }
  factory ClientName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientName clone() => ClientName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientName copyWith(void Function(ClientName) updates) => super.copyWith((message) => updates(message as ClientName)) as ClientName; // ignore: deprecated_member_use
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

class BootInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BootInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countByReason', entryClassName: 'BootInfo.CountByReasonEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..e<BootReason>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReason', $pb.PbFieldType.OE, defaultOrMaker: BootReason.BOOT_REASON_UNKNOWN, valueOf: BootReason.valueOf, enumValues: BootReason.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastCount', $pb.PbFieldType.O3)
    ..m<$core.int, $core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countByReasonDelta', entryClassName: 'BootInfo.CountByReasonDeltaEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  BootInfo._() : super();
  factory BootInfo({
    $core.Map<$core.int, $core.int>? countByReason,
    BootReason? lastReason,
    $core.int? lastCount,
    $core.Map<$core.int, $core.int>? countByReasonDelta,
  }) {
    final _result = create();
    if (countByReason != null) {
      _result.countByReason.addAll(countByReason);
    }
    if (lastReason != null) {
      _result.lastReason = lastReason;
    }
    if (lastCount != null) {
      _result.lastCount = lastCount;
    }
    if (countByReasonDelta != null) {
      _result.countByReasonDelta.addAll(countByReasonDelta);
    }
    return _result;
  }
  factory BootInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BootInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BootInfo clone() => BootInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BootInfo copyWith(void Function(BootInfo) updates) => super.copyWith((message) => updates(message as BootInfo)) as BootInfo; // ignore: deprecated_member_use
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
}

class AuthOpen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthOpen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthOpen._() : super();
  factory AuthOpen() => create();
  factory AuthOpen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthOpen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthOpen clone() => AuthOpen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthOpen copyWith(void Function(AuthOpen) updates) => super.copyWith((message) => updates(message as AuthOpen)) as AuthOpen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthOpen create() => AuthOpen._();
  AuthOpen createEmptyInstance() => create();
  static $pb.PbList<AuthOpen> createRepeated() => $pb.PbList<AuthOpen>();
  @$core.pragma('dart2js:noInline')
  static AuthOpen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthOpen>(create);
  static AuthOpen? _defaultInstance;
}

class AuthWpa2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa2._() : super();
  factory AuthWpa2({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2 clone() => AuthWpa2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2 copyWith(void Function(AuthWpa2) updates) => super.copyWith((message) => updates(message as AuthWpa2)) as AuthWpa2; // ignore: deprecated_member_use
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

class AuthWpa3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa3._() : super();
  factory AuthWpa3({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa3 clone() => AuthWpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa3 copyWith(void Function(AuthWpa3) updates) => super.copyWith((message) => updates(message as AuthWpa3)) as AuthWpa3; // ignore: deprecated_member_use
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

class AuthWpa2Wpa3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthWpa2Wpa3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthWpa2Wpa3._() : super();
  factory AuthWpa2Wpa3({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthWpa2Wpa3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthWpa2Wpa3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 clone() => AuthWpa2Wpa3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthWpa2Wpa3 copyWith(void Function(AuthWpa2Wpa3) updates) => super.copyWith((message) => updates(message as AuthWpa2Wpa3)) as AuthWpa2Wpa3; // ignore: deprecated_member_use
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

class AuthRadius extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRadius', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'server')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverCa')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverCaBase64', protoName: 'server_ca_base_64')
    ..hasRequiredFields = false
  ;

  AuthRadius._() : super();
  factory AuthRadius({
    $core.String? server,
    $core.String? password,
  @$core.Deprecated('This field is deprecated.')
    $core.String? serverCa,
    $core.String? serverCaBase64,
  }) {
    final _result = create();
    if (server != null) {
      _result.server = server;
    }
    if (password != null) {
      _result.password = password;
    }
    if (serverCa != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.serverCa = serverCa;
    }
    if (serverCaBase64 != null) {
      _result.serverCaBase64 = serverCaBase64;
    }
    return _result;
  }
  factory AuthRadius.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRadius.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRadius clone() => AuthRadius()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRadius copyWith(void Function(AuthRadius) updates) => super.copyWith((message) => updates(message as AuthRadius)) as AuthRadius; // ignore: deprecated_member_use
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

class WifiGetClientsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetClientsRequest._() : super();
  factory WifiGetClientsRequest() => create();
  factory WifiGetClientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest clone() => WifiGetClientsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsRequest copyWith(void Function(WifiGetClientsRequest) updates) => super.copyWith((message) => updates(message as WifiGetClientsRequest)) as WifiGetClientsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest create() => WifiGetClientsRequest._();
  WifiGetClientsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientsRequest> createRepeated() => $pb.PbList<WifiGetClientsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientsRequest>(create);
  static WifiGetClientsRequest? _defaultInstance;
}

class WifiSetupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkPassword')
    ..hasRequiredFields = false
  ;

  WifiSetupRequest._() : super();
  factory WifiSetupRequest({
    $core.bool? skip,
    $core.String? networkName,
    $core.String? networkPassword,
  }) {
    final _result = create();
    if (skip != null) {
      _result.skip = skip;
    }
    if (networkName != null) {
      _result.networkName = networkName;
    }
    if (networkPassword != null) {
      _result.networkPassword = networkPassword;
    }
    return _result;
  }
  factory WifiSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetupRequest clone() => WifiSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetupRequest copyWith(void Function(WifiSetupRequest) updates) => super.copyWith((message) => updates(message as WifiSetupRequest)) as WifiSetupRequest; // ignore: deprecated_member_use
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

class WifiGetPingMetricsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetPingMetricsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetPingMetricsRequest._() : super();
  factory WifiGetPingMetricsRequest() => create();
  factory WifiGetPingMetricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPingMetricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsRequest clone() => WifiGetPingMetricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsRequest copyWith(void Function(WifiGetPingMetricsRequest) updates) => super.copyWith((message) => updates(message as WifiGetPingMetricsRequest)) as WifiGetPingMetricsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsRequest create() => WifiGetPingMetricsRequest._();
  WifiGetPingMetricsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetPingMetricsRequest> createRepeated() => $pb.PbList<WifiGetPingMetricsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetPingMetricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetPingMetricsRequest>(create);
  static WifiGetPingMetricsRequest? _defaultInstance;
}

class WifiGetDiagnosticsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetDiagnosticsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetDiagnosticsRequest._() : super();
  factory WifiGetDiagnosticsRequest() => create();
  factory WifiGetDiagnosticsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest clone() => WifiGetDiagnosticsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsRequest copyWith(void Function(WifiGetDiagnosticsRequest) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsRequest)) as WifiGetDiagnosticsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest create() => WifiGetDiagnosticsRequest._();
  WifiGetDiagnosticsRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetDiagnosticsRequest> createRepeated() => $pb.PbList<WifiGetDiagnosticsRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetDiagnosticsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetDiagnosticsRequest>(create);
  static WifiGetDiagnosticsRequest? _defaultInstance;
}

class WifiGetConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiGetConfigRequest._() : super();
  factory WifiGetConfigRequest() => create();
  factory WifiGetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest clone() => WifiGetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigRequest copyWith(void Function(WifiGetConfigRequest) updates) => super.copyWith((message) => updates(message as WifiGetConfigRequest)) as WifiGetConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest create() => WifiGetConfigRequest._();
  WifiGetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetConfigRequest> createRepeated() => $pb.PbList<WifiGetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetConfigRequest>(create);
  static WifiGetConfigRequest? _defaultInstance;
}

class WifiSetMeshDeviceTrustRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetMeshDeviceTrustRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..e<MeshAuth>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', $pb.PbFieldType.OE, defaultOrMaker: MeshAuth.MESH_AUTH_UNKNOWN, valueOf: MeshAuth.valueOf, enumValues: MeshAuth.values)
    ..hasRequiredFields = false
  ;

  WifiSetMeshDeviceTrustRequest._() : super();
  factory WifiSetMeshDeviceTrustRequest({
    $core.String? deviceId,
    MeshAuth? auth,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (auth != null) {
      _result.auth = auth;
    }
    return _result;
  }
  factory WifiSetMeshDeviceTrustRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshDeviceTrustRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustRequest clone() => WifiSetMeshDeviceTrustRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustRequest copyWith(void Function(WifiSetMeshDeviceTrustRequest) updates) => super.copyWith((message) => updates(message as WifiSetMeshDeviceTrustRequest)) as WifiSetMeshDeviceTrustRequest; // ignore: deprecated_member_use
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

class WifiSetMeshConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetMeshConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<MeshConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshConfig', subBuilder: MeshConfig.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  WifiSetMeshConfigRequest._() : super();
  factory WifiSetMeshConfigRequest({
    MeshConfig? meshConfig,
    $core.String? deviceId,
  }) {
    final _result = create();
    if (meshConfig != null) {
      _result.meshConfig = meshConfig;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    return _result;
  }
  factory WifiSetMeshConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigRequest clone() => WifiSetMeshConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigRequest copyWith(void Function(WifiSetMeshConfigRequest) updates) => super.copyWith((message) => updates(message as WifiSetMeshConfigRequest)) as WifiSetMeshConfigRequest; // ignore: deprecated_member_use
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

class WifiGetClientHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..hasRequiredFields = false
  ;

  WifiGetClientHistoryRequest._() : super();
  factory WifiGetClientHistoryRequest({
    $core.String? macAddress,
  }) {
    final _result = create();
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    return _result;
  }
  factory WifiGetClientHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryRequest clone() => WifiGetClientHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryRequest copyWith(void Function(WifiGetClientHistoryRequest) updates) => super.copyWith((message) => updates(message as WifiGetClientHistoryRequest)) as WifiGetClientHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryRequest create() => WifiGetClientHistoryRequest._();
  WifiGetClientHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<WifiGetClientHistoryRequest> createRepeated() => $pb.PbList<WifiGetClientHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiGetClientHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiGetClientHistoryRequest>(create);
  static WifiGetClientHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set macAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacAddress() => clearField(1);
}

class WifiSetAviationConformedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetAviationConformedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiSetAviationConformedRequest._() : super();
  factory WifiSetAviationConformedRequest() => create();
  factory WifiSetAviationConformedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetAviationConformedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetAviationConformedRequest clone() => WifiSetAviationConformedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetAviationConformedRequest copyWith(void Function(WifiSetAviationConformedRequest) updates) => super.copyWith((message) => updates(message as WifiSetAviationConformedRequest)) as WifiSetAviationConformedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetAviationConformedRequest create() => WifiSetAviationConformedRequest._();
  WifiSetAviationConformedRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetAviationConformedRequest> createRepeated() => $pb.PbList<WifiSetAviationConformedRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetAviationConformedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetAviationConformedRequest>(create);
  static WifiSetAviationConformedRequest? _defaultInstance;
}

class WifiSetClientGivenNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetClientGivenNameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ClientName>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientName', subBuilder: ClientName.create)
    ..hasRequiredFields = false
  ;

  WifiSetClientGivenNameRequest._() : super();
  factory WifiSetClientGivenNameRequest({
    ClientName? clientName,
  }) {
    final _result = create();
    if (clientName != null) {
      _result.clientName = clientName;
    }
    return _result;
  }
  factory WifiSetClientGivenNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetClientGivenNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetClientGivenNameRequest clone() => WifiSetClientGivenNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetClientGivenNameRequest copyWith(void Function(WifiSetClientGivenNameRequest) updates) => super.copyWith((message) => updates(message as WifiSetClientGivenNameRequest)) as WifiSetClientGivenNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetClientGivenNameRequest create() => WifiSetClientGivenNameRequest._();
  WifiSetClientGivenNameRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSetClientGivenNameRequest> createRepeated() => $pb.PbList<WifiSetClientGivenNameRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSetClientGivenNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetClientGivenNameRequest>(create);
  static WifiSetClientGivenNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ClientName get clientName => $_getN(0);
  @$pb.TagNumber(1)
  set clientName(ClientName v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientName() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientName() => clearField(1);
  @$pb.TagNumber(1)
  ClientName ensureClientName() => $_ensure(0);
}

class WifiSelfTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSelfTestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiSelfTestRequest._() : super();
  factory WifiSelfTestRequest() => create();
  factory WifiSelfTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTestRequest clone() => WifiSelfTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTestRequest copyWith(void Function(WifiSelfTestRequest) updates) => super.copyWith((message) => updates(message as WifiSelfTestRequest)) as WifiSelfTestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSelfTestRequest create() => WifiSelfTestRequest._();
  WifiSelfTestRequest createEmptyInstance() => create();
  static $pb.PbList<WifiSelfTestRequest> createRepeated() => $pb.PbList<WifiSelfTestRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiSelfTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSelfTestRequest>(create);
  static WifiSelfTestRequest? _defaultInstance;
}

class WifiCalibrationModeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiCalibrationModeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiCalibrationModeRequest._() : super();
  factory WifiCalibrationModeRequest() => create();
  factory WifiCalibrationModeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCalibrationModeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCalibrationModeRequest clone() => WifiCalibrationModeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCalibrationModeRequest copyWith(void Function(WifiCalibrationModeRequest) updates) => super.copyWith((message) => updates(message as WifiCalibrationModeRequest)) as WifiCalibrationModeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiCalibrationModeRequest create() => WifiCalibrationModeRequest._();
  WifiCalibrationModeRequest createEmptyInstance() => create();
  static $pb.PbList<WifiCalibrationModeRequest> createRepeated() => $pb.PbList<WifiCalibrationModeRequest>();
  @$core.pragma('dart2js:noInline')
  static WifiCalibrationModeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCalibrationModeRequest>(create);
  static WifiCalibrationModeRequest? _defaultInstance;
}

class TransceiverIFLoopbackTestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverIFLoopbackTestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableIfLoopback')
    ..hasRequiredFields = false
  ;

  TransceiverIFLoopbackTestRequest._() : super();
  factory TransceiverIFLoopbackTestRequest({
    $core.bool? enableIfLoopback,
  }) {
    final _result = create();
    if (enableIfLoopback != null) {
      _result.enableIfLoopback = enableIfLoopback;
    }
    return _result;
  }
  factory TransceiverIFLoopbackTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverIFLoopbackTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestRequest clone() => TransceiverIFLoopbackTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestRequest copyWith(void Function(TransceiverIFLoopbackTestRequest) updates) => super.copyWith((message) => updates(message as TransceiverIFLoopbackTestRequest)) as TransceiverIFLoopbackTestRequest; // ignore: deprecated_member_use
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

class TransceiverGetStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TransceiverGetStatusRequest._() : super();
  factory TransceiverGetStatusRequest() => create();
  factory TransceiverGetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest clone() => TransceiverGetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusRequest copyWith(void Function(TransceiverGetStatusRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusRequest)) as TransceiverGetStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest create() => TransceiverGetStatusRequest._();
  TransceiverGetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<TransceiverGetStatusRequest> createRepeated() => $pb.PbList<TransceiverGetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static TransceiverGetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransceiverGetStatusRequest>(create);
  static TransceiverGetStatusRequest? _defaultInstance;
}

class TransceiverGetTelemetryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetTelemetryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TransceiverGetTelemetryRequest._() : super();
  factory TransceiverGetTelemetryRequest() => create();
  factory TransceiverGetTelemetryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest clone() => TransceiverGetTelemetryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryRequest copyWith(void Function(TransceiverGetTelemetryRequest) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryRequest)) as TransceiverGetTelemetryRequest; // ignore: deprecated_member_use
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

class Response extends $pb.GeneratedMessage {
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1001, 1003, 1004, 1006, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1023, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3012, 3013, 3015, 3016, 3022, 4001, 4003, 4004])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: $1.Status.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<RebootResponse>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot', subBuilder: RebootResponse.create)
    ..aOM<SpeedTestResponse>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speedTest', subBuilder: SpeedTestResponse.create)
    ..aOM<GetDeviceInfoResponse>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDeviceInfo', subBuilder: GetDeviceInfoResponse.create)
    ..aOM<GetNextIdResponse>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getNextId', subBuilder: GetNextIdResponse.create)
    ..aOM<GetPingResponse>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getPing', subBuilder: GetPingResponse.create)
    ..aOM<SetTrustedKeysResponse>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setTrustedKeys', subBuilder: SetTrustedKeysResponse.create)
    ..aOM<FactoryResetResponse>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryReset', subBuilder: FactoryResetResponse.create)
    ..aOM<GetLogResponse>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLog', subBuilder: GetLogResponse.create)
    ..aOM<SetSkuResponse>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setSku', subBuilder: SetSkuResponse.create)
    ..aOM<UpdateResponse>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'update', subBuilder: UpdateResponse.create)
    ..aOM<GetNetworkInterfacesResponse>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getNetworkInterfaces', subBuilder: GetNetworkInterfacesResponse.create)
    ..aOM<PingHostResponse>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingHost', subBuilder: PingHostResponse.create)
    ..aOM<GetLocationResponse>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLocation', subBuilder: GetLocationResponse.create)
    ..aOM<GetHeapDumpResponse>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getHeapDump', subBuilder: GetHeapDumpResponse.create)
    ..aOM<RestartControlResponse>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restartControl', subBuilder: RestartControlResponse.create)
    ..aOM<FuseResponse>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fuse', subBuilder: FuseResponse.create)
    ..aOM<GetConnectionsResponse>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getConnections', subBuilder: GetConnectionsResponse.create)
    ..aOM<StartSpeedtestResponse>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startSpeedtest', subBuilder: StartSpeedtestResponse.create)
    ..aOM<GetSpeedtestStatusResponse>(1028, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSpeedtestStatus', subBuilder: GetSpeedtestStatusResponse.create)
    ..aOM<ReportClientSpeedtestResponse>(1029, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reportClientSpeedtest', subBuilder: ReportClientSpeedtestResponse.create)
    ..aOM<InitiateRemoteSshResponse>(1030, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initiateRemoteSsh', subBuilder: InitiateRemoteSshResponse.create)
    ..aOM<SelfTestResponse>(1031, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfTest', subBuilder: SelfTestResponse.create)
    ..aOM<SetTestModeResponse>(1032, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setTestMode', subBuilder: SetTestModeResponse.create)
    ..aOM<SoftwareUpdateResponse>(1033, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdate', subBuilder: SoftwareUpdateResponse.create)
    ..aOM<EnableDebugTelemResponse>(1034, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableDebugTelem', subBuilder: EnableDebugTelemResponse.create)
    ..aOM<DishStowResponse>(2002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishStow', subBuilder: DishStowResponse.create)
    ..aOM<DishGetContextResponse>(2003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetContext', subBuilder: DishGetContextResponse.create)
    ..aOM<DishGetStatusResponse>(2004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetStatus', subBuilder: DishGetStatusResponse.create)
    ..aOM<DishAuthenticateResponse>(2005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishAuthenticate', subBuilder: DishAuthenticateResponse.create)
    ..aOM<DishGetHistoryResponse>(2006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetHistory', subBuilder: DishGetHistoryResponse.create)
    ..aOM<DishSetEmcResponse>(2007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetEmc', subBuilder: DishSetEmcResponse.create)
    ..aOM<DishGetObstructionMapResponse>(2008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetObstructionMap', subBuilder: DishGetObstructionMapResponse.create)
    ..aOM<DishGetEmcResponse>(2009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetEmc', subBuilder: DishGetEmcResponse.create)
    ..aOM<DishSetConfigResponse>(2010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishSetConfig', subBuilder: DishSetConfigResponse.create)
    ..aOM<DishGetConfigResponse>(2011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishGetConfig', subBuilder: DishGetConfigResponse.create)
    ..aOM<StartDishSelfTestResponse>(2012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDishSelfTest', subBuilder: StartDishSelfTestResponse.create)
    ..aOM<DishInhibitGpsResponse>(2013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishInhibitGps', subBuilder: DishInhibitGpsResponse.create)
    ..aOM<WifiSetConfigResponse>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetConfig', subBuilder: WifiSetConfigResponse.create)
    ..aOM<WifiGetClientsResponse>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClients', subBuilder: WifiGetClientsResponse.create)
    ..aOM<WifiSetupResponse>(3003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetup', subBuilder: WifiSetupResponse.create)
    ..aOM<WifiGetStatusResponse>(3004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetStatus', subBuilder: WifiGetStatusResponse.create)
    ..aOM<WifiAuthenticateResponse>(3005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiAuthenticate', subBuilder: WifiAuthenticateResponse.create)
    ..aOM<WifiGetHistoryResponse>(3006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetHistory', subBuilder: WifiGetHistoryResponse.create)
    ..aOM<WifiGetPingMetricsResponse>(3007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetPingMetrics', subBuilder: WifiGetPingMetricsResponse.create)
    ..aOM<WifiGetDiagnosticsResponse>(3008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetDiagnostics', subBuilder: WifiGetDiagnosticsResponse.create)
    ..aOM<WifiGetConfigResponse>(3009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetConfig', subBuilder: WifiGetConfigResponse.create)
    ..aOM<WifiSetMeshDeviceTrustResponse>(3012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetMeshDeviceTrust', subBuilder: WifiSetMeshDeviceTrustResponse.create)
    ..aOM<WifiSetMeshConfigResponse>(3013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSetMeshConfig', subBuilder: WifiSetMeshConfigResponse.create)
    ..aOM<WifiGetClientHistoryResponse>(3015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetClientHistory', subBuilder: WifiGetClientHistoryResponse.create)
    ..aOM<WifiSelfTestResponse>(3016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiSelfTest', subBuilder: WifiSelfTestResponse.create)
    ..aOM<WifiGetPersistentStatsResponse>(3022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiGetPersistentStats', subBuilder: WifiGetPersistentStatsResponse.create)
    ..aOM<TransceiverIFLoopbackTestResponse>(4001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverIfLoopbackTest', subBuilder: TransceiverIFLoopbackTestResponse.create)
    ..aOM<TransceiverGetStatusResponse>(4003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetStatus', subBuilder: TransceiverGetStatusResponse.create)
    ..aOM<TransceiverGetTelemetryResponse>(4004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transceiverGetTelemetry', subBuilder: TransceiverGetTelemetryResponse.create)
    ..hasRequiredFields = false
  ;

  Response._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (status != null) {
      _result.status = status;
    }
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (speedTest != null) {
      _result.speedTest = speedTest;
    }
    if (getDeviceInfo != null) {
      _result.getDeviceInfo = getDeviceInfo;
    }
    if (getNextId != null) {
      _result.getNextId = getNextId;
    }
    if (getPing != null) {
      _result.getPing = getPing;
    }
    if (setTrustedKeys != null) {
      _result.setTrustedKeys = setTrustedKeys;
    }
    if (factoryReset != null) {
      _result.factoryReset = factoryReset;
    }
    if (getLog != null) {
      _result.getLog = getLog;
    }
    if (setSku != null) {
      _result.setSku = setSku;
    }
    if (update != null) {
      _result.update = update;
    }
    if (getNetworkInterfaces != null) {
      _result.getNetworkInterfaces = getNetworkInterfaces;
    }
    if (pingHost != null) {
      _result.pingHost = pingHost;
    }
    if (getLocation != null) {
      _result.getLocation = getLocation;
    }
    if (getHeapDump != null) {
      _result.getHeapDump = getHeapDump;
    }
    if (restartControl != null) {
      _result.restartControl = restartControl;
    }
    if (fuse != null) {
      _result.fuse = fuse;
    }
    if (getConnections != null) {
      _result.getConnections = getConnections;
    }
    if (startSpeedtest != null) {
      _result.startSpeedtest = startSpeedtest;
    }
    if (getSpeedtestStatus != null) {
      _result.getSpeedtestStatus = getSpeedtestStatus;
    }
    if (reportClientSpeedtest != null) {
      _result.reportClientSpeedtest = reportClientSpeedtest;
    }
    if (initiateRemoteSsh != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.initiateRemoteSsh = initiateRemoteSsh;
    }
    if (selfTest != null) {
      _result.selfTest = selfTest;
    }
    if (setTestMode != null) {
      _result.setTestMode = setTestMode;
    }
    if (softwareUpdate != null) {
      _result.softwareUpdate = softwareUpdate;
    }
    if (enableDebugTelem != null) {
      _result.enableDebugTelem = enableDebugTelem;
    }
    if (dishStow != null) {
      _result.dishStow = dishStow;
    }
    if (dishGetContext != null) {
      _result.dishGetContext = dishGetContext;
    }
    if (dishGetStatus != null) {
      _result.dishGetStatus = dishGetStatus;
    }
    if (dishAuthenticate != null) {
      _result.dishAuthenticate = dishAuthenticate;
    }
    if (dishGetHistory != null) {
      _result.dishGetHistory = dishGetHistory;
    }
    if (dishSetEmc != null) {
      _result.dishSetEmc = dishSetEmc;
    }
    if (dishGetObstructionMap != null) {
      _result.dishGetObstructionMap = dishGetObstructionMap;
    }
    if (dishGetEmc != null) {
      _result.dishGetEmc = dishGetEmc;
    }
    if (dishSetConfig != null) {
      _result.dishSetConfig = dishSetConfig;
    }
    if (dishGetConfig != null) {
      _result.dishGetConfig = dishGetConfig;
    }
    if (startDishSelfTest != null) {
      _result.startDishSelfTest = startDishSelfTest;
    }
    if (dishInhibitGps != null) {
      _result.dishInhibitGps = dishInhibitGps;
    }
    if (wifiSetConfig != null) {
      _result.wifiSetConfig = wifiSetConfig;
    }
    if (wifiGetClients != null) {
      _result.wifiGetClients = wifiGetClients;
    }
    if (wifiSetup != null) {
      _result.wifiSetup = wifiSetup;
    }
    if (wifiGetStatus != null) {
      _result.wifiGetStatus = wifiGetStatus;
    }
    if (wifiAuthenticate != null) {
      _result.wifiAuthenticate = wifiAuthenticate;
    }
    if (wifiGetHistory != null) {
      _result.wifiGetHistory = wifiGetHistory;
    }
    if (wifiGetPingMetrics != null) {
      _result.wifiGetPingMetrics = wifiGetPingMetrics;
    }
    if (wifiGetDiagnostics != null) {
      _result.wifiGetDiagnostics = wifiGetDiagnostics;
    }
    if (wifiGetConfig != null) {
      _result.wifiGetConfig = wifiGetConfig;
    }
    if (wifiSetMeshDeviceTrust != null) {
      _result.wifiSetMeshDeviceTrust = wifiSetMeshDeviceTrust;
    }
    if (wifiSetMeshConfig != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.wifiSetMeshConfig = wifiSetMeshConfig;
    }
    if (wifiGetClientHistory != null) {
      _result.wifiGetClientHistory = wifiGetClientHistory;
    }
    if (wifiSelfTest != null) {
      _result.wifiSelfTest = wifiSelfTest;
    }
    if (wifiGetPersistentStats != null) {
      _result.wifiGetPersistentStats = wifiGetPersistentStats;
    }
    if (transceiverIfLoopbackTest != null) {
      _result.transceiverIfLoopbackTest = transceiverIfLoopbackTest;
    }
    if (transceiverGetStatus != null) {
      _result.transceiverGetStatus = transceiverGetStatus;
    }
    if (transceiverGetTelemetry != null) {
      _result.transceiverGetTelemetry = transceiverGetTelemetry;
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response; // ignore: deprecated_member_use
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

class Status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Status', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Status._() : super();
  factory Status({
    $core.int? code,
    $core.String? message,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status; // ignore: deprecated_member_use
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

class RebootResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RebootResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RebootResponse._() : super();
  factory RebootResponse() => create();
  factory RebootResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootResponse clone() => RebootResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootResponse copyWith(void Function(RebootResponse) updates) => super.copyWith((message) => updates(message as RebootResponse)) as RebootResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RebootResponse create() => RebootResponse._();
  RebootResponse createEmptyInstance() => create();
  static $pb.PbList<RebootResponse> createRepeated() => $pb.PbList<RebootResponse>();
  @$core.pragma('dart2js:noInline')
  static RebootResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootResponse>(create);
  static RebootResponse? _defaultInstance;
}

class SpeedTestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedTestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadBps', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadBps', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyS', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps', $pb.PbFieldType.OF)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMs', $pb.PbFieldType.OF)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps1TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_1_tcp_conn')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps1TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_1_tcp_conn')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps4TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_4_tcp_conn')
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps4TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_4_tcp_conn')
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps16TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_16_tcp_conn')
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps16TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_16_tcp_conn')
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downloadMbps64TcpConn', $pb.PbFieldType.OF, protoName: 'download_mbps_64_tcp_conn')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadMbps64TcpConn', $pb.PbFieldType.OF, protoName: 'upload_mbps_64_tcp_conn')
    ..aOM<SpeedTestStats>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routerSpeedtest', subBuilder: SpeedTestStats.create)
    ..hasRequiredFields = false
  ;

  SpeedTestResponse._() : super();
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
    final _result = create();
    if (downloadBps != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.downloadBps = downloadBps;
    }
    if (uploadBps != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.uploadBps = uploadBps;
    }
    if (latencyS != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.latencyS = latencyS;
    }
    if (downloadMbps != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.downloadMbps = downloadMbps;
    }
    if (uploadMbps != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.uploadMbps = uploadMbps;
    }
    if (latencyMs != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.latencyMs = latencyMs;
    }
    if (downloadMbps1TcpConn != null) {
      _result.downloadMbps1TcpConn = downloadMbps1TcpConn;
    }
    if (uploadMbps1TcpConn != null) {
      _result.uploadMbps1TcpConn = uploadMbps1TcpConn;
    }
    if (downloadMbps4TcpConn != null) {
      _result.downloadMbps4TcpConn = downloadMbps4TcpConn;
    }
    if (uploadMbps4TcpConn != null) {
      _result.uploadMbps4TcpConn = uploadMbps4TcpConn;
    }
    if (downloadMbps16TcpConn != null) {
      _result.downloadMbps16TcpConn = downloadMbps16TcpConn;
    }
    if (uploadMbps16TcpConn != null) {
      _result.uploadMbps16TcpConn = uploadMbps16TcpConn;
    }
    if (downloadMbps64TcpConn != null) {
      _result.downloadMbps64TcpConn = downloadMbps64TcpConn;
    }
    if (uploadMbps64TcpConn != null) {
      _result.uploadMbps64TcpConn = uploadMbps64TcpConn;
    }
    if (routerSpeedtest != null) {
      _result.routerSpeedtest = routerSpeedtest;
    }
    return _result;
  }
  factory SpeedTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedTestResponse clone() => SpeedTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedTestResponse copyWith(void Function(SpeedTestResponse) updates) => super.copyWith((message) => updates(message as SpeedTestResponse)) as SpeedTestResponse; // ignore: deprecated_member_use
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

class GetDeviceInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..hasRequiredFields = false
  ;

  GetDeviceInfoResponse._() : super();
  factory GetDeviceInfoResponse({
    DeviceInfo? deviceInfo,
  }) {
    final _result = create();
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    return _result;
  }
  factory GetDeviceInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse clone() => GetDeviceInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceInfoResponse copyWith(void Function(GetDeviceInfoResponse) updates) => super.copyWith((message) => updates(message as GetDeviceInfoResponse)) as GetDeviceInfoResponse; // ignore: deprecated_member_use
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

class DeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utcOffsetS', $pb.PbFieldType.O3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwarePartitionsEqual')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDev')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootcount', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antiRollbackVersion', $pb.PbFieldType.O3)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHitl')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manufacturedVersion')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generationNumber')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishCohoused')
    ..aOM<BootInfo>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boot', subBuilder: BootInfo.create)
    ..hasRequiredFields = false
  ;

  DeviceInfo._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (utcOffsetS != null) {
      _result.utcOffsetS = utcOffsetS;
    }
    if (softwarePartitionsEqual != null) {
      _result.softwarePartitionsEqual = softwarePartitionsEqual;
    }
    if (isDev != null) {
      _result.isDev = isDev;
    }
    if (bootcount != null) {
      _result.bootcount = bootcount;
    }
    if (antiRollbackVersion != null) {
      _result.antiRollbackVersion = antiRollbackVersion;
    }
    if (isHitl != null) {
      _result.isHitl = isHitl;
    }
    if (manufacturedVersion != null) {
      _result.manufacturedVersion = manufacturedVersion;
    }
    if (generationNumber != null) {
      _result.generationNumber = generationNumber;
    }
    if (dishCohoused != null) {
      _result.dishCohoused = dishCohoused;
    }
    if (boot != null) {
      _result.boot = boot;
    }
    return _result;
  }
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo; // ignore: deprecated_member_use
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

class GetNextIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNextIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epochId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetNextIdResponse._() : super();
  factory GetNextIdResponse({
    $fixnum.Int64? id,
    $fixnum.Int64? epochId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (epochId != null) {
      _result.epochId = epochId;
    }
    return _result;
  }
  factory GetNextIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNextIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNextIdResponse clone() => GetNextIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNextIdResponse copyWith(void Function(GetNextIdResponse) updates) => super.copyWith((message) => updates(message as GetNextIdResponse)) as GetNextIdResponse; // ignore: deprecated_member_use
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

class GetPingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, PingResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', entryClassName: 'GetPingResponse.ResultsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: PingResult.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  GetPingResponse._() : super();
  factory GetPingResponse({
    $core.Map<$core.String, PingResult>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory GetPingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPingResponse clone() => GetPingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPingResponse copyWith(void Function(GetPingResponse) updates) => super.copyWith((message) => updates(message as GetPingResponse)) as GetPingResponse; // ignore: deprecated_member_use
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

class PingResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate', $pb.PbFieldType.OF, protoName: 'dropRate')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMs', $pb.PbFieldType.OF, protoName: 'latencyMs')
    ..aOM<PingTarget>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target', subBuilder: PingTarget.create)
    ..hasRequiredFields = false
  ;

  PingResult._() : super();
  factory PingResult({
    $core.double? dropRate,
    $core.double? latencyMs,
    PingTarget? target,
  }) {
    final _result = create();
    if (dropRate != null) {
      _result.dropRate = dropRate;
    }
    if (latencyMs != null) {
      _result.latencyMs = latencyMs;
    }
    if (target != null) {
      _result.target = target;
    }
    return _result;
  }
  factory PingResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResult clone() => PingResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResult copyWith(void Function(PingResult) updates) => super.copyWith((message) => updates(message as PingResult)) as PingResult; // ignore: deprecated_member_use
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

class PingTarget extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingTarget', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'service')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  PingTarget._() : super();
  factory PingTarget({
    $core.String? service,
    $core.String? location,
    $core.String? address,
  }) {
    final _result = create();
    if (service != null) {
      _result.service = service;
    }
    if (location != null) {
      _result.location = location;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory PingTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingTarget clone() => PingTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingTarget copyWith(void Function(PingTarget) updates) => super.copyWith((message) => updates(message as PingTarget)) as PingTarget; // ignore: deprecated_member_use
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

class SetTrustedKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetTrustedKeysResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetTrustedKeysResponse._() : super();
  factory SetTrustedKeysResponse() => create();
  factory SetTrustedKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTrustedKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTrustedKeysResponse clone() => SetTrustedKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTrustedKeysResponse copyWith(void Function(SetTrustedKeysResponse) updates) => super.copyWith((message) => updates(message as SetTrustedKeysResponse)) as SetTrustedKeysResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysResponse create() => SetTrustedKeysResponse._();
  SetTrustedKeysResponse createEmptyInstance() => create();
  static $pb.PbList<SetTrustedKeysResponse> createRepeated() => $pb.PbList<SetTrustedKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static SetTrustedKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTrustedKeysResponse>(create);
  static SetTrustedKeysResponse? _defaultInstance;
}

class FactoryResetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FactoryResetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FactoryResetResponse._() : super();
  factory FactoryResetResponse() => create();
  factory FactoryResetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FactoryResetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FactoryResetResponse clone() => FactoryResetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FactoryResetResponse copyWith(void Function(FactoryResetResponse) updates) => super.copyWith((message) => updates(message as FactoryResetResponse)) as FactoryResetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FactoryResetResponse create() => FactoryResetResponse._();
  FactoryResetResponse createEmptyInstance() => create();
  static $pb.PbList<FactoryResetResponse> createRepeated() => $pb.PbList<FactoryResetResponse>();
  @$core.pragma('dart2js:noInline')
  static FactoryResetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FactoryResetResponse>(create);
  static FactoryResetResponse? _defaultInstance;
}

class GetLogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syslog')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offlineLog')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'persistentLog')
    ..hasRequiredFields = false
  ;

  GetLogResponse._() : super();
  factory GetLogResponse({
    $core.String? syslog,
    $core.String? offlineLog,
    $core.String? persistentLog,
  }) {
    final _result = create();
    if (syslog != null) {
      _result.syslog = syslog;
    }
    if (offlineLog != null) {
      _result.offlineLog = offlineLog;
    }
    if (persistentLog != null) {
      _result.persistentLog = persistentLog;
    }
    return _result;
  }
  factory GetLogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLogResponse clone() => GetLogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLogResponse copyWith(void Function(GetLogResponse) updates) => super.copyWith((message) => updates(message as GetLogResponse)) as GetLogResponse; // ignore: deprecated_member_use
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

class SetSkuResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetSkuResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetSkuResponse._() : super();
  factory SetSkuResponse() => create();
  factory SetSkuResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSkuResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSkuResponse clone() => SetSkuResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSkuResponse copyWith(void Function(SetSkuResponse) updates) => super.copyWith((message) => updates(message as SetSkuResponse)) as SetSkuResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetSkuResponse create() => SetSkuResponse._();
  SetSkuResponse createEmptyInstance() => create();
  static $pb.PbList<SetSkuResponse> createRepeated() => $pb.PbList<SetSkuResponse>();
  @$core.pragma('dart2js:noInline')
  static SetSkuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSkuResponse>(create);
  static SetSkuResponse? _defaultInstance;
}

class UpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateResponse._() : super();
  factory UpdateResponse() => create();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;
}

class GetNetworkInterfacesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNetworkInterfacesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<NetworkInterface>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkInterfaces', $pb.PbFieldType.PM, subBuilder: NetworkInterface.create)
    ..hasRequiredFields = false
  ;

  GetNetworkInterfacesResponse._() : super();
  factory GetNetworkInterfacesResponse({
    $core.Iterable<NetworkInterface>? networkInterfaces,
  }) {
    final _result = create();
    if (networkInterfaces != null) {
      _result.networkInterfaces.addAll(networkInterfaces);
    }
    return _result;
  }
  factory GetNetworkInterfacesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkInterfacesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesResponse clone() => GetNetworkInterfacesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkInterfacesResponse copyWith(void Function(GetNetworkInterfacesResponse) updates) => super.copyWith((message) => updates(message as GetNetworkInterfacesResponse)) as GetNetworkInterfacesResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetworkInterface.RxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packets', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frameErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  NetworkInterface_RxStats._() : super();
  factory NetworkInterface_RxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? packets,
    $fixnum.Int64? frameErrors,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (packets != null) {
      _result.packets = packets;
    }
    if (frameErrors != null) {
      _result.frameErrors = frameErrors;
    }
    return _result;
  }
  factory NetworkInterface_RxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface_RxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface_RxStats clone() => NetworkInterface_RxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface_RxStats copyWith(void Function(NetworkInterface_RxStats) updates) => super.copyWith((message) => updates(message as NetworkInterface_RxStats)) as NetworkInterface_RxStats; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetworkInterface.TxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packets', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  NetworkInterface_TxStats._() : super();
  factory NetworkInterface_TxStats({
    $fixnum.Int64? bytes,
    $fixnum.Int64? packets,
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (packets != null) {
      _result.packets = packets;
    }
    return _result;
  }
  factory NetworkInterface_TxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface_TxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface_TxStats clone() => NetworkInterface_TxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface_TxStats copyWith(void Function(NetworkInterface_TxStats) updates) => super.copyWith((message) => updates(message as NetworkInterface_TxStats)) as NetworkInterface_TxStats; // ignore: deprecated_member_use
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

class NetworkInterface extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, NetworkInterface_Interface> _NetworkInterface_InterfaceByTag = {
    1000 : NetworkInterface_Interface.ethernet,
    1001 : NetworkInterface_Interface.wifi,
    1002 : NetworkInterface_Interface.bridge,
    0 : NetworkInterface_Interface.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetworkInterface', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1000, 1001, 1002])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<NetworkInterface_RxStats>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxStats', subBuilder: NetworkInterface_RxStats.create)
    ..aOM<NetworkInterface_TxStats>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txStats', subBuilder: NetworkInterface_TxStats.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'up')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv4Addresses')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv6Addresses')
    ..aOM<EthernetNetworkInterface>(1000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethernet', subBuilder: EthernetNetworkInterface.create)
    ..aOM<WifiNetworkInterface>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifi', subBuilder: WifiNetworkInterface.create)
    ..aOM<BridgeNetworkInterface>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bridge', subBuilder: BridgeNetworkInterface.create)
    ..hasRequiredFields = false
  ;

  NetworkInterface._() : super();
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
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (rxStats != null) {
      _result.rxStats = rxStats;
    }
    if (txStats != null) {
      _result.txStats = txStats;
    }
    if (up != null) {
      _result.up = up;
    }
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (ipv4Addresses != null) {
      _result.ipv4Addresses.addAll(ipv4Addresses);
    }
    if (ipv6Addresses != null) {
      _result.ipv6Addresses.addAll(ipv6Addresses);
    }
    if (ethernet != null) {
      _result.ethernet = ethernet;
    }
    if (wifi != null) {
      _result.wifi = wifi;
    }
    if (bridge != null) {
      _result.bridge = bridge;
    }
    return _result;
  }
  factory NetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInterface clone() => NetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInterface copyWith(void Function(NetworkInterface) updates) => super.copyWith((message) => updates(message as NetworkInterface)) as NetworkInterface; // ignore: deprecated_member_use
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

class EthernetNetworkInterface extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EthernetNetworkInterface', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkDetected')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speedMbps', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autonegotiationOn')
    ..e<EthernetNetworkInterface_Duplex>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duplex', $pb.PbFieldType.OE, defaultOrMaker: EthernetNetworkInterface_Duplex.UNKNOWN, valueOf: EthernetNetworkInterface_Duplex.valueOf, enumValues: EthernetNetworkInterface_Duplex.values)
    ..hasRequiredFields = false
  ;

  EthernetNetworkInterface._() : super();
  factory EthernetNetworkInterface({
    $core.bool? linkDetected,
    $core.int? speedMbps,
    $core.bool? autonegotiationOn,
    EthernetNetworkInterface_Duplex? duplex,
  }) {
    final _result = create();
    if (linkDetected != null) {
      _result.linkDetected = linkDetected;
    }
    if (speedMbps != null) {
      _result.speedMbps = speedMbps;
    }
    if (autonegotiationOn != null) {
      _result.autonegotiationOn = autonegotiationOn;
    }
    if (duplex != null) {
      _result.duplex = duplex;
    }
    return _result;
  }
  factory EthernetNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthernetNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthernetNetworkInterface clone() => EthernetNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthernetNetworkInterface copyWith(void Function(EthernetNetworkInterface) updates) => super.copyWith((message) => updates(message as EthernetNetworkInterface)) as EthernetNetworkInterface; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetworkInterface.AntennaeStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi1', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi2', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi3', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi4', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  WifiNetworkInterface_AntennaeStatus._() : super();
  factory WifiNetworkInterface_AntennaeStatus({
    $core.double? rssi1,
    $core.double? rssi2,
    $core.double? rssi3,
    $core.double? rssi4,
  }) {
    final _result = create();
    if (rssi1 != null) {
      _result.rssi1 = rssi1;
    }
    if (rssi2 != null) {
      _result.rssi2 = rssi2;
    }
    if (rssi3 != null) {
      _result.rssi3 = rssi3;
    }
    if (rssi4 != null) {
      _result.rssi4 = rssi4;
    }
    return _result;
  }
  factory WifiNetworkInterface_AntennaeStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_AntennaeStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_AntennaeStatus clone() => WifiNetworkInterface_AntennaeStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_AntennaeStatus copyWith(void Function(WifiNetworkInterface_AntennaeStatus) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_AntennaeStatus)) as WifiNetworkInterface_AntennaeStatus; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetworkInterface.InvalidPacketCounts', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxInvalidNwid', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxInvalidCrypt', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxInvalidFrag', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txExcessiveRetries', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invalidMisc', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiNetworkInterface_InvalidPacketCounts._() : super();
  factory WifiNetworkInterface_InvalidPacketCounts({
    $core.int? rxInvalidNwid,
    $core.int? rxInvalidCrypt,
    $core.int? rxInvalidFrag,
    $core.int? txExcessiveRetries,
    $core.int? invalidMisc,
  }) {
    final _result = create();
    if (rxInvalidNwid != null) {
      _result.rxInvalidNwid = rxInvalidNwid;
    }
    if (rxInvalidCrypt != null) {
      _result.rxInvalidCrypt = rxInvalidCrypt;
    }
    if (rxInvalidFrag != null) {
      _result.rxInvalidFrag = rxInvalidFrag;
    }
    if (txExcessiveRetries != null) {
      _result.txExcessiveRetries = txExcessiveRetries;
    }
    if (invalidMisc != null) {
      _result.invalidMisc = invalidMisc;
    }
    return _result;
  }
  factory WifiNetworkInterface_InvalidPacketCounts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_InvalidPacketCounts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_InvalidPacketCounts clone() => WifiNetworkInterface_InvalidPacketCounts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_InvalidPacketCounts copyWith(void Function(WifiNetworkInterface_InvalidPacketCounts) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_InvalidPacketCounts)) as WifiNetworkInterface_InvalidPacketCounts; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetworkInterface.ThermalStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temp', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temp2', $pb.PbFieldType.OD)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerReduction', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dutyCycle', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiNetworkInterface_ThermalStatus._() : super();
  factory WifiNetworkInterface_ThermalStatus({
    $core.int? level,
  @$core.Deprecated('This field is deprecated.')
    $core.int? temp,
    $core.double? temp2,
    $core.int? powerReduction,
    $core.int? dutyCycle,
  }) {
    final _result = create();
    if (level != null) {
      _result.level = level;
    }
    if (temp != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.temp = temp;
    }
    if (temp2 != null) {
      _result.temp2 = temp2;
    }
    if (powerReduction != null) {
      _result.powerReduction = powerReduction;
    }
    if (dutyCycle != null) {
      _result.dutyCycle = dutyCycle;
    }
    return _result;
  }
  factory WifiNetworkInterface_ThermalStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface_ThermalStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_ThermalStatus clone() => WifiNetworkInterface_ThermalStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface_ThermalStatus copyWith(void Function(WifiNetworkInterface_ThermalStatus) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface_ThermalStatus)) as WifiNetworkInterface_ThermalStatus; // ignore: deprecated_member_use
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

class WifiNetworkInterface extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetworkInterface', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiNetworkInterface_ThermalStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalStatus', subBuilder: WifiNetworkInterface_ThermalStatus.create)
    ..aOM<WifiNetworkInterface_InvalidPacketCounts>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invalidPacketCounts', subBuilder: WifiNetworkInterface_InvalidPacketCounts.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkQuality', $pb.PbFieldType.OD)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signalLevel', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseLevel', $pb.PbFieldType.OD)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'missedBeacons', $pb.PbFieldType.OU3)
    ..aOM<WifiNetworkInterface_AntennaeStatus>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaeStatus', subBuilder: WifiNetworkInterface_AntennaeStatus.create)
    ..hasRequiredFields = false
  ;

  WifiNetworkInterface._() : super();
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
    final _result = create();
    if (thermalStatus != null) {
      _result.thermalStatus = thermalStatus;
    }
    if (invalidPacketCounts != null) {
      _result.invalidPacketCounts = invalidPacketCounts;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (linkQuality != null) {
      _result.linkQuality = linkQuality;
    }
    if (signalLevel != null) {
      _result.signalLevel = signalLevel;
    }
    if (noiseLevel != null) {
      _result.noiseLevel = noiseLevel;
    }
    if (missedBeacons != null) {
      _result.missedBeacons = missedBeacons;
    }
    if (antennaeStatus != null) {
      _result.antennaeStatus = antennaeStatus;
    }
    return _result;
  }
  factory WifiNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface clone() => WifiNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetworkInterface copyWith(void Function(WifiNetworkInterface) updates) => super.copyWith((message) => updates(message as WifiNetworkInterface)) as WifiNetworkInterface; // ignore: deprecated_member_use
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

class BridgeNetworkInterface extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BridgeNetworkInterface', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberNames')
    ..hasRequiredFields = false
  ;

  BridgeNetworkInterface._() : super();
  factory BridgeNetworkInterface({
    $core.Iterable<$core.String>? memberNames,
  }) {
    final _result = create();
    if (memberNames != null) {
      _result.memberNames.addAll(memberNames);
    }
    return _result;
  }
  factory BridgeNetworkInterface.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BridgeNetworkInterface.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BridgeNetworkInterface clone() => BridgeNetworkInterface()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BridgeNetworkInterface copyWith(void Function(BridgeNetworkInterface) updates) => super.copyWith((message) => updates(message as BridgeNetworkInterface)) as BridgeNetworkInterface; // ignore: deprecated_member_use
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

class PingHostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingHostResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<PingResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: PingResult.create)
    ..hasRequiredFields = false
  ;

  PingHostResponse._() : super();
  factory PingHostResponse({
    PingResult? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory PingHostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingHostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingHostResponse clone() => PingHostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingHostResponse copyWith(void Function(PingHostResponse) updates) => super.copyWith((message) => updates(message as PingHostResponse)) as PingHostResponse; // ignore: deprecated_member_use
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

class GetLocationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<LLAPosition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lla', subBuilder: LLAPosition.create)
    ..e<PositionSource>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: PositionSource.AUTO, valueOf: PositionSource.valueOf, enumValues: PositionSource.values)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sigmaM', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GetLocationResponse._() : super();
  factory GetLocationResponse({
    LLAPosition? lla,
    PositionSource? source,
    $core.double? sigmaM,
  }) {
    final _result = create();
    if (lla != null) {
      _result.lla = lla;
    }
    if (source != null) {
      _result.source = source;
    }
    if (sigmaM != null) {
      _result.sigmaM = sigmaM;
    }
    return _result;
  }
  factory GetLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationResponse clone() => GetLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationResponse copyWith(void Function(GetLocationResponse) updates) => super.copyWith((message) => updates(message as GetLocationResponse)) as GetLocationResponse; // ignore: deprecated_member_use
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

class LLAPosition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LLAPosition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lon', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LLAPosition._() : super();
  factory LLAPosition({
    $core.double? lat,
    $core.double? lon,
    $core.double? alt,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lon != null) {
      _result.lon = lon;
    }
    if (alt != null) {
      _result.alt = alt;
    }
    return _result;
  }
  factory LLAPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LLAPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LLAPosition clone() => LLAPosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LLAPosition copyWith(void Function(LLAPosition) updates) => super.copyWith((message) => updates(message as LLAPosition)) as LLAPosition; // ignore: deprecated_member_use
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

class GetHeapDumpResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetHeapDumpResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heapDump')
    ..hasRequiredFields = false
  ;

  GetHeapDumpResponse._() : super();
  factory GetHeapDumpResponse({
    $core.String? heapDump,
  }) {
    final _result = create();
    if (heapDump != null) {
      _result.heapDump = heapDump;
    }
    return _result;
  }
  factory GetHeapDumpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHeapDumpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHeapDumpResponse clone() => GetHeapDumpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHeapDumpResponse copyWith(void Function(GetHeapDumpResponse) updates) => super.copyWith((message) => updates(message as GetHeapDumpResponse)) as GetHeapDumpResponse; // ignore: deprecated_member_use
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

class RestartControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestartControlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RestartControlResponse._() : super();
  factory RestartControlResponse() => create();
  factory RestartControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestartControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestartControlResponse clone() => RestartControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestartControlResponse copyWith(void Function(RestartControlResponse) updates) => super.copyWith((message) => updates(message as RestartControlResponse)) as RestartControlResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestartControlResponse create() => RestartControlResponse._();
  RestartControlResponse createEmptyInstance() => create();
  static $pb.PbList<RestartControlResponse> createRepeated() => $pb.PbList<RestartControlResponse>();
  @$core.pragma('dart2js:noInline')
  static RestartControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestartControlResponse>(create);
  static RestartControlResponse? _defaultInstance;
}

class FuseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FuseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FuseResponse._() : super();
  factory FuseResponse() => create();
  factory FuseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuseResponse clone() => FuseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuseResponse copyWith(void Function(FuseResponse) updates) => super.copyWith((message) => updates(message as FuseResponse)) as FuseResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsResponse.ServiceConnection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceSuccess', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetConnectionsResponse_ServiceConnection._() : super();
  factory GetConnectionsResponse_ServiceConnection({
    $core.String? address,
    $core.int? secondsSinceSuccess,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (secondsSinceSuccess != null) {
      _result.secondsSinceSuccess = secondsSinceSuccess;
    }
    return _result;
  }
  factory GetConnectionsResponse_ServiceConnection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse_ServiceConnection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection clone() => GetConnectionsResponse_ServiceConnection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse_ServiceConnection copyWith(void Function(GetConnectionsResponse_ServiceConnection) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse_ServiceConnection)) as GetConnectionsResponse_ServiceConnection; // ignore: deprecated_member_use
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

class GetConnectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..m<$core.String, GetConnectionsResponse_ServiceConnection>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', entryClassName: 'GetConnectionsResponse.ServicesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GetConnectionsResponse_ServiceConnection.create, packageName: const $pb.PackageName('SpaceX.API.Device'))
    ..hasRequiredFields = false
  ;

  GetConnectionsResponse._() : super();
  factory GetConnectionsResponse({
    $core.Map<$core.String, GetConnectionsResponse_ServiceConnection>? services,
  }) {
    final _result = create();
    if (services != null) {
      _result.services.addAll(services);
    }
    return _result;
  }
  factory GetConnectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse clone() => GetConnectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectionsResponse copyWith(void Function(GetConnectionsResponse) updates) => super.copyWith((message) => updates(message as GetConnectionsResponse)) as GetConnectionsResponse; // ignore: deprecated_member_use
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

class StartSpeedtestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartSpeedtestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartSpeedtestResponse._() : super();
  factory StartSpeedtestResponse() => create();
  factory StartSpeedtestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartSpeedtestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartSpeedtestResponse clone() => StartSpeedtestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartSpeedtestResponse copyWith(void Function(StartSpeedtestResponse) updates) => super.copyWith((message) => updates(message as StartSpeedtestResponse)) as StartSpeedtestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestResponse create() => StartSpeedtestResponse._();
  StartSpeedtestResponse createEmptyInstance() => create();
  static $pb.PbList<StartSpeedtestResponse> createRepeated() => $pb.PbList<StartSpeedtestResponse>();
  @$core.pragma('dart2js:noInline')
  static StartSpeedtestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartSpeedtestResponse>(create);
  static StartSpeedtestResponse? _defaultInstance;
}

class GetSpeedtestStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSpeedtestStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<SpeedtestStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: SpeedtestStatus.create)
    ..hasRequiredFields = false
  ;

  GetSpeedtestStatusResponse._() : super();
  factory GetSpeedtestStatusResponse({
    SpeedtestStatus? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory GetSpeedtestStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpeedtestStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusResponse clone() => GetSpeedtestStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpeedtestStatusResponse copyWith(void Function(GetSpeedtestStatusResponse) updates) => super.copyWith((message) => updates(message as GetSpeedtestStatusResponse)) as GetSpeedtestStatusResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedtestStatus.Direction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'throughputsMbps', $pb.PbFieldType.KF)
    ..e<SpeedtestError>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'err', $pb.PbFieldType.OE, defaultOrMaker: SpeedtestError.SPEEDTEST_ERROR_NONE, valueOf: SpeedtestError.valueOf, enumValues: SpeedtestError.values)
    ..hasRequiredFields = false
  ;

  SpeedtestStatus_Direction._() : super();
  factory SpeedtestStatus_Direction({
    $core.Iterable<$core.double>? throughputsMbps,
    SpeedtestError? err,
  }) {
    final _result = create();
    if (throughputsMbps != null) {
      _result.throughputsMbps.addAll(throughputsMbps);
    }
    if (err != null) {
      _result.err = err;
    }
    return _result;
  }
  factory SpeedtestStatus_Direction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedtestStatus_Direction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedtestStatus_Direction clone() => SpeedtestStatus_Direction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedtestStatus_Direction copyWith(void Function(SpeedtestStatus_Direction) updates) => super.copyWith((message) => updates(message as SpeedtestStatus_Direction)) as SpeedtestStatus_Direction; // ignore: deprecated_member_use
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

class SpeedtestStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedtestStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'running')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOM<SpeedtestStatus_Direction>(1000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'up', subBuilder: SpeedtestStatus_Direction.create)
    ..aOM<SpeedtestStatus_Direction>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'down', subBuilder: SpeedtestStatus_Direction.create)
    ..hasRequiredFields = false
  ;

  SpeedtestStatus._() : super();
  factory SpeedtestStatus({
    $core.bool? running,
    $core.int? id,
    SpeedtestStatus_Direction? up,
    SpeedtestStatus_Direction? down,
  }) {
    final _result = create();
    if (running != null) {
      _result.running = running;
    }
    if (id != null) {
      _result.id = id;
    }
    if (up != null) {
      _result.up = up;
    }
    if (down != null) {
      _result.down = down;
    }
    return _result;
  }
  factory SpeedtestStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedtestStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedtestStatus clone() => SpeedtestStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedtestStatus copyWith(void Function(SpeedtestStatus) updates) => super.copyWith((message) => updates(message as SpeedtestStatus)) as SpeedtestStatus; // ignore: deprecated_member_use
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

class ReportClientSpeedtestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportClientSpeedtestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReportClientSpeedtestResponse._() : super();
  factory ReportClientSpeedtestResponse() => create();
  factory ReportClientSpeedtestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportClientSpeedtestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestResponse clone() => ReportClientSpeedtestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportClientSpeedtestResponse copyWith(void Function(ReportClientSpeedtestResponse) updates) => super.copyWith((message) => updates(message as ReportClientSpeedtestResponse)) as ReportClientSpeedtestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestResponse create() => ReportClientSpeedtestResponse._();
  ReportClientSpeedtestResponse createEmptyInstance() => create();
  static $pb.PbList<ReportClientSpeedtestResponse> createRepeated() => $pb.PbList<ReportClientSpeedtestResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportClientSpeedtestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportClientSpeedtestResponse>(create);
  static ReportClientSpeedtestResponse? _defaultInstance;
}

class InitiateRemoteSshResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateRemoteSshResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stsafe', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  InitiateRemoteSshResponse._() : super();
  factory InitiateRemoteSshResponse({
    $core.int? port,
    $core.String? address,
    $core.List<$core.int>? stsafe,
  }) {
    final _result = create();
    if (port != null) {
      _result.port = port;
    }
    if (address != null) {
      _result.address = address;
    }
    if (stsafe != null) {
      _result.stsafe = stsafe;
    }
    return _result;
  }
  factory InitiateRemoteSshResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateRemoteSshResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshResponse clone() => InitiateRemoteSshResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateRemoteSshResponse copyWith(void Function(InitiateRemoteSshResponse) updates) => super.copyWith((message) => updates(message as InitiateRemoteSshResponse)) as InitiateRemoteSshResponse; // ignore: deprecated_member_use
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

class SelfTestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelfTestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passed')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'report')
    ..hasRequiredFields = false
  ;

  SelfTestResponse._() : super();
  factory SelfTestResponse({
    $core.bool? passed,
    $core.String? report,
  }) {
    final _result = create();
    if (passed != null) {
      _result.passed = passed;
    }
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory SelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfTestResponse clone() => SelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfTestResponse copyWith(void Function(SelfTestResponse) updates) => super.copyWith((message) => updates(message as SelfTestResponse)) as SelfTestResponse; // ignore: deprecated_member_use
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

class SetTestModeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetTestModeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetTestModeResponse._() : super();
  factory SetTestModeResponse() => create();
  factory SetTestModeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetTestModeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetTestModeResponse clone() => SetTestModeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetTestModeResponse copyWith(void Function(SetTestModeResponse) updates) => super.copyWith((message) => updates(message as SetTestModeResponse)) as SetTestModeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetTestModeResponse create() => SetTestModeResponse._();
  SetTestModeResponse createEmptyInstance() => create();
  static $pb.PbList<SetTestModeResponse> createRepeated() => $pb.PbList<SetTestModeResponse>();
  @$core.pragma('dart2js:noInline')
  static SetTestModeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetTestModeResponse>(create);
  static SetTestModeResponse? _defaultInstance;
}

class SoftwareUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SoftwareUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SoftwareUpdateResponse._() : super();
  factory SoftwareUpdateResponse() => create();
  factory SoftwareUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateResponse clone() => SoftwareUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateResponse copyWith(void Function(SoftwareUpdateResponse) updates) => super.copyWith((message) => updates(message as SoftwareUpdateResponse)) as SoftwareUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateResponse create() => SoftwareUpdateResponse._();
  SoftwareUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<SoftwareUpdateResponse> createRepeated() => $pb.PbList<SoftwareUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static SoftwareUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoftwareUpdateResponse>(create);
  static SoftwareUpdateResponse? _defaultInstance;
}

class EnableDebugTelemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EnableDebugTelemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EnableDebugTelemResponse._() : super();
  factory EnableDebugTelemResponse() => create();
  factory EnableDebugTelemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnableDebugTelemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnableDebugTelemResponse clone() => EnableDebugTelemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnableDebugTelemResponse copyWith(void Function(EnableDebugTelemResponse) updates) => super.copyWith((message) => updates(message as EnableDebugTelemResponse)) as EnableDebugTelemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemResponse create() => EnableDebugTelemResponse._();
  EnableDebugTelemResponse createEmptyInstance() => create();
  static $pb.PbList<EnableDebugTelemResponse> createRepeated() => $pb.PbList<EnableDebugTelemResponse>();
  @$core.pragma('dart2js:noInline')
  static EnableDebugTelemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnableDebugTelemResponse>(create);
  static EnableDebugTelemResponse? _defaultInstance;
}

class DishStowResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishStowResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishStowResponse._() : super();
  factory DishStowResponse() => create();
  factory DishStowResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishStowResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishStowResponse clone() => DishStowResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishStowResponse copyWith(void Function(DishStowResponse) updates) => super.copyWith((message) => updates(message as DishStowResponse)) as DishStowResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishStowResponse create() => DishStowResponse._();
  DishStowResponse createEmptyInstance() => create();
  static $pb.PbList<DishStowResponse> createRepeated() => $pb.PbList<DishStowResponse>();
  @$core.pragma('dart2js:noInline')
  static DishStowResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishStowResponse>(create);
  static DishStowResponse? _defaultInstance;
}

class DishGetContextResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetContextResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionValidS', $pb.PbFieldType.OF)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cellId', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popRackId', $pb.PbFieldType.OU3)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsToSlotEnd', $pb.PbFieldType.OF)
    ..aOM<DeviceState>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialGatewayId', $pb.PbFieldType.OU3)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onBackupBeam')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'debugTelemetryEnabled')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionCurrent')
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate15sMean', $pb.PbFieldType.OF, protoName: 'pop_ping_drop_rate_15s_mean')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingLatencyMs15sMean', $pb.PbFieldType.OF, protoName: 'pop_ping_latency_ms_15s_mean')
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast1sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_1s_outage')
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast2sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_2s_outage')
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast5sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_5s_outage')
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast15sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_15s_outage')
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast60sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_60s_outage')
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionTime', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  DishGetContextResponse._() : super();
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
  }) {
    final _result = create();
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    if (obstructionFraction != null) {
      _result.obstructionFraction = obstructionFraction;
    }
    if (obstructionValidS != null) {
      _result.obstructionValidS = obstructionValidS;
    }
    if (cellId != null) {
      _result.cellId = cellId;
    }
    if (popRackId != null) {
      _result.popRackId = popRackId;
    }
    if (secondsToSlotEnd != null) {
      _result.secondsToSlotEnd = secondsToSlotEnd;
    }
    if (deviceState != null) {
      _result.deviceState = deviceState;
    }
    if (initialSatelliteId != null) {
      _result.initialSatelliteId = initialSatelliteId;
    }
    if (initialGatewayId != null) {
      _result.initialGatewayId = initialGatewayId;
    }
    if (onBackupBeam != null) {
      _result.onBackupBeam = onBackupBeam;
    }
    if (debugTelemetryEnabled != null) {
      _result.debugTelemetryEnabled = debugTelemetryEnabled;
    }
    if (obstructionCurrent != null) {
      _result.obstructionCurrent = obstructionCurrent;
    }
    if (popPingDropRate15sMean != null) {
      _result.popPingDropRate15sMean = popPingDropRate15sMean;
    }
    if (popPingLatencyMs15sMean != null) {
      _result.popPingLatencyMs15sMean = popPingLatencyMs15sMean;
    }
    if (secondsSinceLast1sOutage != null) {
      _result.secondsSinceLast1sOutage = secondsSinceLast1sOutage;
    }
    if (secondsSinceLast2sOutage != null) {
      _result.secondsSinceLast2sOutage = secondsSinceLast2sOutage;
    }
    if (secondsSinceLast5sOutage != null) {
      _result.secondsSinceLast5sOutage = secondsSinceLast5sOutage;
    }
    if (secondsSinceLast15sOutage != null) {
      _result.secondsSinceLast15sOutage = secondsSinceLast15sOutage;
    }
    if (secondsSinceLast60sOutage != null) {
      _result.secondsSinceLast60sOutage = secondsSinceLast60sOutage;
    }
    if (obstructionTime != null) {
      _result.obstructionTime = obstructionTime;
    }
    return _result;
  }
  factory DishGetContextResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetContextResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetContextResponse clone() => DishGetContextResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetContextResponse copyWith(void Function(DishGetContextResponse) updates) => super.copyWith((message) => updates(message as DishGetContextResponse)) as DishGetContextResponse; // ignore: deprecated_member_use
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
}

class DeviceState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptimeS', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeviceState._() : super();
  factory DeviceState({
    $fixnum.Int64? uptimeS,
  }) {
    final _result = create();
    if (uptimeS != null) {
      _result.uptimeS = uptimeS;
    }
    return _result;
  }
  factory DeviceState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceState clone() => DeviceState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceState copyWith(void Function(DeviceState) updates) => super.copyWith((message) => updates(message as DeviceState)) as DeviceState; // ignore: deprecated_member_use
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

class DishGetStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DeviceInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..aOM<DeviceState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..a<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsToFirstNonemptySlot', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..aOM<DishObstructionStats>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obstructionStats', subBuilder: DishObstructionStats.create)
    ..aOM<DishAlerts>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alerts', subBuilder: DishAlerts.create)
    ..a<$core.double>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downlinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uplinkThroughputBps', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingLatencyMs', $pb.PbFieldType.OF)
    ..aOB(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stowRequested')
    ..a<$core.double>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightElevationDeg', $pb.PbFieldType.OF)
    ..aOM<DishOutage>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outage', subBuilder: DishOutage.create)
    ..aOM<DishGpsStats>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsStats', subBuilder: DishGpsStats.create)
    ..a<$core.int>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethSpeedMbps', $pb.PbFieldType.O3)
    ..e<UserMobilityClass>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityClass', $pb.PbFieldType.OE, defaultOrMaker: UserMobilityClass.STATIONARY, valueOf: UserMobilityClass.valueOf, enumValues: UserMobilityClass.values)
    ..aOB(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnrAboveNoiseFloor')
    ..aOM<DishReadyStates>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readyStates', subBuilder: DishReadyStates.create)
    ..e<UserClassOfService>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classOfService', $pb.PbFieldType.OE, defaultOrMaker: UserClassOfService.UNKNOWN_USER_CLASS_OF_SERVICE, valueOf: UserClassOfService.valueOf, enumValues: UserClassOfService.values)
    ..e<SoftwareUpdateState>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdateState', $pb.PbFieldType.OE, defaultOrMaker: SoftwareUpdateState.SOFTWARE_UPDATE_STATE_UNKNOWN, valueOf: SoftwareUpdateState.valueOf, enumValues: SoftwareUpdateState.values)
    ..aOB(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnrPersistentlyLow')
    ..e<HasActuators>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasActuators', $pb.PbFieldType.OE, defaultOrMaker: HasActuators.HAS_ACTUATORS_UNKNOWN, valueOf: HasActuators.valueOf, enumValues: HasActuators.values)
    ..e<$2.UtDisablementCode>(1024, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disablementCode', $pb.PbFieldType.OE, defaultOrMaker: $2.UtDisablementCode.UNKNOWN_STATE, valueOf: $2.UtDisablementCode.valueOf, enumValues: $2.UtDisablementCode.values)
    ..aOB(1025, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasSignedCals')
    ..aOM<SoftwareUpdateStats>(1026, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdateStats', subBuilder: SoftwareUpdateStats.create)
    ..aOM<AlignmentStats>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alignmentStats', subBuilder: AlignmentStats.create)
    ..aOM<DishConfig>(2000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishGetStatusResponse._() : super();
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
    DishConfig? config,
  }) {
    final _result = create();
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    if (deviceState != null) {
      _result.deviceState = deviceState;
    }
    if (secondsToFirstNonemptySlot != null) {
      _result.secondsToFirstNonemptySlot = secondsToFirstNonemptySlot;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate = popPingDropRate;
    }
    if (obstructionStats != null) {
      _result.obstructionStats = obstructionStats;
    }
    if (alerts != null) {
      _result.alerts = alerts;
    }
    if (downlinkThroughputBps != null) {
      _result.downlinkThroughputBps = downlinkThroughputBps;
    }
    if (uplinkThroughputBps != null) {
      _result.uplinkThroughputBps = uplinkThroughputBps;
    }
    if (popPingLatencyMs != null) {
      _result.popPingLatencyMs = popPingLatencyMs;
    }
    if (stowRequested != null) {
      _result.stowRequested = stowRequested;
    }
    if (boresightAzimuthDeg != null) {
      _result.boresightAzimuthDeg = boresightAzimuthDeg;
    }
    if (boresightElevationDeg != null) {
      _result.boresightElevationDeg = boresightElevationDeg;
    }
    if (outage != null) {
      _result.outage = outage;
    }
    if (gpsStats != null) {
      _result.gpsStats = gpsStats;
    }
    if (ethSpeedMbps != null) {
      _result.ethSpeedMbps = ethSpeedMbps;
    }
    if (mobilityClass != null) {
      _result.mobilityClass = mobilityClass;
    }
    if (isSnrAboveNoiseFloor != null) {
      _result.isSnrAboveNoiseFloor = isSnrAboveNoiseFloor;
    }
    if (readyStates != null) {
      _result.readyStates = readyStates;
    }
    if (classOfService != null) {
      _result.classOfService = classOfService;
    }
    if (softwareUpdateState != null) {
      _result.softwareUpdateState = softwareUpdateState;
    }
    if (isSnrPersistentlyLow != null) {
      _result.isSnrPersistentlyLow = isSnrPersistentlyLow;
    }
    if (hasActuators != null) {
      _result.hasActuators = hasActuators;
    }
    if (disablementCode != null) {
      _result.disablementCode = disablementCode;
    }
    if (hasSignedCals != null) {
      _result.hasSignedCals = hasSignedCals;
    }
    if (softwareUpdateStats != null) {
      _result.softwareUpdateStats = softwareUpdateStats;
    }
    if (alignmentStats != null) {
      _result.alignmentStats = alignmentStats;
    }
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory DishGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse clone() => DishGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetStatusResponse copyWith(void Function(DishGetStatusResponse) updates) => super.copyWith((message) => updates(message as DishGetStatusResponse)) as DishGetStatusResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2000)
  DishConfig get config => $_getN(26);
  @$pb.TagNumber(2000)
  set config(DishConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(26);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  DishConfig ensureConfig() => $_ensure(26);
}

class DishObstructionStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishObstructionStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fractionObstructed', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validS', $pb.PbFieldType.OF)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentlyObstructed')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionDurationS', $pb.PbFieldType.OF)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionIntervalS', $pb.PbFieldType.OF)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgProlongedObstructionValid')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeObstructed', $pb.PbFieldType.OF)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patchesValid', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DishObstructionStats._() : super();
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
    final _result = create();
    if (fractionObstructed != null) {
      _result.fractionObstructed = fractionObstructed;
    }
    if (validS != null) {
      _result.validS = validS;
    }
    if (currentlyObstructed != null) {
      _result.currentlyObstructed = currentlyObstructed;
    }
    if (avgProlongedObstructionDurationS != null) {
      _result.avgProlongedObstructionDurationS = avgProlongedObstructionDurationS;
    }
    if (avgProlongedObstructionIntervalS != null) {
      _result.avgProlongedObstructionIntervalS = avgProlongedObstructionIntervalS;
    }
    if (avgProlongedObstructionValid != null) {
      _result.avgProlongedObstructionValid = avgProlongedObstructionValid;
    }
    if (timeObstructed != null) {
      _result.timeObstructed = timeObstructed;
    }
    if (patchesValid != null) {
      _result.patchesValid = patchesValid;
    }
    return _result;
  }
  factory DishObstructionStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishObstructionStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishObstructionStats clone() => DishObstructionStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishObstructionStats copyWith(void Function(DishObstructionStats) updates) => super.copyWith((message) => updates(message as DishObstructionStats)) as DishObstructionStats; // ignore: deprecated_member_use
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

class DishAlerts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishAlerts', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'motorsStuck')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalShutdown')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalThrottle')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unexpectedLocation')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mastNotNearVertical')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slowEthernetSpeeds')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roaming')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installPending')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHeating')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerSupplyThermalThrottle')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPowerSaveIdle')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movingWhileNotMobile')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movingFastWhileNotAviation')
    ..hasRequiredFields = false
  ;

  DishAlerts._() : super();
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
  }) {
    final _result = create();
    if (motorsStuck != null) {
      _result.motorsStuck = motorsStuck;
    }
    if (thermalShutdown != null) {
      _result.thermalShutdown = thermalShutdown;
    }
    if (thermalThrottle != null) {
      _result.thermalThrottle = thermalThrottle;
    }
    if (unexpectedLocation != null) {
      _result.unexpectedLocation = unexpectedLocation;
    }
    if (mastNotNearVertical != null) {
      _result.mastNotNearVertical = mastNotNearVertical;
    }
    if (slowEthernetSpeeds != null) {
      _result.slowEthernetSpeeds = slowEthernetSpeeds;
    }
    if (roaming != null) {
      _result.roaming = roaming;
    }
    if (installPending != null) {
      _result.installPending = installPending;
    }
    if (isHeating != null) {
      _result.isHeating = isHeating;
    }
    if (powerSupplyThermalThrottle != null) {
      _result.powerSupplyThermalThrottle = powerSupplyThermalThrottle;
    }
    if (isPowerSaveIdle != null) {
      _result.isPowerSaveIdle = isPowerSaveIdle;
    }
    if (movingWhileNotMobile != null) {
      _result.movingWhileNotMobile = movingWhileNotMobile;
    }
    if (movingFastWhileNotAviation != null) {
      _result.movingFastWhileNotAviation = movingFastWhileNotAviation;
    }
    return _result;
  }
  factory DishAlerts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishAlerts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishAlerts clone() => DishAlerts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishAlerts copyWith(void Function(DishAlerts) updates) => super.copyWith((message) => updates(message as DishAlerts)) as DishAlerts; // ignore: deprecated_member_use
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
}

class DishOutage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishOutage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<DishOutage_Cause>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cause', $pb.PbFieldType.OE, defaultOrMaker: DishOutage_Cause.UNKNOWN, valueOf: DishOutage_Cause.valueOf, enumValues: DishOutage_Cause.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimestampNs')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'didSwitch')
    ..hasRequiredFields = false
  ;

  DishOutage._() : super();
  factory DishOutage({
    DishOutage_Cause? cause,
    $fixnum.Int64? startTimestampNs,
    $fixnum.Int64? durationNs,
    $core.bool? didSwitch,
  }) {
    final _result = create();
    if (cause != null) {
      _result.cause = cause;
    }
    if (startTimestampNs != null) {
      _result.startTimestampNs = startTimestampNs;
    }
    if (durationNs != null) {
      _result.durationNs = durationNs;
    }
    if (didSwitch != null) {
      _result.didSwitch = didSwitch;
    }
    return _result;
  }
  factory DishOutage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishOutage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishOutage clone() => DishOutage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishOutage copyWith(void Function(DishOutage) updates) => super.copyWith((message) => updates(message as DishOutage)) as DishOutage; // ignore: deprecated_member_use
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

class DishGpsStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGpsStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsValid')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsSats', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noSatsAfterTtff')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishGpsStats._() : super();
  factory DishGpsStats({
    $core.bool? gpsValid,
    $core.int? gpsSats,
    $core.bool? noSatsAfterTtff,
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (gpsValid != null) {
      _result.gpsValid = gpsValid;
    }
    if (gpsSats != null) {
      _result.gpsSats = gpsSats;
    }
    if (noSatsAfterTtff != null) {
      _result.noSatsAfterTtff = noSatsAfterTtff;
    }
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishGpsStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGpsStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGpsStats clone() => DishGpsStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGpsStats copyWith(void Function(DishGpsStats) updates) => super.copyWith((message) => updates(message as DishGpsStats)) as DishGpsStats; // ignore: deprecated_member_use
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

class DishReadyStates extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishReadyStates', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cady')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scp')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1l2')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xphy')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aap')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rf')
    ..hasRequiredFields = false
  ;

  DishReadyStates._() : super();
  factory DishReadyStates({
    $core.bool? cady,
    $core.bool? scp,
    $core.bool? l1l2,
    $core.bool? xphy,
    $core.bool? aap,
    $core.bool? rf,
  }) {
    final _result = create();
    if (cady != null) {
      _result.cady = cady;
    }
    if (scp != null) {
      _result.scp = scp;
    }
    if (l1l2 != null) {
      _result.l1l2 = l1l2;
    }
    if (xphy != null) {
      _result.xphy = xphy;
    }
    if (aap != null) {
      _result.aap = aap;
    }
    if (rf != null) {
      _result.rf = rf;
    }
    return _result;
  }
  factory DishReadyStates.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishReadyStates.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishReadyStates clone() => DishReadyStates()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishReadyStates copyWith(void Function(DishReadyStates) updates) => super.copyWith((message) => updates(message as DishReadyStates)) as DishReadyStates; // ignore: deprecated_member_use
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

class SoftwareUpdateStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SoftwareUpdateStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<SoftwareUpdateState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdateState', $pb.PbFieldType.OE, defaultOrMaker: SoftwareUpdateState.SOFTWARE_UPDATE_STATE_UNKNOWN, valueOf: SoftwareUpdateState.valueOf, enumValues: SoftwareUpdateState.values)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareUpdateProgress', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  SoftwareUpdateStats._() : super();
  factory SoftwareUpdateStats({
    SoftwareUpdateState? softwareUpdateState,
    $core.double? softwareUpdateProgress,
  }) {
    final _result = create();
    if (softwareUpdateState != null) {
      _result.softwareUpdateState = softwareUpdateState;
    }
    if (softwareUpdateProgress != null) {
      _result.softwareUpdateProgress = softwareUpdateProgress;
    }
    return _result;
  }
  factory SoftwareUpdateStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpdateStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpdateStats clone() => SoftwareUpdateStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpdateStats copyWith(void Function(SoftwareUpdateStats) updates) => super.copyWith((message) => updates(message as SoftwareUpdateStats)) as SoftwareUpdateStats; // ignore: deprecated_member_use
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

class AlignmentStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlignmentStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<HasActuators>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasActuators', $pb.PbFieldType.OE, defaultOrMaker: HasActuators.HAS_ACTUATORS_UNKNOWN, valueOf: HasActuators.valueOf, enumValues: HasActuators.values)
    ..e<ActuatorState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actuatorState', $pb.PbFieldType.OE, defaultOrMaker: ActuatorState.ACTUATOR_STATE_IDLE, valueOf: ActuatorState.valueOf, enumValues: ActuatorState.values)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tiltAngleDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightAzimuthDeg', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boresightElevationDeg', $pb.PbFieldType.OF)
    ..e<AttitudeEstimationState>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attitudeEstimationState', $pb.PbFieldType.OE, defaultOrMaker: AttitudeEstimationState.FILTER_RESET, valueOf: AttitudeEstimationState.valueOf, enumValues: AttitudeEstimationState.values)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attitudeUncertaintyDeg', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  AlignmentStats._() : super();
  factory AlignmentStats({
    HasActuators? hasActuators,
    ActuatorState? actuatorState,
    $core.double? tiltAngleDeg,
    $core.double? boresightAzimuthDeg,
    $core.double? boresightElevationDeg,
    AttitudeEstimationState? attitudeEstimationState,
    $core.double? attitudeUncertaintyDeg,
  }) {
    final _result = create();
    if (hasActuators != null) {
      _result.hasActuators = hasActuators;
    }
    if (actuatorState != null) {
      _result.actuatorState = actuatorState;
    }
    if (tiltAngleDeg != null) {
      _result.tiltAngleDeg = tiltAngleDeg;
    }
    if (boresightAzimuthDeg != null) {
      _result.boresightAzimuthDeg = boresightAzimuthDeg;
    }
    if (boresightElevationDeg != null) {
      _result.boresightElevationDeg = boresightElevationDeg;
    }
    if (attitudeEstimationState != null) {
      _result.attitudeEstimationState = attitudeEstimationState;
    }
    if (attitudeUncertaintyDeg != null) {
      _result.attitudeUncertaintyDeg = attitudeUncertaintyDeg;
    }
    return _result;
  }
  factory AlignmentStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlignmentStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlignmentStats clone() => AlignmentStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlignmentStats copyWith(void Function(AlignmentStats) updates) => super.copyWith((message) => updates(message as AlignmentStats)) as AlignmentStats; // ignore: deprecated_member_use
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
}

class DishAuthenticateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishAuthenticateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ChallengeResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dish', subBuilder: ChallengeResponse.create)
    ..hasRequiredFields = false
  ;

  DishAuthenticateResponse._() : super();
  factory DishAuthenticateResponse({
    ChallengeResponse? dish,
  }) {
    final _result = create();
    if (dish != null) {
      _result.dish = dish;
    }
    return _result;
  }
  factory DishAuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishAuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishAuthenticateResponse clone() => DishAuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishAuthenticateResponse copyWith(void Function(DishAuthenticateResponse) updates) => super.copyWith((message) => updates(message as DishAuthenticateResponse)) as DishAuthenticateResponse; // ignore: deprecated_member_use
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

class ChallengeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChallengeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'certificateChain', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ChallengeResponse._() : super();
  factory ChallengeResponse({
    $core.List<$core.int>? signature,
    $core.List<$core.int>? certificateChain,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (certificateChain != null) {
      _result.certificateChain = certificateChain;
    }
    return _result;
  }
  factory ChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChallengeResponse clone() => ChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChallengeResponse copyWith(void Function(ChallengeResponse) updates) => super.copyWith((message) => updates(message as ChallengeResponse)) as ChallengeResponse; // ignore: deprecated_member_use
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

class DishGetHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.KF)
    ..p<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingLatencyMs', $pb.PbFieldType.KF)
    ..p<$core.double>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downlinkThroughputBps', $pb.PbFieldType.KF)
    ..p<$core.double>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uplinkThroughputBps', $pb.PbFieldType.KF)
    ..pc<DishOutage>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outages', $pb.PbFieldType.PM, subBuilder: DishOutage.create)
    ..hasRequiredFields = false
  ;

  DishGetHistoryResponse._() : super();
  factory DishGetHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? popPingDropRate,
    $core.Iterable<$core.double>? popPingLatencyMs,
    $core.Iterable<$core.double>? downlinkThroughputBps,
    $core.Iterable<$core.double>? uplinkThroughputBps,
    $core.Iterable<DishOutage>? outages,
  }) {
    final _result = create();
    if (current != null) {
      _result.current = current;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate.addAll(popPingDropRate);
    }
    if (popPingLatencyMs != null) {
      _result.popPingLatencyMs.addAll(popPingLatencyMs);
    }
    if (downlinkThroughputBps != null) {
      _result.downlinkThroughputBps.addAll(downlinkThroughputBps);
    }
    if (uplinkThroughputBps != null) {
      _result.uplinkThroughputBps.addAll(uplinkThroughputBps);
    }
    if (outages != null) {
      _result.outages.addAll(outages);
    }
    return _result;
  }
  factory DishGetHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetHistoryResponse clone() => DishGetHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetHistoryResponse copyWith(void Function(DishGetHistoryResponse) updates) => super.copyWith((message) => updates(message as DishGetHistoryResponse)) as DishGetHistoryResponse; // ignore: deprecated_member_use
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

class DishSetEmcResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetEmcResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DishSetEmcResponse._() : super();
  factory DishSetEmcResponse() => create();
  factory DishSetEmcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetEmcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetEmcResponse clone() => DishSetEmcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetEmcResponse copyWith(void Function(DishSetEmcResponse) updates) => super.copyWith((message) => updates(message as DishSetEmcResponse)) as DishSetEmcResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DishSetEmcResponse create() => DishSetEmcResponse._();
  DishSetEmcResponse createEmptyInstance() => create();
  static $pb.PbList<DishSetEmcResponse> createRepeated() => $pb.PbList<DishSetEmcResponse>();
  @$core.pragma('dart2js:noInline')
  static DishSetEmcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DishSetEmcResponse>(create);
  static DishSetEmcResponse? _defaultInstance;
}

class DishGetObstructionMapResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetObstructionMapResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numRows', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numCols', $pb.PbFieldType.OU3)
    ..p<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snr', $pb.PbFieldType.KF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minElevationDeg', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  DishGetObstructionMapResponse._() : super();
  factory DishGetObstructionMapResponse({
    $core.int? numRows,
    $core.int? numCols,
    $core.Iterable<$core.double>? snr,
    $core.double? minElevationDeg,
  }) {
    final _result = create();
    if (numRows != null) {
      _result.numRows = numRows;
    }
    if (numCols != null) {
      _result.numCols = numCols;
    }
    if (snr != null) {
      _result.snr.addAll(snr);
    }
    if (minElevationDeg != null) {
      _result.minElevationDeg = minElevationDeg;
    }
    return _result;
  }
  factory DishGetObstructionMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetObstructionMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse clone() => DishGetObstructionMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetObstructionMapResponse copyWith(void Function(DishGetObstructionMapResponse) updates) => super.copyWith((message) => updates(message as DishGetObstructionMapResponse)) as DishGetObstructionMapResponse; // ignore: deprecated_member_use
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

class DishGetEmcResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetEmcResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cplaneUpdates', $pb.PbFieldType.OU3)
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsLatitude', $pb.PbFieldType.OD)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsLongitude', $pb.PbFieldType.OD)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsPdop', $pb.PbFieldType.OD)
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rfMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phi', $pb.PbFieldType.OD)
    ..a<$core.double>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'theta', $pb.PbFieldType.OD)
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxChannel', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txChannel', $pb.PbFieldType.OU3)
    ..a<$core.double>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tDbfMax', $pb.PbFieldType.OF)
    ..a<$core.double>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tCenter', $pb.PbFieldType.OD)
    ..aOB(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoPowerSnowMeltEnabled')
    ..a<$core.double>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voltage', $pb.PbFieldType.OD)
    ..a<$core.int>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxBeamState', $pb.PbFieldType.OU3)
    ..a<$core.int>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txBeamState', $pb.PbFieldType.OU3)
    ..a<$core.int>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'halfDuplexState', $pb.PbFieldType.OU3)
    ..aOB(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualTiltEnabled')
    ..a<$core.double>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tiltAngle', $pb.PbFieldType.OD)
    ..a<$core.int>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pllTxLockDetected', $pb.PbFieldType.OU3)
    ..aOB(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eirpExceededThreshold')
    ..a<$core.double>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eirpScaleOverride', $pb.PbFieldType.OF)
    ..aOB(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idleOverrideEnabled')
    ..aOB(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thetaOverrideEnabled')
    ..a<$core.double>(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thetaOverrideValue', $pb.PbFieldType.OD)
    ..aOB(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phiOverrideEnabled')
    ..a<$core.double>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phiOverrideValue', $pb.PbFieldType.OD)
    ..a<$core.int>(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxChanOverrideValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txChanOverrideValue', $pb.PbFieldType.OU3)
    ..aOB(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skySearchOverrideEnabled')
    ..aOB(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fastSwitchingEnabled')
    ..a<$core.int>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modulationOverrideValue', $pb.PbFieldType.OU3)
    ..aOB(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forceEirpFailure')
    ..aOB(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forcePllUnlock')
    ..a<$core.int>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utIneSuccess', $pb.PbFieldType.OU3)
    ..aOB(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rfReady')
    ..aOB(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tiltToStowed')
    ..aOB(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reboot')
    ..aOB(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'continuousMotorTest')
    ..a<$core.double>(58, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distanceOverrideMeters', $pb.PbFieldType.OD)
    ..a<$core.int>(59, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amplitudeTaperOverride', $pb.PbFieldType.OU3)
    ..aOB(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amplitudeTaperEnabled')
    ..a<$core.double>(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amplitudeTaperScale', $pb.PbFieldType.OD)
    ..a<$core.int>(62, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCodeOverride', $pb.PbFieldType.OU3)
    ..a<$core.double>(63, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxPointingDistance', $pb.PbFieldType.OD)
    ..a<$core.double>(64, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distanceScalingFactor', $pb.PbFieldType.OD)
    ..a<$core.int>(65, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.int>(66, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxDutyCycleOverride', $pb.PbFieldType.O3)
    ..a<$core.double>(67, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txTimeMs', $pb.PbFieldType.OF)
    ..a<$core.double>(68, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxTimeMs', $pb.PbFieldType.OF)
    ..a<$core.double>(69, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eirpLegalLimitDbw', $pb.PbFieldType.OD)
    ..a<$core.double>(70, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eirpLegalLimitDbwOverride', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  DishGetEmcResponse._() : super();
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
    $core.double? eirpScaleOverride,
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
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (cplaneUpdates != null) {
      _result.cplaneUpdates = cplaneUpdates;
    }
    if (gpsLatitude != null) {
      _result.gpsLatitude = gpsLatitude;
    }
    if (gpsLongitude != null) {
      _result.gpsLongitude = gpsLongitude;
    }
    if (gpsPdop != null) {
      _result.gpsPdop = gpsPdop;
    }
    if (rfMode != null) {
      _result.rfMode = rfMode;
    }
    if (phi != null) {
      _result.phi = phi;
    }
    if (theta != null) {
      _result.theta = theta;
    }
    if (rxChannel != null) {
      _result.rxChannel = rxChannel;
    }
    if (txChannel != null) {
      _result.txChannel = txChannel;
    }
    if (tDbfMax != null) {
      _result.tDbfMax = tDbfMax;
    }
    if (tCenter != null) {
      _result.tCenter = tCenter;
    }
    if (autoPowerSnowMeltEnabled != null) {
      _result.autoPowerSnowMeltEnabled = autoPowerSnowMeltEnabled;
    }
    if (voltage != null) {
      _result.voltage = voltage;
    }
    if (rxBeamState != null) {
      _result.rxBeamState = rxBeamState;
    }
    if (txBeamState != null) {
      _result.txBeamState = txBeamState;
    }
    if (halfDuplexState != null) {
      _result.halfDuplexState = halfDuplexState;
    }
    if (manualTiltEnabled != null) {
      _result.manualTiltEnabled = manualTiltEnabled;
    }
    if (tiltAngle != null) {
      _result.tiltAngle = tiltAngle;
    }
    if (pllTxLockDetected != null) {
      _result.pllTxLockDetected = pllTxLockDetected;
    }
    if (eirpExceededThreshold != null) {
      _result.eirpExceededThreshold = eirpExceededThreshold;
    }
    if (eirpScaleOverride != null) {
      _result.eirpScaleOverride = eirpScaleOverride;
    }
    if (idleOverrideEnabled != null) {
      _result.idleOverrideEnabled = idleOverrideEnabled;
    }
    if (thetaOverrideEnabled != null) {
      _result.thetaOverrideEnabled = thetaOverrideEnabled;
    }
    if (thetaOverrideValue != null) {
      _result.thetaOverrideValue = thetaOverrideValue;
    }
    if (phiOverrideEnabled != null) {
      _result.phiOverrideEnabled = phiOverrideEnabled;
    }
    if (phiOverrideValue != null) {
      _result.phiOverrideValue = phiOverrideValue;
    }
    if (rxChanOverrideValue != null) {
      _result.rxChanOverrideValue = rxChanOverrideValue;
    }
    if (txChanOverrideValue != null) {
      _result.txChanOverrideValue = txChanOverrideValue;
    }
    if (skySearchOverrideEnabled != null) {
      _result.skySearchOverrideEnabled = skySearchOverrideEnabled;
    }
    if (fastSwitchingEnabled != null) {
      _result.fastSwitchingEnabled = fastSwitchingEnabled;
    }
    if (modulationOverrideValue != null) {
      _result.modulationOverrideValue = modulationOverrideValue;
    }
    if (forceEirpFailure != null) {
      _result.forceEirpFailure = forceEirpFailure;
    }
    if (forcePllUnlock != null) {
      _result.forcePllUnlock = forcePllUnlock;
    }
    if (utIneSuccess != null) {
      _result.utIneSuccess = utIneSuccess;
    }
    if (rfReady != null) {
      _result.rfReady = rfReady;
    }
    if (tiltToStowed != null) {
      _result.tiltToStowed = tiltToStowed;
    }
    if (reboot != null) {
      _result.reboot = reboot;
    }
    if (continuousMotorTest != null) {
      _result.continuousMotorTest = continuousMotorTest;
    }
    if (distanceOverrideMeters != null) {
      _result.distanceOverrideMeters = distanceOverrideMeters;
    }
    if (amplitudeTaperOverride != null) {
      _result.amplitudeTaperOverride = amplitudeTaperOverride;
    }
    if (amplitudeTaperEnabled != null) {
      _result.amplitudeTaperEnabled = amplitudeTaperEnabled;
    }
    if (amplitudeTaperScale != null) {
      _result.amplitudeTaperScale = amplitudeTaperScale;
    }
    if (countryCodeOverride != null) {
      _result.countryCodeOverride = countryCodeOverride;
    }
    if (maxPointingDistance != null) {
      _result.maxPointingDistance = maxPointingDistance;
    }
    if (distanceScalingFactor != null) {
      _result.distanceScalingFactor = distanceScalingFactor;
    }
    if (txDutyCycleOverride != null) {
      _result.txDutyCycleOverride = txDutyCycleOverride;
    }
    if (rxDutyCycleOverride != null) {
      _result.rxDutyCycleOverride = rxDutyCycleOverride;
    }
    if (txTimeMs != null) {
      _result.txTimeMs = txTimeMs;
    }
    if (rxTimeMs != null) {
      _result.rxTimeMs = rxTimeMs;
    }
    if (eirpLegalLimitDbw != null) {
      _result.eirpLegalLimitDbw = eirpLegalLimitDbw;
    }
    if (eirpLegalLimitDbwOverride != null) {
      _result.eirpLegalLimitDbwOverride = eirpLegalLimitDbwOverride;
    }
    return _result;
  }
  factory DishGetEmcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetEmcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetEmcResponse clone() => DishGetEmcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetEmcResponse copyWith(void Function(DishGetEmcResponse) updates) => super.copyWith((message) => updates(message as DishGetEmcResponse)) as DishGetEmcResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(40)
  $core.double get eirpScaleOverride => $_getN(22);
  @$pb.TagNumber(40)
  set eirpScaleOverride($core.double v) { $_setFloat(22, v); }
  @$pb.TagNumber(40)
  $core.bool hasEirpScaleOverride() => $_has(22);
  @$pb.TagNumber(40)
  void clearEirpScaleOverride() => clearField(40);

  @$pb.TagNumber(41)
  $core.bool get idleOverrideEnabled => $_getBF(23);
  @$pb.TagNumber(41)
  set idleOverrideEnabled($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(41)
  $core.bool hasIdleOverrideEnabled() => $_has(23);
  @$pb.TagNumber(41)
  void clearIdleOverrideEnabled() => clearField(41);

  @$pb.TagNumber(42)
  $core.bool get thetaOverrideEnabled => $_getBF(24);
  @$pb.TagNumber(42)
  set thetaOverrideEnabled($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(42)
  $core.bool hasThetaOverrideEnabled() => $_has(24);
  @$pb.TagNumber(42)
  void clearThetaOverrideEnabled() => clearField(42);

  @$pb.TagNumber(43)
  $core.double get thetaOverrideValue => $_getN(25);
  @$pb.TagNumber(43)
  set thetaOverrideValue($core.double v) { $_setDouble(25, v); }
  @$pb.TagNumber(43)
  $core.bool hasThetaOverrideValue() => $_has(25);
  @$pb.TagNumber(43)
  void clearThetaOverrideValue() => clearField(43);

  @$pb.TagNumber(44)
  $core.bool get phiOverrideEnabled => $_getBF(26);
  @$pb.TagNumber(44)
  set phiOverrideEnabled($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(44)
  $core.bool hasPhiOverrideEnabled() => $_has(26);
  @$pb.TagNumber(44)
  void clearPhiOverrideEnabled() => clearField(44);

  @$pb.TagNumber(45)
  $core.double get phiOverrideValue => $_getN(27);
  @$pb.TagNumber(45)
  set phiOverrideValue($core.double v) { $_setDouble(27, v); }
  @$pb.TagNumber(45)
  $core.bool hasPhiOverrideValue() => $_has(27);
  @$pb.TagNumber(45)
  void clearPhiOverrideValue() => clearField(45);

  @$pb.TagNumber(46)
  $core.int get rxChanOverrideValue => $_getIZ(28);
  @$pb.TagNumber(46)
  set rxChanOverrideValue($core.int v) { $_setUnsignedInt32(28, v); }
  @$pb.TagNumber(46)
  $core.bool hasRxChanOverrideValue() => $_has(28);
  @$pb.TagNumber(46)
  void clearRxChanOverrideValue() => clearField(46);

  @$pb.TagNumber(47)
  $core.int get txChanOverrideValue => $_getIZ(29);
  @$pb.TagNumber(47)
  set txChanOverrideValue($core.int v) { $_setUnsignedInt32(29, v); }
  @$pb.TagNumber(47)
  $core.bool hasTxChanOverrideValue() => $_has(29);
  @$pb.TagNumber(47)
  void clearTxChanOverrideValue() => clearField(47);

  @$pb.TagNumber(48)
  $core.bool get skySearchOverrideEnabled => $_getBF(30);
  @$pb.TagNumber(48)
  set skySearchOverrideEnabled($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(48)
  $core.bool hasSkySearchOverrideEnabled() => $_has(30);
  @$pb.TagNumber(48)
  void clearSkySearchOverrideEnabled() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get fastSwitchingEnabled => $_getBF(31);
  @$pb.TagNumber(49)
  set fastSwitchingEnabled($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(49)
  $core.bool hasFastSwitchingEnabled() => $_has(31);
  @$pb.TagNumber(49)
  void clearFastSwitchingEnabled() => clearField(49);

  @$pb.TagNumber(50)
  $core.int get modulationOverrideValue => $_getIZ(32);
  @$pb.TagNumber(50)
  set modulationOverrideValue($core.int v) { $_setUnsignedInt32(32, v); }
  @$pb.TagNumber(50)
  $core.bool hasModulationOverrideValue() => $_has(32);
  @$pb.TagNumber(50)
  void clearModulationOverrideValue() => clearField(50);

  @$pb.TagNumber(51)
  $core.bool get forceEirpFailure => $_getBF(33);
  @$pb.TagNumber(51)
  set forceEirpFailure($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(51)
  $core.bool hasForceEirpFailure() => $_has(33);
  @$pb.TagNumber(51)
  void clearForceEirpFailure() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get forcePllUnlock => $_getBF(34);
  @$pb.TagNumber(52)
  set forcePllUnlock($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(52)
  $core.bool hasForcePllUnlock() => $_has(34);
  @$pb.TagNumber(52)
  void clearForcePllUnlock() => clearField(52);

  @$pb.TagNumber(53)
  $core.int get utIneSuccess => $_getIZ(35);
  @$pb.TagNumber(53)
  set utIneSuccess($core.int v) { $_setUnsignedInt32(35, v); }
  @$pb.TagNumber(53)
  $core.bool hasUtIneSuccess() => $_has(35);
  @$pb.TagNumber(53)
  void clearUtIneSuccess() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get rfReady => $_getBF(36);
  @$pb.TagNumber(54)
  set rfReady($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(54)
  $core.bool hasRfReady() => $_has(36);
  @$pb.TagNumber(54)
  void clearRfReady() => clearField(54);

  @$pb.TagNumber(55)
  $core.bool get tiltToStowed => $_getBF(37);
  @$pb.TagNumber(55)
  set tiltToStowed($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(55)
  $core.bool hasTiltToStowed() => $_has(37);
  @$pb.TagNumber(55)
  void clearTiltToStowed() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get reboot => $_getBF(38);
  @$pb.TagNumber(56)
  set reboot($core.bool v) { $_setBool(38, v); }
  @$pb.TagNumber(56)
  $core.bool hasReboot() => $_has(38);
  @$pb.TagNumber(56)
  void clearReboot() => clearField(56);

  @$pb.TagNumber(57)
  $core.bool get continuousMotorTest => $_getBF(39);
  @$pb.TagNumber(57)
  set continuousMotorTest($core.bool v) { $_setBool(39, v); }
  @$pb.TagNumber(57)
  $core.bool hasContinuousMotorTest() => $_has(39);
  @$pb.TagNumber(57)
  void clearContinuousMotorTest() => clearField(57);

  @$pb.TagNumber(58)
  $core.double get distanceOverrideMeters => $_getN(40);
  @$pb.TagNumber(58)
  set distanceOverrideMeters($core.double v) { $_setDouble(40, v); }
  @$pb.TagNumber(58)
  $core.bool hasDistanceOverrideMeters() => $_has(40);
  @$pb.TagNumber(58)
  void clearDistanceOverrideMeters() => clearField(58);

  @$pb.TagNumber(59)
  $core.int get amplitudeTaperOverride => $_getIZ(41);
  @$pb.TagNumber(59)
  set amplitudeTaperOverride($core.int v) { $_setUnsignedInt32(41, v); }
  @$pb.TagNumber(59)
  $core.bool hasAmplitudeTaperOverride() => $_has(41);
  @$pb.TagNumber(59)
  void clearAmplitudeTaperOverride() => clearField(59);

  @$pb.TagNumber(60)
  $core.bool get amplitudeTaperEnabled => $_getBF(42);
  @$pb.TagNumber(60)
  set amplitudeTaperEnabled($core.bool v) { $_setBool(42, v); }
  @$pb.TagNumber(60)
  $core.bool hasAmplitudeTaperEnabled() => $_has(42);
  @$pb.TagNumber(60)
  void clearAmplitudeTaperEnabled() => clearField(60);

  @$pb.TagNumber(61)
  $core.double get amplitudeTaperScale => $_getN(43);
  @$pb.TagNumber(61)
  set amplitudeTaperScale($core.double v) { $_setDouble(43, v); }
  @$pb.TagNumber(61)
  $core.bool hasAmplitudeTaperScale() => $_has(43);
  @$pb.TagNumber(61)
  void clearAmplitudeTaperScale() => clearField(61);

  @$pb.TagNumber(62)
  $core.int get countryCodeOverride => $_getIZ(44);
  @$pb.TagNumber(62)
  set countryCodeOverride($core.int v) { $_setUnsignedInt32(44, v); }
  @$pb.TagNumber(62)
  $core.bool hasCountryCodeOverride() => $_has(44);
  @$pb.TagNumber(62)
  void clearCountryCodeOverride() => clearField(62);

  @$pb.TagNumber(63)
  $core.double get maxPointingDistance => $_getN(45);
  @$pb.TagNumber(63)
  set maxPointingDistance($core.double v) { $_setDouble(45, v); }
  @$pb.TagNumber(63)
  $core.bool hasMaxPointingDistance() => $_has(45);
  @$pb.TagNumber(63)
  void clearMaxPointingDistance() => clearField(63);

  @$pb.TagNumber(64)
  $core.double get distanceScalingFactor => $_getN(46);
  @$pb.TagNumber(64)
  set distanceScalingFactor($core.double v) { $_setDouble(46, v); }
  @$pb.TagNumber(64)
  $core.bool hasDistanceScalingFactor() => $_has(46);
  @$pb.TagNumber(64)
  void clearDistanceScalingFactor() => clearField(64);

  @$pb.TagNumber(65)
  $core.int get txDutyCycleOverride => $_getIZ(47);
  @$pb.TagNumber(65)
  set txDutyCycleOverride($core.int v) { $_setSignedInt32(47, v); }
  @$pb.TagNumber(65)
  $core.bool hasTxDutyCycleOverride() => $_has(47);
  @$pb.TagNumber(65)
  void clearTxDutyCycleOverride() => clearField(65);

  @$pb.TagNumber(66)
  $core.int get rxDutyCycleOverride => $_getIZ(48);
  @$pb.TagNumber(66)
  set rxDutyCycleOverride($core.int v) { $_setSignedInt32(48, v); }
  @$pb.TagNumber(66)
  $core.bool hasRxDutyCycleOverride() => $_has(48);
  @$pb.TagNumber(66)
  void clearRxDutyCycleOverride() => clearField(66);

  @$pb.TagNumber(67)
  $core.double get txTimeMs => $_getN(49);
  @$pb.TagNumber(67)
  set txTimeMs($core.double v) { $_setFloat(49, v); }
  @$pb.TagNumber(67)
  $core.bool hasTxTimeMs() => $_has(49);
  @$pb.TagNumber(67)
  void clearTxTimeMs() => clearField(67);

  @$pb.TagNumber(68)
  $core.double get rxTimeMs => $_getN(50);
  @$pb.TagNumber(68)
  set rxTimeMs($core.double v) { $_setFloat(50, v); }
  @$pb.TagNumber(68)
  $core.bool hasRxTimeMs() => $_has(50);
  @$pb.TagNumber(68)
  void clearRxTimeMs() => clearField(68);

  @$pb.TagNumber(69)
  $core.double get eirpLegalLimitDbw => $_getN(51);
  @$pb.TagNumber(69)
  set eirpLegalLimitDbw($core.double v) { $_setDouble(51, v); }
  @$pb.TagNumber(69)
  $core.bool hasEirpLegalLimitDbw() => $_has(51);
  @$pb.TagNumber(69)
  void clearEirpLegalLimitDbw() => clearField(69);

  @$pb.TagNumber(70)
  $core.double get eirpLegalLimitDbwOverride => $_getN(52);
  @$pb.TagNumber(70)
  set eirpLegalLimitDbwOverride($core.double v) { $_setDouble(52, v); }
  @$pb.TagNumber(70)
  $core.bool hasEirpLegalLimitDbwOverride() => $_has(52);
  @$pb.TagNumber(70)
  void clearEirpLegalLimitDbwOverride() => clearField(70);
}

class DishSetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishSetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedDishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishSetConfigResponse._() : super();
  factory DishSetConfigResponse({
    DishConfig? updatedDishConfig,
  }) {
    final _result = create();
    if (updatedDishConfig != null) {
      _result.updatedDishConfig = updatedDishConfig;
    }
    return _result;
  }
  factory DishSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse clone() => DishSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishSetConfigResponse copyWith(void Function(DishSetConfigResponse) updates) => super.copyWith((message) => updates(message as DishSetConfigResponse)) as DishSetConfigResponse; // ignore: deprecated_member_use
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

class DishGetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishGetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<DishConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishConfig', subBuilder: DishConfig.create)
    ..hasRequiredFields = false
  ;

  DishGetConfigResponse._() : super();
  factory DishGetConfigResponse({
    DishConfig? dishConfig,
  }) {
    final _result = create();
    if (dishConfig != null) {
      _result.dishConfig = dishConfig;
    }
    return _result;
  }
  factory DishGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse clone() => DishGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishGetConfigResponse copyWith(void Function(DishGetConfigResponse) updates) => super.copyWith((message) => updates(message as DishGetConfigResponse)) as DishGetConfigResponse; // ignore: deprecated_member_use
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

class StartDishSelfTestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartDishSelfTestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartDishSelfTestResponse._() : super();
  factory StartDishSelfTestResponse() => create();
  factory StartDishSelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDishSelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDishSelfTestResponse clone() => StartDishSelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDishSelfTestResponse copyWith(void Function(StartDishSelfTestResponse) updates) => super.copyWith((message) => updates(message as StartDishSelfTestResponse)) as StartDishSelfTestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestResponse create() => StartDishSelfTestResponse._();
  StartDishSelfTestResponse createEmptyInstance() => create();
  static $pb.PbList<StartDishSelfTestResponse> createRepeated() => $pb.PbList<StartDishSelfTestResponse>();
  @$core.pragma('dart2js:noInline')
  static StartDishSelfTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDishSelfTestResponse>(create);
  static StartDishSelfTestResponse? _defaultInstance;
}

class DishInhibitGpsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DishInhibitGpsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inhibitGps')
    ..hasRequiredFields = false
  ;

  DishInhibitGpsResponse._() : super();
  factory DishInhibitGpsResponse({
    $core.bool? inhibitGps,
  }) {
    final _result = create();
    if (inhibitGps != null) {
      _result.inhibitGps = inhibitGps;
    }
    return _result;
  }
  factory DishInhibitGpsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DishInhibitGpsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse clone() => DishInhibitGpsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DishInhibitGpsResponse copyWith(void Function(DishInhibitGpsResponse) updates) => super.copyWith((message) => updates(message as DishInhibitGpsResponse)) as DishInhibitGpsResponse; // ignore: deprecated_member_use
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

class WifiSetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedWifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiSetConfigResponse._() : super();
  factory WifiSetConfigResponse({
    WifiConfig? updatedWifiConfig,
  }) {
    final _result = create();
    if (updatedWifiConfig != null) {
      _result.updatedWifiConfig = updatedWifiConfig;
    }
    return _result;
  }
  factory WifiSetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse clone() => WifiSetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetConfigResponse copyWith(void Function(WifiSetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiSetConfigResponse)) as WifiSetConfigResponse; // ignore: deprecated_member_use
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

class WifiGetClientsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiClient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: WifiClient.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasClientIndex')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WifiGetClientsResponse._() : super();
  factory WifiGetClientsResponse({
    $core.Iterable<WifiClient>? clients,
    $core.bool? hasClientIndex,
    $core.int? clientIndex_3,
  }) {
    final _result = create();
    if (clients != null) {
      _result.clients.addAll(clients);
    }
    if (hasClientIndex != null) {
      _result.hasClientIndex = hasClientIndex;
    }
    if (clientIndex_3 != null) {
      _result.clientIndex_3 = clientIndex_3;
    }
    return _result;
  }
  factory WifiGetClientsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse clone() => WifiGetClientsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientsResponse copyWith(void Function(WifiGetClientsResponse) updates) => super.copyWith((message) => updates(message as WifiGetClientsResponse)) as WifiGetClientsResponse; // ignore: deprecated_member_use
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

class WifiClient_PingMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.PingMetrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inUnhappyHour2s', protoName: 'in_unhappy_hour_2s')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inUnhappyHour5s', protoName: 'in_unhappy_hour_5s')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate5m', $pb.PbFieldType.OF, protoName: 'drop_rate_5m')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latency5m', $pb.PbFieldType.OF, protoName: 'latency_5m')
    ..hasRequiredFields = false
  ;

  WifiClient_PingMetrics._() : super();
  factory WifiClient_PingMetrics({
    $core.bool? inUnhappyHour2s,
    $core.bool? inUnhappyHour5s,
    $core.double? dropRate5m,
    $core.double? latency5m,
  }) {
    final _result = create();
    if (inUnhappyHour2s != null) {
      _result.inUnhappyHour2s = inUnhappyHour2s;
    }
    if (inUnhappyHour5s != null) {
      _result.inUnhappyHour5s = inUnhappyHour5s;
    }
    if (dropRate5m != null) {
      _result.dropRate5m = dropRate5m;
    }
    if (latency5m != null) {
      _result.latency5m = latency5m;
    }
    return _result;
  }
  factory WifiClient_PingMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_PingMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics clone() => WifiClient_PingMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_PingMetrics copyWith(void Function(WifiClient_PingMetrics) updates) => super.copyWith((message) => updates(message as WifiClient_PingMetrics)) as WifiClient_PingMetrics; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.RxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countErrors', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPackets', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPacketsRetried', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampledPacketsDropped', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiClient_RxStats._() : super();
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
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (countErrors != null) {
      _result.countErrors = countErrors;
    }
    if (nss != null) {
      _result.nss = nss;
    }
    if (mcs != null) {
      _result.mcs = mcs;
    }
    if (bandwidth != null) {
      _result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      _result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      _result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      _result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (sampledPackets != null) {
      _result.sampledPackets = sampledPackets;
    }
    if (sampledPacketsRetried != null) {
      _result.sampledPacketsRetried = sampledPacketsRetried;
    }
    if (sampledPacketsDropped != null) {
      _result.sampledPacketsDropped = sampledPacketsDropped;
    }
    if (phyMode != null) {
      _result.phyMode = phyMode;
    }
    return _result;
  }
  factory WifiClient_RxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_RxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats clone() => WifiClient_RxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_RxStats copyWith(void Function(WifiClient_RxStats) updates) => super.copyWith((message) => updates(message as WifiClient_RxStats)) as WifiClient_RxStats; // ignore: deprecated_member_use
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
}

class WifiClient_TxStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient.TxStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successBytes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nss', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bandwidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guardNs', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rateMbps', $pb.PbFieldType.OU3)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airtimeFractionLast1s', $pb.PbFieldType.OF, protoName: 'airtime_fraction_last_1s')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WifiClient_TxStats._() : super();
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
  }) {
    final _result = create();
    if (bytes != null) {
      _result.bytes = bytes;
    }
    if (successBytes != null) {
      _result.successBytes = successBytes;
    }
    if (nss != null) {
      _result.nss = nss;
    }
    if (mcs != null) {
      _result.mcs = mcs;
    }
    if (bandwidth != null) {
      _result.bandwidth = bandwidth;
    }
    if (guardNs != null) {
      _result.guardNs = guardNs;
    }
    if (rateMbps != null) {
      _result.rateMbps = rateMbps;
    }
    if (airtimeFractionLast1s != null) {
      _result.airtimeFractionLast1s = airtimeFractionLast1s;
    }
    if (phyMode != null) {
      _result.phyMode = phyMode;
    }
    return _result;
  }
  factory WifiClient_TxStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient_TxStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats clone() => WifiClient_TxStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient_TxStats copyWith(void Function(WifiClient_TxStats) updates) => super.copyWith((message) => updates(message as WifiClient_TxStats)) as WifiClient_TxStats; // ignore: deprecated_member_use
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
}

class WifiClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiClient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signalStrength', $pb.PbFieldType.OF)
    ..aOM<WifiClient_RxStats>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxStats', subBuilder: WifiClient_RxStats.create)
    ..aOM<WifiClient_TxStats>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txStats', subBuilder: WifiClient_TxStats.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedTimeS', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeStr')
    ..e<WifiClient_Interface>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iface', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Interface.UNKNOWN, valueOf: WifiClient_Interface.valueOf, enumValues: WifiClient_Interface.values)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snr', $pb.PbFieldType.OF)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psmode', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelWidth', $pb.PbFieldType.OU3)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upstreamMacAddress')
    ..e<WifiClient_Role>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: WifiClient_Role.ROLE_UNKNOWN, valueOf: WifiClient_Role.valueOf, enumValues: WifiClient_Role.values)
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swqChecks', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swqChecksNonEmpty', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mibSteerState', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mibSteerMethod', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btmRequests', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btmRequestsSuccess', $pb.PbFieldType.OU3)
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dot11vSupport')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ifaceName')
    ..a<$core.int>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqSuccessLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_success_last_1h')
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqFailLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_last_1h')
    ..a<$core.int>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerReqFailAndDissocLast1h', $pb.PbFieldType.OU3, protoName: 'steer_req_fail_and_dissoc_last_1h')
    ..a<$core.int>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steerState', $pb.PbFieldType.OU3)
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'givenName')
    ..a<$core.int>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hopsFromController', $pb.PbFieldType.OU3)
    ..a<$core.double>(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estTxRateMbpsFromController', $pb.PbFieldType.OF)
    ..a<$core.double>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estRxRateMbpsFromController', $pb.PbFieldType.OF)
    ..aOS(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..aOS(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'softwareVersion')
    ..a<$core.int>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.OU3)
    ..aOM<WifiClient_PingMetrics>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingMetrics', subBuilder: WifiClient_PingMetrics.create)
    ..pPS(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv6Addresses')
    ..hasRequiredFields = false
  ;

  WifiClient._() : super();
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
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (signalStrength != null) {
      _result.signalStrength = signalStrength;
    }
    if (rxStats != null) {
      _result.rxStats = rxStats;
    }
    if (txStats != null) {
      _result.txStats = txStats;
    }
    if (associatedTimeS != null) {
      _result.associatedTimeS = associatedTimeS;
    }
    if (modeStr != null) {
      _result.modeStr = modeStr;
    }
    if (iface != null) {
      _result.iface = iface;
    }
    if (snr != null) {
      _result.snr = snr;
    }
    if (psmode != null) {
      _result.psmode = psmode;
    }
    if (channelWidth != null) {
      _result.channelWidth = channelWidth;
    }
    if (upstreamMacAddress != null) {
      _result.upstreamMacAddress = upstreamMacAddress;
    }
    if (role != null) {
      _result.role = role;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (swqChecks != null) {
      _result.swqChecks = swqChecks;
    }
    if (swqChecksNonEmpty != null) {
      _result.swqChecksNonEmpty = swqChecksNonEmpty;
    }
    if (mibSteerState != null) {
      _result.mibSteerState = mibSteerState;
    }
    if (mibSteerMethod != null) {
      _result.mibSteerMethod = mibSteerMethod;
    }
    if (btmRequests != null) {
      _result.btmRequests = btmRequests;
    }
    if (btmRequestsSuccess != null) {
      _result.btmRequestsSuccess = btmRequestsSuccess;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (dot11vSupport != null) {
      _result.dot11vSupport = dot11vSupport;
    }
    if (ifaceName != null) {
      _result.ifaceName = ifaceName;
    }
    if (steerReqSuccessLast1h != null) {
      _result.steerReqSuccessLast1h = steerReqSuccessLast1h;
    }
    if (steerReqFailLast1h != null) {
      _result.steerReqFailLast1h = steerReqFailLast1h;
    }
    if (steerReqFailAndDissocLast1h != null) {
      _result.steerReqFailAndDissocLast1h = steerReqFailAndDissocLast1h;
    }
    if (steerState != null) {
      _result.steerState = steerState;
    }
    if (givenName != null) {
      _result.givenName = givenName;
    }
    if (hopsFromController != null) {
      _result.hopsFromController = hopsFromController;
    }
    if (estTxRateMbpsFromController != null) {
      _result.estTxRateMbpsFromController = estTxRateMbpsFromController;
    }
    if (estRxRateMbpsFromController != null) {
      _result.estRxRateMbpsFromController = estRxRateMbpsFromController;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    if (softwareVersion != null) {
      _result.softwareVersion = softwareVersion;
    }
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (pingMetrics != null) {
      _result.pingMetrics = pingMetrics;
    }
    if (ipv6Addresses != null) {
      _result.ipv6Addresses.addAll(ipv6Addresses);
    }
    return _result;
  }
  factory WifiClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiClient clone() => WifiClient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiClient copyWith(void Function(WifiClient) updates) => super.copyWith((message) => updates(message as WifiClient)) as WifiClient; // ignore: deprecated_member_use
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
}

class WifiSetupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetupResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiSetupResponse._() : super();
  factory WifiSetupResponse() => create();
  factory WifiSetupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetupResponse clone() => WifiSetupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetupResponse copyWith(void Function(WifiSetupResponse) updates) => super.copyWith((message) => updates(message as WifiSetupResponse)) as WifiSetupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetupResponse create() => WifiSetupResponse._();
  WifiSetupResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetupResponse> createRepeated() => $pb.PbList<WifiSetupResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetupResponse>(create);
  static WifiSetupResponse? _defaultInstance;
}

class WifiGetStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'captivePortalEnabled')
    ..aOM<DeviceInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', subBuilder: DeviceInfo.create)
    ..aOM<DeviceState>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceState', subBuilder: DeviceState.create)
    ..aOS(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv4WanAddress')
    ..a<$core.double>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingLatencyMs', $pb.PbFieldType.OF)
    ..aOM<WifiBandStatus>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rf2ghzStatus', protoName: 'rf_2ghz_status', subBuilder: WifiBandStatus.create)
    ..aOM<WifiBandStatus>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rf5ghzStatus', protoName: 'rf_5ghz_status', subBuilder: WifiBandStatus.create)
    ..aOM<WifiAlerts>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alerts', subBuilder: WifiAlerts.create)
    ..aOB(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAviation')
    ..a<$core.double>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishPingLatencyMs', $pb.PbFieldType.OF)
    ..a<$core.double>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingLatencyMs', $pb.PbFieldType.OF)
    ..aOB(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAviationConformed')
    ..pPS(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipv6WanAddresses')
    ..a<$core.double>(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishPingDropRate5m', $pb.PbFieldType.OF, protoName: 'dish_ping_drop_rate_5m')
    ..pc<DhcpServer>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dhcpServers', $pb.PbFieldType.PM, subBuilder: DhcpServer.create)
    ..aOM<WifiConfig>(2000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: WifiConfig.create)
    ..pc<WifiClient>(3000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: WifiClient.create)
    ..aOB(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasClientIndex')
    ..a<$core.int>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WifiGetStatusResponse._() : super();
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
    WifiConfig? config,
    $core.Iterable<WifiClient>? clients,
    $core.bool? hasClientIndex,
    $core.int? clientIndex_3002,
  }) {
    final _result = create();
    if (captivePortalEnabled != null) {
      _result.captivePortalEnabled = captivePortalEnabled;
    }
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    if (deviceState != null) {
      _result.deviceState = deviceState;
    }
    if (ipv4WanAddress != null) {
      _result.ipv4WanAddress = ipv4WanAddress;
    }
    if (pingDropRate != null) {
      _result.pingDropRate = pingDropRate;
    }
    if (pingLatencyMs != null) {
      _result.pingLatencyMs = pingLatencyMs;
    }
    if (rf2ghzStatus != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.rf2ghzStatus = rf2ghzStatus;
    }
    if (rf5ghzStatus != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.rf5ghzStatus = rf5ghzStatus;
    }
    if (alerts != null) {
      _result.alerts = alerts;
    }
    if (isAviation != null) {
      _result.isAviation = isAviation;
    }
    if (dishPingDropRate != null) {
      _result.dishPingDropRate = dishPingDropRate;
    }
    if (dishPingLatencyMs != null) {
      _result.dishPingLatencyMs = dishPingLatencyMs;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate = popPingDropRate;
    }
    if (popPingLatencyMs != null) {
      _result.popPingLatencyMs = popPingLatencyMs;
    }
    if (isAviationConformed != null) {
      _result.isAviationConformed = isAviationConformed;
    }
    if (ipv6WanAddresses != null) {
      _result.ipv6WanAddresses.addAll(ipv6WanAddresses);
    }
    if (dishPingDropRate5m != null) {
      _result.dishPingDropRate5m = dishPingDropRate5m;
    }
    if (dhcpServers != null) {
      _result.dhcpServers.addAll(dhcpServers);
    }
    if (config != null) {
      _result.config = config;
    }
    if (clients != null) {
      _result.clients.addAll(clients);
    }
    if (hasClientIndex != null) {
      _result.hasClientIndex = hasClientIndex;
    }
    if (clientIndex_3002 != null) {
      _result.clientIndex_3002 = clientIndex_3002;
    }
    return _result;
  }
  factory WifiGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetStatusResponse clone() => WifiGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetStatusResponse copyWith(void Function(WifiGetStatusResponse) updates) => super.copyWith((message) => updates(message as WifiGetStatusResponse)) as WifiGetStatusResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2000)
  WifiConfig get config => $_getN(18);
  @$pb.TagNumber(2000)
  set config(WifiConfig v) { setField(2000, v); }
  @$pb.TagNumber(2000)
  $core.bool hasConfig() => $_has(18);
  @$pb.TagNumber(2000)
  void clearConfig() => clearField(2000);
  @$pb.TagNumber(2000)
  WifiConfig ensureConfig() => $_ensure(18);

  @$pb.TagNumber(3000)
  $core.List<WifiClient> get clients => $_getList(19);

  @$pb.TagNumber(3001)
  $core.bool get hasClientIndex => $_getBF(20);
  @$pb.TagNumber(3001)
  set hasClientIndex($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(3001)
  $core.bool hasHasClientIndex() => $_has(20);
  @$pb.TagNumber(3001)
  void clearHasClientIndex() => clearField(3001);

  @$pb.TagNumber(3002)
  $core.int get clientIndex_3002 => $_getIZ(21);
  @$pb.TagNumber(3002)
  set clientIndex_3002($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(3002)
  $core.bool hasClientIndex_3002() => $_has(21);
  @$pb.TagNumber(3002)
  void clearClientIndex_3002() => clearField(3002);
}

class WifiBandStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiBandStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanBusyTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'obssAirTimeFraction', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'edccaAirTimeFraction', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  WifiBandStatus._() : super();
  factory WifiBandStatus({
    $core.double? chanBusyTimeFraction,
    $core.double? txAirTimeFraction,
    $core.double? rxAirTimeFraction,
    $core.double? obssAirTimeFraction,
    $core.double? edccaAirTimeFraction,
  }) {
    final _result = create();
    if (chanBusyTimeFraction != null) {
      _result.chanBusyTimeFraction = chanBusyTimeFraction;
    }
    if (txAirTimeFraction != null) {
      _result.txAirTimeFraction = txAirTimeFraction;
    }
    if (rxAirTimeFraction != null) {
      _result.rxAirTimeFraction = rxAirTimeFraction;
    }
    if (obssAirTimeFraction != null) {
      _result.obssAirTimeFraction = obssAirTimeFraction;
    }
    if (edccaAirTimeFraction != null) {
      _result.edccaAirTimeFraction = edccaAirTimeFraction;
    }
    return _result;
  }
  factory WifiBandStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiBandStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiBandStatus clone() => WifiBandStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiBandStatus copyWith(void Function(WifiBandStatus) updates) => super.copyWith((message) => updates(message as WifiBandStatus)) as WifiBandStatus; // ignore: deprecated_member_use
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

class WifiAlerts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiAlerts', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalThrottle')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installPending')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'freshlyFused')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lanEthSlowLink10', protoName: 'lan_eth_slow_link_10')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lanEthSlowLink100', protoName: 'lan_eth_slow_link_100')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wanEthPoorConnection')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshTopologyChangingOften')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meshUnreliableBackhaul')
    ..hasRequiredFields = false
  ;

  WifiAlerts._() : super();
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
    final _result = create();
    if (thermalThrottle != null) {
      _result.thermalThrottle = thermalThrottle;
    }
    if (installPending != null) {
      _result.installPending = installPending;
    }
    if (freshlyFused != null) {
      _result.freshlyFused = freshlyFused;
    }
    if (lanEthSlowLink10 != null) {
      _result.lanEthSlowLink10 = lanEthSlowLink10;
    }
    if (lanEthSlowLink100 != null) {
      _result.lanEthSlowLink100 = lanEthSlowLink100;
    }
    if (wanEthPoorConnection != null) {
      _result.wanEthPoorConnection = wanEthPoorConnection;
    }
    if (meshTopologyChangingOften != null) {
      _result.meshTopologyChangingOften = meshTopologyChangingOften;
    }
    if (meshUnreliableBackhaul != null) {
      _result.meshUnreliableBackhaul = meshUnreliableBackhaul;
    }
    return _result;
  }
  factory WifiAlerts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAlerts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAlerts clone() => WifiAlerts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAlerts copyWith(void Function(WifiAlerts) updates) => super.copyWith((message) => updates(message as WifiAlerts)) as WifiAlerts; // ignore: deprecated_member_use
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

class DhcpServer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DhcpServer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subnet')
    ..pc<DhcpLease>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leases', $pb.PbFieldType.PM, subBuilder: DhcpLease.create)
    ..hasRequiredFields = false
  ;

  DhcpServer._() : super();
  factory DhcpServer({
    $core.String? domain,
    $core.String? subnet,
    $core.Iterable<DhcpLease>? leases,
  }) {
    final _result = create();
    if (domain != null) {
      _result.domain = domain;
    }
    if (subnet != null) {
      _result.subnet = subnet;
    }
    if (leases != null) {
      _result.leases.addAll(leases);
    }
    return _result;
  }
  factory DhcpServer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhcpServer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhcpServer clone() => DhcpServer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhcpServer copyWith(void Function(DhcpServer) updates) => super.copyWith((message) => updates(message as DhcpServer)) as DhcpServer; // ignore: deprecated_member_use
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

class DhcpLease extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DhcpLease', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostname')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresTime')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..hasRequiredFields = false
  ;

  DhcpLease._() : super();
  factory DhcpLease({
    $core.String? ipAddress,
    $core.String? macAddress,
    $core.String? hostname,
    $core.String? expiresTime,
    $core.bool? active,
  }) {
    final _result = create();
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    if (hostname != null) {
      _result.hostname = hostname;
    }
    if (expiresTime != null) {
      _result.expiresTime = expiresTime;
    }
    if (active != null) {
      _result.active = active;
    }
    return _result;
  }
  factory DhcpLease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhcpLease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhcpLease clone() => DhcpLease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhcpLease copyWith(void Function(DhcpLease) updates) => super.copyWith((message) => updates(message as DhcpLease)) as DhcpLease; // ignore: deprecated_member_use
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
}

class WifiAuthenticateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiAuthenticateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<ChallengeResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifi', subBuilder: ChallengeResponse.create)
    ..aOM<ChallengeResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dish', subBuilder: ChallengeResponse.create)
    ..hasRequiredFields = false
  ;

  WifiAuthenticateResponse._() : super();
  factory WifiAuthenticateResponse({
    ChallengeResponse? wifi,
    ChallengeResponse? dish,
  }) {
    final _result = create();
    if (wifi != null) {
      _result.wifi = wifi;
    }
    if (dish != null) {
      _result.dish = dish;
    }
    return _result;
  }
  factory WifiAuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAuthenticateResponse clone() => WifiAuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAuthenticateResponse copyWith(void Function(WifiAuthenticateResponse) updates) => super.copyWith((message) => updates(message as WifiAuthenticateResponse)) as WifiAuthenticateResponse; // ignore: deprecated_member_use
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

class WifiGetHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingDropRate', $pb.PbFieldType.KF)
    ..p<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingLatencyMs', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  WifiGetHistoryResponse._() : super();
  factory WifiGetHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? pingDropRate,
    $core.Iterable<$core.double>? pingLatencyMs,
  }) {
    final _result = create();
    if (current != null) {
      _result.current = current;
    }
    if (pingDropRate != null) {
      _result.pingDropRate.addAll(pingDropRate);
    }
    if (pingLatencyMs != null) {
      _result.pingLatencyMs.addAll(pingLatencyMs);
    }
    return _result;
  }
  factory WifiGetHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetHistoryResponse clone() => WifiGetHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetHistoryResponse copyWith(void Function(WifiGetHistoryResponse) updates) => super.copyWith((message) => updates(message as WifiGetHistoryResponse)) as WifiGetHistoryResponse; // ignore: deprecated_member_use
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

class WifiGetPingMetricsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetPingMetricsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<PingMetrics>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internet', subBuilder: PingMetrics.create)
    ..hasRequiredFields = false
  ;

  WifiGetPingMetricsResponse._() : super();
  factory WifiGetPingMetricsResponse({
    PingMetrics? internet,
  }) {
    final _result = create();
    if (internet != null) {
      _result.internet = internet;
    }
    return _result;
  }
  factory WifiGetPingMetricsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPingMetricsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsResponse clone() => WifiGetPingMetricsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPingMetricsResponse copyWith(void Function(WifiGetPingMetricsResponse) updates) => super.copyWith((message) => updates(message as WifiGetPingMetricsResponse)) as WifiGetPingMetricsResponse; // ignore: deprecated_member_use
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

class PingMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingMetrics', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMeanMs', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyStddevMs', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMeanMs5m', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_5m')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMeanMs1h', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_1h')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latencyMeanMs1d', $pb.PbFieldType.OF, protoName: 'latency_mean_ms_1d')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate5m', $pb.PbFieldType.OF, protoName: 'drop_rate_5m')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate1h', $pb.PbFieldType.OF, protoName: 'drop_rate_1h')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dropRate1d', $pb.PbFieldType.OF, protoName: 'drop_rate_1d')
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLastSuccess', $pb.PbFieldType.OF)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast1sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_1s_outage')
    ..a<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast5sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_5s_outage')
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'happyHours1s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_1s_1d')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'happyHours5s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_5s_1d')
    ..a<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast2sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_2s_outage')
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'happyHours2s1d', $pb.PbFieldType.OF, protoName: 'happy_hours_2s_1d')
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast15sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_15s_outage')
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast60sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_60s_outage')
    ..a<$core.double>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsSinceLast300sOutage', $pb.PbFieldType.OF, protoName: 'seconds_since_last_300s_outage')
    ..hasRequiredFields = false
  ;

  PingMetrics._() : super();
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
    final _result = create();
    if (latencyMeanMs != null) {
      _result.latencyMeanMs = latencyMeanMs;
    }
    if (latencyStddevMs != null) {
      _result.latencyStddevMs = latencyStddevMs;
    }
    if (latencyMeanMs5m != null) {
      _result.latencyMeanMs5m = latencyMeanMs5m;
    }
    if (latencyMeanMs1h != null) {
      _result.latencyMeanMs1h = latencyMeanMs1h;
    }
    if (latencyMeanMs1d != null) {
      _result.latencyMeanMs1d = latencyMeanMs1d;
    }
    if (dropRate != null) {
      _result.dropRate = dropRate;
    }
    if (dropRate5m != null) {
      _result.dropRate5m = dropRate5m;
    }
    if (dropRate1h != null) {
      _result.dropRate1h = dropRate1h;
    }
    if (dropRate1d != null) {
      _result.dropRate1d = dropRate1d;
    }
    if (secondsSinceLastSuccess != null) {
      _result.secondsSinceLastSuccess = secondsSinceLastSuccess;
    }
    if (secondsSinceLast1sOutage != null) {
      _result.secondsSinceLast1sOutage = secondsSinceLast1sOutage;
    }
    if (secondsSinceLast5sOutage != null) {
      _result.secondsSinceLast5sOutage = secondsSinceLast5sOutage;
    }
    if (happyHours1s1d != null) {
      _result.happyHours1s1d = happyHours1s1d;
    }
    if (happyHours5s1d != null) {
      _result.happyHours5s1d = happyHours5s1d;
    }
    if (secondsSinceLast2sOutage != null) {
      _result.secondsSinceLast2sOutage = secondsSinceLast2sOutage;
    }
    if (happyHours2s1d != null) {
      _result.happyHours2s1d = happyHours2s1d;
    }
    if (secondsSinceLast15sOutage != null) {
      _result.secondsSinceLast15sOutage = secondsSinceLast15sOutage;
    }
    if (secondsSinceLast60sOutage != null) {
      _result.secondsSinceLast60sOutage = secondsSinceLast60sOutage;
    }
    if (secondsSinceLast300sOutage != null) {
      _result.secondsSinceLast300sOutage = secondsSinceLast300sOutage;
    }
    return _result;
  }
  factory PingMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingMetrics clone() => PingMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingMetrics copyWith(void Function(PingMetrics) updates) => super.copyWith((message) => updates(message as PingMetrics)) as PingMetrics; // ignore: deprecated_member_use
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

class WifiGetDiagnosticsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetDiagnosticsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiScanResults>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkScan', subBuilder: WifiScanResults.create)
    ..pc<WifiNetwork>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNetworks', $pb.PbFieldType.PM, subBuilder: WifiNetwork.create)
    ..hasRequiredFields = false
  ;

  WifiGetDiagnosticsResponse._() : super();
  factory WifiGetDiagnosticsResponse({
    WifiScanResults? networkScan,
    $core.Iterable<WifiNetwork>? wifiNetworks,
  }) {
    final _result = create();
    if (networkScan != null) {
      _result.networkScan = networkScan;
    }
    if (wifiNetworks != null) {
      _result.wifiNetworks.addAll(wifiNetworks);
    }
    return _result;
  }
  factory WifiGetDiagnosticsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetDiagnosticsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse clone() => WifiGetDiagnosticsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetDiagnosticsResponse copyWith(void Function(WifiGetDiagnosticsResponse) updates) => super.copyWith((message) => updates(message as WifiGetDiagnosticsResponse)) as WifiGetDiagnosticsResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiScanResults.Network', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiScanResults_Network_Source>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: WifiScanResults_Network_Source.UNKNOWN, valueOf: WifiScanResults_Network_Source.valueOf, enumValues: WifiScanResults_Network_Source.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bssid')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequencyGhz')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signalLevelDbm', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseLevelDbm', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasEncryptionKey')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phyModeStr')
    ..hasRequiredFields = false
  ;

  WifiScanResults_Network._() : super();
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
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (bssid != null) {
      _result.bssid = bssid;
    }
    if (frequencyGhz != null) {
      _result.frequencyGhz = frequencyGhz;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (signalLevelDbm != null) {
      _result.signalLevelDbm = signalLevelDbm;
    }
    if (noiseLevelDbm != null) {
      _result.noiseLevelDbm = noiseLevelDbm;
    }
    if (hasEncryptionKey != null) {
      _result.hasEncryptionKey = hasEncryptionKey;
    }
    if (phyModeStr != null) {
      _result.phyModeStr = phyModeStr;
    }
    return _result;
  }
  factory WifiScanResults_Network.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults_Network.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network clone() => WifiScanResults_Network()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults_Network copyWith(void Function(WifiScanResults_Network) updates) => super.copyWith((message) => updates(message as WifiScanResults_Network)) as WifiScanResults_Network; // ignore: deprecated_member_use
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

class WifiScanResults extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiScanResults', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..pc<WifiScanResults_Network>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WifiScanResults_Network.create)
    ..hasRequiredFields = false
  ;

  WifiScanResults._() : super();
  factory WifiScanResults({
    $core.Iterable<WifiScanResults_Network>? networks,
  }) {
    final _result = create();
    if (networks != null) {
      _result.networks.addAll(networks);
    }
    return _result;
  }
  factory WifiScanResults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiScanResults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiScanResults clone() => WifiScanResults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiScanResults copyWith(void Function(WifiScanResults) updates) => super.copyWith((message) => updates(message as WifiScanResults)) as WifiScanResults; // ignore: deprecated_member_use
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

class WifiNetwork extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNetwork', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<WifiNetwork_Band>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'band', $pb.PbFieldType.OE, defaultOrMaker: WifiNetwork_Band.WIFI_UNKNOWN, valueOf: WifiNetwork_Band.valueOf, enumValues: WifiNetwork_Band.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionTypeStr')
    ..hasRequiredFields = false
  ;

  WifiNetwork._() : super();
  factory WifiNetwork({
    WifiNetwork_Band? band,
    $core.String? ssid,
    $core.int? channel,
    $core.String? encryptionTypeStr,
  }) {
    final _result = create();
    if (band != null) {
      _result.band = band;
    }
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (encryptionTypeStr != null) {
      _result.encryptionTypeStr = encryptionTypeStr;
    }
    return _result;
  }
  factory WifiNetwork.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNetwork.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNetwork clone() => WifiNetwork()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNetwork copyWith(void Function(WifiNetwork) updates) => super.copyWith((message) => updates(message as WifiNetwork)) as WifiNetwork; // ignore: deprecated_member_use
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

class WifiGetConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiConfig', subBuilder: WifiConfig.create)
    ..hasRequiredFields = false
  ;

  WifiGetConfigResponse._() : super();
  factory WifiGetConfigResponse({
    WifiConfig? wifiConfig,
  }) {
    final _result = create();
    if (wifiConfig != null) {
      _result.wifiConfig = wifiConfig;
    }
    return _result;
  }
  factory WifiGetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse clone() => WifiGetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetConfigResponse copyWith(void Function(WifiGetConfigResponse) updates) => super.copyWith((message) => updates(message as WifiGetConfigResponse)) as WifiGetConfigResponse; // ignore: deprecated_member_use
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

class WifiSetMeshDeviceTrustResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetMeshDeviceTrustResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiSetMeshDeviceTrustResponse._() : super();
  factory WifiSetMeshDeviceTrustResponse() => create();
  factory WifiSetMeshDeviceTrustResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshDeviceTrustResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustResponse clone() => WifiSetMeshDeviceTrustResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshDeviceTrustResponse copyWith(void Function(WifiSetMeshDeviceTrustResponse) updates) => super.copyWith((message) => updates(message as WifiSetMeshDeviceTrustResponse)) as WifiSetMeshDeviceTrustResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustResponse create() => WifiSetMeshDeviceTrustResponse._();
  WifiSetMeshDeviceTrustResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshDeviceTrustResponse> createRepeated() => $pb.PbList<WifiSetMeshDeviceTrustResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshDeviceTrustResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshDeviceTrustResponse>(create);
  static WifiSetMeshDeviceTrustResponse? _defaultInstance;
}

class WifiSetMeshConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSetMeshConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WifiSetMeshConfigResponse._() : super();
  factory WifiSetMeshConfigResponse() => create();
  factory WifiSetMeshConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSetMeshConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigResponse clone() => WifiSetMeshConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSetMeshConfigResponse copyWith(void Function(WifiSetMeshConfigResponse) updates) => super.copyWith((message) => updates(message as WifiSetMeshConfigResponse)) as WifiSetMeshConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigResponse create() => WifiSetMeshConfigResponse._();
  WifiSetMeshConfigResponse createEmptyInstance() => create();
  static $pb.PbList<WifiSetMeshConfigResponse> createRepeated() => $pb.PbList<WifiSetMeshConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static WifiSetMeshConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiSetMeshConfigResponse>(create);
  static WifiSetMeshConfigResponse? _defaultInstance;
}

class WifiGetClientHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetClientHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txThroughputMbps', $pb.PbFieldType.KF)
    ..p<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxThroughputMbps', $pb.PbFieldType.KF)
    ..pc<WifiGetClientHistoryResponse_WifiLimitedReason>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'throughputLimited', $pb.PbFieldType.KE, valueOf: WifiGetClientHistoryResponse_WifiLimitedReason.valueOf, enumValues: WifiGetClientHistoryResponse_WifiLimitedReason.values, defaultEnumValue: WifiGetClientHistoryResponse_WifiLimitedReason.LIMIT_UNKNOWN)
    ..p<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxRateMbps', $pb.PbFieldType.KF)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssi', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  WifiGetClientHistoryResponse._() : super();
  factory WifiGetClientHistoryResponse({
    $fixnum.Int64? current,
    $core.Iterable<$core.double>? txThroughputMbps,
    $core.Iterable<$core.double>? rxThroughputMbps,
    $core.Iterable<WifiGetClientHistoryResponse_WifiLimitedReason>? throughputLimited,
    $core.Iterable<$core.double>? rxRateMbps,
    $core.List<$core.int>? rssi,
  }) {
    final _result = create();
    if (current != null) {
      _result.current = current;
    }
    if (txThroughputMbps != null) {
      _result.txThroughputMbps.addAll(txThroughputMbps);
    }
    if (rxThroughputMbps != null) {
      _result.rxThroughputMbps.addAll(rxThroughputMbps);
    }
    if (throughputLimited != null) {
      _result.throughputLimited.addAll(throughputLimited);
    }
    if (rxRateMbps != null) {
      _result.rxRateMbps.addAll(rxRateMbps);
    }
    if (rssi != null) {
      _result.rssi = rssi;
    }
    return _result;
  }
  factory WifiGetClientHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetClientHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryResponse clone() => WifiGetClientHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetClientHistoryResponse copyWith(void Function(WifiGetClientHistoryResponse) updates) => super.copyWith((message) => updates(message as WifiGetClientHistoryResponse)) as WifiGetClientHistoryResponse; // ignore: deprecated_member_use
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

class WifiSelfTestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSelfTestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiSelfTest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfTest', subBuilder: WifiSelfTest.create)
    ..hasRequiredFields = false
  ;

  WifiSelfTestResponse._() : super();
  factory WifiSelfTestResponse({
    WifiSelfTest? selfTest,
  }) {
    final _result = create();
    if (selfTest != null) {
      _result.selfTest = selfTest;
    }
    return _result;
  }
  factory WifiSelfTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTestResponse clone() => WifiSelfTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTestResponse copyWith(void Function(WifiSelfTestResponse) updates) => super.copyWith((message) => updates(message as WifiSelfTestResponse)) as WifiSelfTestResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSelfTest.TestResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureReason')
    ..hasRequiredFields = false
  ;

  WifiSelfTest_TestResult._() : super();
  factory WifiSelfTest_TestResult({
    $core.String? name,
    $core.bool? success,
    $core.String? failureReason,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (success != null) {
      _result.success = success;
    }
    if (failureReason != null) {
      _result.failureReason = failureReason;
    }
    return _result;
  }
  factory WifiSelfTest_TestResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTest_TestResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTest_TestResult clone() => WifiSelfTest_TestResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTest_TestResult copyWith(void Function(WifiSelfTest_TestResult) updates) => super.copyWith((message) => updates(message as WifiSelfTest_TestResult)) as WifiSelfTest_TestResult; // ignore: deprecated_member_use
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

class WifiSelfTest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiSelfTest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSuccess')
    ..aOM<WifiSelfTest_TestResult>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fused', subBuilder: WifiSelfTest_TestResult.create)
    ..pc<WifiSelfTest_TestResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ethPhys', $pb.PbFieldType.PM, subBuilder: WifiSelfTest_TestResult.create)
    ..pc<WifiSelfTest_TestResult>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pcis', $pb.PbFieldType.PM, subBuilder: WifiSelfTest_TestResult.create)
    ..hasRequiredFields = false
  ;

  WifiSelfTest._() : super();
  factory WifiSelfTest({
    $core.bool? totalSuccess,
    WifiSelfTest_TestResult? fused,
    $core.Iterable<WifiSelfTest_TestResult>? ethPhys,
    $core.Iterable<WifiSelfTest_TestResult>? pcis,
  }) {
    final _result = create();
    if (totalSuccess != null) {
      _result.totalSuccess = totalSuccess;
    }
    if (fused != null) {
      _result.fused = fused;
    }
    if (ethPhys != null) {
      _result.ethPhys.addAll(ethPhys);
    }
    if (pcis != null) {
      _result.pcis.addAll(pcis);
    }
    return _result;
  }
  factory WifiSelfTest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiSelfTest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiSelfTest clone() => WifiSelfTest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiSelfTest copyWith(void Function(WifiSelfTest) updates) => super.copyWith((message) => updates(message as WifiSelfTest)) as WifiSelfTest; // ignore: deprecated_member_use
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
}

class WifiGetPersistentStatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiGetPersistentStatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stats', subBuilder: WifiPersistentStats.create)
    ..hasRequiredFields = false
  ;

  WifiGetPersistentStatsResponse._() : super();
  factory WifiGetPersistentStatsResponse({
    WifiPersistentStats? stats,
  }) {
    final _result = create();
    if (stats != null) {
      _result.stats = stats;
    }
    return _result;
  }
  factory WifiGetPersistentStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiGetPersistentStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse clone() => WifiGetPersistentStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiGetPersistentStatsResponse copyWith(void Function(WifiGetPersistentStatsResponse) updates) => super.copyWith((message) => updates(message as WifiGetPersistentStatsResponse)) as WifiGetPersistentStatsResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiPersistentStats.Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastOccurredTimestamp')
    ..hasRequiredFields = false
  ;

  WifiPersistentStats_Event._() : super();
  factory WifiPersistentStats_Event({
    $core.int? count,
    $fixnum.Int64? lastOccurredTimestamp,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (lastOccurredTimestamp != null) {
      _result.lastOccurredTimestamp = lastOccurredTimestamp;
    }
    return _result;
  }
  factory WifiPersistentStats_Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats_Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event clone() => WifiPersistentStats_Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats_Event copyWith(void Function(WifiPersistentStats_Event) updates) => super.copyWith((message) => updates(message as WifiPersistentStats_Event)) as WifiPersistentStats_Event; // ignore: deprecated_member_use
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

class WifiPersistentStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiPersistentStats', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiPersistentStats_Event>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetButton', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetPlugUnplug', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetCommand', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'factoryResetFailedLoadWifiConfig', subBuilder: WifiPersistentStats_Event.create)
    ..aOM<WifiPersistentStats_Event>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rebootFromSoftwareUpdate', subBuilder: WifiPersistentStats_Event.create)
    ..hasRequiredFields = false
  ;

  WifiPersistentStats._() : super();
  factory WifiPersistentStats({
    WifiPersistentStats_Event? factoryResetButton,
    WifiPersistentStats_Event? factoryResetPlugUnplug,
    WifiPersistentStats_Event? factoryResetCommand,
    WifiPersistentStats_Event? factoryResetFailedLoadWifiConfig,
    WifiPersistentStats_Event? rebootFromSoftwareUpdate,
  }) {
    final _result = create();
    if (factoryResetButton != null) {
      _result.factoryResetButton = factoryResetButton;
    }
    if (factoryResetPlugUnplug != null) {
      _result.factoryResetPlugUnplug = factoryResetPlugUnplug;
    }
    if (factoryResetCommand != null) {
      _result.factoryResetCommand = factoryResetCommand;
    }
    if (factoryResetFailedLoadWifiConfig != null) {
      _result.factoryResetFailedLoadWifiConfig = factoryResetFailedLoadWifiConfig;
    }
    if (rebootFromSoftwareUpdate != null) {
      _result.rebootFromSoftwareUpdate = rebootFromSoftwareUpdate;
    }
    return _result;
  }
  factory WifiPersistentStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiPersistentStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiPersistentStats clone() => WifiPersistentStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiPersistentStats copyWith(void Function(WifiPersistentStats) updates) => super.copyWith((message) => updates(message as WifiPersistentStats)) as WifiPersistentStats; // ignore: deprecated_member_use
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

class TransceiverIFLoopbackTestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverIFLoopbackTestResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'berLoopbackTest', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snrLoopbackTest', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rssiLoopbackTest', $pb.PbFieldType.OF)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pllLock')
    ..hasRequiredFields = false
  ;

  TransceiverIFLoopbackTestResponse._() : super();
  factory TransceiverIFLoopbackTestResponse({
    $core.double? berLoopbackTest,
    $core.double? snrLoopbackTest,
    $core.double? rssiLoopbackTest,
    $core.bool? pllLock,
  }) {
    final _result = create();
    if (berLoopbackTest != null) {
      _result.berLoopbackTest = berLoopbackTest;
    }
    if (snrLoopbackTest != null) {
      _result.snrLoopbackTest = snrLoopbackTest;
    }
    if (rssiLoopbackTest != null) {
      _result.rssiLoopbackTest = rssiLoopbackTest;
    }
    if (pllLock != null) {
      _result.pllLock = pllLock;
    }
    return _result;
  }
  factory TransceiverIFLoopbackTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverIFLoopbackTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestResponse clone() => TransceiverIFLoopbackTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverIFLoopbackTestResponse copyWith(void Function(TransceiverIFLoopbackTestResponse) updates) => super.copyWith((message) => updates(message as TransceiverIFLoopbackTestResponse)) as TransceiverIFLoopbackTestResponse; // ignore: deprecated_member_use
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

class TransceiverGetStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..e<TransceiverModulatorState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverModulatorState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'demodState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverModulatorState.MODSTATE_UNKNOWN, valueOf: TransceiverModulatorState.valueOf, enumValues: TransceiverModulatorState.values)
    ..e<TransceiverTxRxState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<TransceiverTxRxState>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTxRxState.TXRX_UNKNOWN, valueOf: TransceiverTxRxState.valueOf, enumValues: TransceiverTxRxState.values)
    ..e<DishState>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: DishState.UNKNOWN, valueOf: DishState.valueOf, enumValues: DishState.values)
    ..aOM<TransceiverFaults>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'faults', subBuilder: TransceiverFaults.create)
    ..e<TransceiverTransmitBlankingState>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transmitBlankingState', $pb.PbFieldType.OE, defaultOrMaker: TransceiverTransmitBlankingState.TB_UNKNOWN, valueOf: TransceiverTransmitBlankingState.valueOf, enumValues: TransceiverTransmitBlankingState.values)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modemAsicTemp', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txIfTemp', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TransceiverGetStatusResponse._() : super();
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
    final _result = create();
    if (modState != null) {
      _result.modState = modState;
    }
    if (demodState != null) {
      _result.demodState = demodState;
    }
    if (txState != null) {
      _result.txState = txState;
    }
    if (rxState != null) {
      _result.rxState = rxState;
    }
    if (state != null) {
      _result.state = state;
    }
    if (faults != null) {
      _result.faults = faults;
    }
    if (transmitBlankingState != null) {
      _result.transmitBlankingState = transmitBlankingState;
    }
    if (modemAsicTemp != null) {
      _result.modemAsicTemp = modemAsicTemp;
    }
    if (txIfTemp != null) {
      _result.txIfTemp = txIfTemp;
    }
    return _result;
  }
  factory TransceiverGetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse clone() => TransceiverGetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetStatusResponse copyWith(void Function(TransceiverGetStatusResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetStatusResponse)) as TransceiverGetStatusResponse; // ignore: deprecated_member_use
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

class TransceiverFaults extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverFaults', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overTempModemAsicFault')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overTempPcbaFault')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dcVoltageFault')
    ..hasRequiredFields = false
  ;

  TransceiverFaults._() : super();
  factory TransceiverFaults({
    $core.bool? overTempModemAsicFault,
    $core.bool? overTempPcbaFault,
    $core.bool? dcVoltageFault,
  }) {
    final _result = create();
    if (overTempModemAsicFault != null) {
      _result.overTempModemAsicFault = overTempModemAsicFault;
    }
    if (overTempPcbaFault != null) {
      _result.overTempPcbaFault = overTempPcbaFault;
    }
    if (dcVoltageFault != null) {
      _result.dcVoltageFault = dcVoltageFault;
    }
    return _result;
  }
  factory TransceiverFaults.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverFaults.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverFaults clone() => TransceiverFaults()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverFaults copyWith(void Function(TransceiverFaults) updates) => super.copyWith((message) => updates(message as TransceiverFaults)) as TransceiverFaults; // ignore: deprecated_member_use
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

class TransceiverGetTelemetryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransceiverGetTelemetryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..a<$core.int>(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaPointingMode', $pb.PbFieldType.OU3)
    ..a<$core.double>(1002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaPitch', $pb.PbFieldType.OF)
    ..a<$core.double>(1003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaRoll', $pb.PbFieldType.OF)
    ..a<$core.double>(1004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaRxTheta', $pb.PbFieldType.OF)
    ..a<$core.double>(1005, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'antennaTrueHeading', $pb.PbFieldType.OF)
    ..a<$core.int>(1006, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rxChannel', $pb.PbFieldType.OU3)
    ..a<$core.int>(1007, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentCellId', $pb.PbFieldType.OU3)
    ..a<$core.double>(1008, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondsUntilSlotEnd', $pb.PbFieldType.OF)
    ..a<$core.double>(1009, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wbRssiPeakMagDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1010, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'popPingDropRate', $pb.PbFieldType.OF)
    ..a<$core.double>(1011, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snrDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1012, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrAvgDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1013, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrMinDb', $pb.PbFieldType.OF)
    ..a<$core.double>(1014, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l1SnrMaxDb', $pb.PbFieldType.OF)
    ..a<$core.int>(1015, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lmacSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1016, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetSatelliteId', $pb.PbFieldType.OU3)
    ..a<$core.int>(1017, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantMcs', $pb.PbFieldType.OU3)
    ..a<$core.double>(1018, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantSymbolsAvg', $pb.PbFieldType.OF)
    ..a<$core.int>(1019, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dedGrant', $pb.PbFieldType.OU3)
    ..a<$core.int>(1020, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityProactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1021, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobilityReactiveSlotChange', $pb.PbFieldType.OU3)
    ..a<$core.int>(1022, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rfpTotalSynFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numOutOfSeq', $pb.PbFieldType.OU3)
    ..a<$core.int>(1024, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numUlmapDrop', $pb.PbFieldType.OU3)
    ..a<$core.double>(1025, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentSecondsOfSchedule', $pb.PbFieldType.OF)
    ..a<$core.int>(1026, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendLabelSwitchToGroundFailedCalls', $pb.PbFieldType.OU3)
    ..a<$core.double>(1027, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityX', $pb.PbFieldType.OD)
    ..a<$core.double>(1028, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityY', $pb.PbFieldType.OD)
    ..a<$core.double>(1029, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emaVelocityZ', $pb.PbFieldType.OD)
    ..a<$core.double>(1030, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ceRssiDb', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TransceiverGetTelemetryResponse._() : super();
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
    final _result = create();
    if (antennaPointingMode != null) {
      _result.antennaPointingMode = antennaPointingMode;
    }
    if (antennaPitch != null) {
      _result.antennaPitch = antennaPitch;
    }
    if (antennaRoll != null) {
      _result.antennaRoll = antennaRoll;
    }
    if (antennaRxTheta != null) {
      _result.antennaRxTheta = antennaRxTheta;
    }
    if (antennaTrueHeading != null) {
      _result.antennaTrueHeading = antennaTrueHeading;
    }
    if (rxChannel != null) {
      _result.rxChannel = rxChannel;
    }
    if (currentCellId != null) {
      _result.currentCellId = currentCellId;
    }
    if (secondsUntilSlotEnd != null) {
      _result.secondsUntilSlotEnd = secondsUntilSlotEnd;
    }
    if (wbRssiPeakMagDb != null) {
      _result.wbRssiPeakMagDb = wbRssiPeakMagDb;
    }
    if (popPingDropRate != null) {
      _result.popPingDropRate = popPingDropRate;
    }
    if (snrDb != null) {
      _result.snrDb = snrDb;
    }
    if (l1SnrAvgDb != null) {
      _result.l1SnrAvgDb = l1SnrAvgDb;
    }
    if (l1SnrMinDb != null) {
      _result.l1SnrMinDb = l1SnrMinDb;
    }
    if (l1SnrMaxDb != null) {
      _result.l1SnrMaxDb = l1SnrMaxDb;
    }
    if (lmacSatelliteId != null) {
      _result.lmacSatelliteId = lmacSatelliteId;
    }
    if (targetSatelliteId != null) {
      _result.targetSatelliteId = targetSatelliteId;
    }
    if (grantMcs != null) {
      _result.grantMcs = grantMcs;
    }
    if (grantSymbolsAvg != null) {
      _result.grantSymbolsAvg = grantSymbolsAvg;
    }
    if (dedGrant != null) {
      _result.dedGrant = dedGrant;
    }
    if (mobilityProactiveSlotChange != null) {
      _result.mobilityProactiveSlotChange = mobilityProactiveSlotChange;
    }
    if (mobilityReactiveSlotChange != null) {
      _result.mobilityReactiveSlotChange = mobilityReactiveSlotChange;
    }
    if (rfpTotalSynFailed != null) {
      _result.rfpTotalSynFailed = rfpTotalSynFailed;
    }
    if (numOutOfSeq != null) {
      _result.numOutOfSeq = numOutOfSeq;
    }
    if (numUlmapDrop != null) {
      _result.numUlmapDrop = numUlmapDrop;
    }
    if (currentSecondsOfSchedule != null) {
      _result.currentSecondsOfSchedule = currentSecondsOfSchedule;
    }
    if (sendLabelSwitchToGroundFailedCalls != null) {
      _result.sendLabelSwitchToGroundFailedCalls = sendLabelSwitchToGroundFailedCalls;
    }
    if (emaVelocityX != null) {
      _result.emaVelocityX = emaVelocityX;
    }
    if (emaVelocityY != null) {
      _result.emaVelocityY = emaVelocityY;
    }
    if (emaVelocityZ != null) {
      _result.emaVelocityZ = emaVelocityZ;
    }
    if (ceRssiDb != null) {
      _result.ceRssiDb = ceRssiDb;
    }
    return _result;
  }
  factory TransceiverGetTelemetryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransceiverGetTelemetryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse clone() => TransceiverGetTelemetryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransceiverGetTelemetryResponse copyWith(void Function(TransceiverGetTelemetryResponse) updates) => super.copyWith((message) => updates(message as TransceiverGetTelemetryResponse)) as TransceiverGetTelemetryResponse; // ignore: deprecated_member_use
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

class ToDevice extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ToDevice_Message> _ToDevice_MessageByTag = {
    1 : ToDevice_Message.request,
    2 : ToDevice_Message.healthCheck,
    0 : ToDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ToDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Request>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: Request.create)
    ..aOM<HealthCheck>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  ToDevice._() : super();
  factory ToDevice({
    Request? request,
    HealthCheck? healthCheck,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    if (healthCheck != null) {
      _result.healthCheck = healthCheck;
    }
    return _result;
  }
  factory ToDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToDevice clone() => ToDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToDevice copyWith(void Function(ToDevice) updates) => super.copyWith((message) => updates(message as ToDevice)) as ToDevice; // ignore: deprecated_member_use
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

class HealthCheck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HealthCheck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  HealthCheck._() : super();
  factory HealthCheck() => create();
  factory HealthCheck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthCheck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthCheck clone() => HealthCheck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthCheck copyWith(void Function(HealthCheck) updates) => super.copyWith((message) => updates(message as HealthCheck)) as HealthCheck; // ignore: deprecated_member_use
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

class FromDevice extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FromDevice_Message> _FromDevice_MessageByTag = {
    1 : FromDevice_Message.response,
    2 : FromDevice_Message.event,
    3 : FromDevice_Message.healthCheck,
    0 : FromDevice_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FromDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Response>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: Response.create)
    ..aOM<Event>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: Event.create)
    ..aOM<HealthCheck>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthCheck', subBuilder: HealthCheck.create)
    ..hasRequiredFields = false
  ;

  FromDevice._() : super();
  factory FromDevice({
    Response? response,
    Event? event,
    HealthCheck? healthCheck,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (event != null) {
      _result.event = event;
    }
    if (healthCheck != null) {
      _result.healthCheck = healthCheck;
    }
    return _result;
  }
  factory FromDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FromDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FromDevice clone() => FromDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FromDevice copyWith(void Function(FromDevice) updates) => super.copyWith((message) => updates(message as FromDevice)) as FromDevice; // ignore: deprecated_member_use
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

class Event extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Event_Event> _Event_EventByTag = {
    3001 : Event_Event.wifiNewClientConnected,
    3002 : Event_Event.wifiAccountBonding,
    3003 : Event_Event.wifiNewPeer,
    3004 : Event_Event.wifiCloudStatus,
    0 : Event_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..oo(0, [3001, 3002, 3003, 3004])
    ..aOM<WifiNewClientConnectedEvent>(3001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNewClientConnected', subBuilder: WifiNewClientConnectedEvent.create)
    ..aOM<WifiAccountBondingEvent>(3002, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiAccountBonding', subBuilder: WifiAccountBondingEvent.create)
    ..aOM<WifiNewPeerEvent>(3003, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiNewPeer', subBuilder: WifiNewPeerEvent.create)
    ..aOM<WifiCloudStatusEvent>(3004, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiCloudStatus', subBuilder: WifiCloudStatusEvent.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    WifiNewClientConnectedEvent? wifiNewClientConnected,
    WifiAccountBondingEvent? wifiAccountBonding,
    WifiNewPeerEvent? wifiNewPeer,
    WifiCloudStatusEvent? wifiCloudStatus,
  }) {
    final _result = create();
    if (wifiNewClientConnected != null) {
      _result.wifiNewClientConnected = wifiNewClientConnected;
    }
    if (wifiAccountBonding != null) {
      _result.wifiAccountBonding = wifiAccountBonding;
    }
    if (wifiNewPeer != null) {
      _result.wifiNewPeer = wifiNewPeer;
    }
    if (wifiCloudStatus != null) {
      _result.wifiCloudStatus = wifiCloudStatus;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
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

class WifiNewClientConnectedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNewClientConnectedEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOM<WifiClient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'client', subBuilder: WifiClient.create)
    ..hasRequiredFields = false
  ;

  WifiNewClientConnectedEvent._() : super();
  factory WifiNewClientConnectedEvent({
    WifiClient? client,
  }) {
    final _result = create();
    if (client != null) {
      _result.client = client;
    }
    return _result;
  }
  factory WifiNewClientConnectedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewClientConnectedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent clone() => WifiNewClientConnectedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewClientConnectedEvent copyWith(void Function(WifiNewClientConnectedEvent) updates) => super.copyWith((message) => updates(message as WifiNewClientConnectedEvent)) as WifiNewClientConnectedEvent; // ignore: deprecated_member_use
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

class WifiAccountBondingEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiAccountBondingEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dishId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRepeater')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..hasRequiredFields = false
  ;

  WifiAccountBondingEvent._() : super();
  factory WifiAccountBondingEvent({
    $core.String? dishId,
    $core.bool? isRepeater,
    $core.String? hardwareVersion,
  }) {
    final _result = create();
    if (dishId != null) {
      _result.dishId = dishId;
    }
    if (isRepeater != null) {
      _result.isRepeater = isRepeater;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    return _result;
  }
  factory WifiAccountBondingEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAccountBondingEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent clone() => WifiAccountBondingEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAccountBondingEvent copyWith(void Function(WifiAccountBondingEvent) updates) => super.copyWith((message) => updates(message as WifiAccountBondingEvent)) as WifiAccountBondingEvent; // ignore: deprecated_member_use
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

class WifiNewPeerEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiNewPeerEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId')
    ..hasRequiredFields = false
  ;

  WifiNewPeerEvent._() : super();
  factory WifiNewPeerEvent({
    $core.String? peerId,
  }) {
    final _result = create();
    if (peerId != null) {
      _result.peerId = peerId;
    }
    return _result;
  }
  factory WifiNewPeerEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiNewPeerEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent clone() => WifiNewPeerEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiNewPeerEvent copyWith(void Function(WifiNewPeerEvent) updates) => super.copyWith((message) => updates(message as WifiNewPeerEvent)) as WifiNewPeerEvent; // ignore: deprecated_member_use
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

class WifiCloudStatusEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiCloudStatusEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceX.API.Device'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'directLinkToDish')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardwareVersion')
    ..hasRequiredFields = false
  ;

  WifiCloudStatusEvent._() : super();
  factory WifiCloudStatusEvent({
    $core.bool? directLinkToDish,
    $core.String? hardwareVersion,
  }) {
    final _result = create();
    if (directLinkToDish != null) {
      _result.directLinkToDish = directLinkToDish;
    }
    if (hardwareVersion != null) {
      _result.hardwareVersion = hardwareVersion;
    }
    return _result;
  }
  factory WifiCloudStatusEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCloudStatusEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCloudStatusEvent clone() => WifiCloudStatusEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCloudStatusEvent copyWith(void Function(WifiCloudStatusEvent) updates) => super.copyWith((message) => updates(message as WifiCloudStatusEvent)) as WifiCloudStatusEvent; // ignore: deprecated_member_use
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

