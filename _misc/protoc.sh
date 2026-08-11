#!/usr/bin/env bash
DIR="$(cd "$( dirname "$0" )" && pwd )" #"
cd $DIR
PATH="$PATH:$HOME/.pub-cache/bin"

set -euo pipefail

venv_dir="$DIR/../.venv"
requirements_file="$DIR/../requirements.txt"
target_dir="$DIR/../star.debug/lib/grpc/starlink"
PY="$venv_dir/bin/python"

if [[ ! -x "$PY" ]]; then
  echo "No venv: create"
  python3 -m venv "$venv_dir"
  uv pip install --requirement "$requirements_file" --python $venv_dir
fi



if ! command -v protoc-gen-dart >/dev/null 2>&1; then
  echo "protoc-gen-dart is not available on PATH." >&2
  echo "Install it with: dart pub global activate protoc_plugin" >&2
  exit 1
fi

cd $DIR

"$PY" -m grpc_tools.protoc \
  --proto_path="$DIR" \
  --dart_out="grpc:$target_dir" \
  status.proto \
  network.proto \
  starlink.proto \
  telemetron.proto \
  gnss.proto
