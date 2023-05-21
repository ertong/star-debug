#!/usr/bin/env bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

TARGET=${DIR}/../star.debug/lib/grpc/starlink

mkdir -p $TARGET

/d/Program/protoc/bin/protoc.exe \
  -I $DIR \
  --plugin=protoc-gen-dart=/c/Users/ert/AppData/Local/Pub/Cache/bin/protoc-gen-dart.bat \
  --dart_out="grpc:$TARGET" \
  starlink.proto
exit

python -m grpc_tools.protoc \
  -I $DIR \
  --plugin=protoc-gen-dart=/c/Users/ert/AppData/Local/Pub/Cache/bin/protoc-gen-dart.bat \
  --dart_out="grpc:$TARGET" \
  starlink.proto

exit 
PROTO_NAME="mgraph"

python -m grpc_tools.protoc \
    -I ${DIR}/../mgraph.server/src/main/proto \
    --python_out=${DIR}/src/art_mgraph/proto \
    --grpc_python_out=${DIR}/src/art_mgraph/proto \
    ${PROTO_NAME}.proto

sed -i "s/import ${PROTO_NAME}_pb2/from . import ${PROTO_NAME}_pb2/g" ${DIR}/src/art_mgraph/proto/*_grpc.py
