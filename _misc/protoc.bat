@echo off
cd %~dp0

SET TARGET=%~dp0\..\star.debug\lib\grpc\starlink

protoc.exe ^
  -I %~dp0 ^
  --dart_out="grpc:%TARGET%" ^
  status.proto network.proto starlink.proto 
  
  