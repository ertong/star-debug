#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
venv_python="$script_dir/../.venv/bin/python"

if [[ ! -x "$venv_python" ]]; then
  echo "Project virtual environment not found at $venv_python" >&2
  echo "Create it from the repository root and install requirements.txt." >&2
  exit 1
fi

exec "$venv_python" "$script_dir/msg.py" "$@"
