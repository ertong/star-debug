#!/usr/bin/env bash
# Gives WSL its own copies of the files Flutter and Gradle write with absolute SDK and
# pub-cache paths, so the Linux SDK in WSL and the Windows SDK in Android Studio can work on
# this checkout at the same time. Each path below is bind-mounted, inside WSL only, from a
# directory on the Linux filesystem; Windows keeps seeing its own files at the same paths.
#
#   ./wsl_mounts.sh          mount; safe to repeat, needed again after each WSL restart
#   ./wsl_mounts.sh status   list the paths and whether they are mounted
#   ./wsl_mounts.sh umount   remove the mounts; the WSL copies are kept for next time
#   ./wsl_mounts.sh install  add a systemd service that mounts at every WSL start (needs systemd)
#   ./wsl_mounts.sh uninstall
#
# WSL copies live in $STAR_DEBUG_WSL_STORE, default ~/.cache/star-debug-wsl/<checkout hash>.
set -euo pipefail

project="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
store="${STAR_DEBUG_WSL_STORE:-${XDG_CACHE_HOME:-$HOME/.cache}/star-debug-wsl/$(printf %s "$project" | md5sum | cut -c1-12)}"

dirs=(
  .dart_tool                  # package_config.json, build_runner and flutter_build caches
  build                       # test, asset and APK outputs
  build-wsl                   # same WSL directory as build; see aliases below
  linux/flutter/ephemeral     # plugin symlinks into the pub cache, generated CMake config
  windows/flutter/ephemeral
  android/.gradle             # Gradle and Kotlin caches, used by `flutter build apk`
  android/.kotlin
)
files=(
  .flutter-plugins
  .flutter-plugins-dependencies
  android/local.properties    # flutter.sdk and sdk.dir
)

# Paths that share another path's WSL directory. `flutter config --build-dir` moves test assets,
# but `flutter test` still reads them from build/unit_test_assets, so both names must agree.
declare -A aliases=([build-wsl]=build)

sudo=()
[[ $EUID -eq 0 ]] || sudo=(sudo)

if ! grep -qi microsoft /proc/sys/kernel/osrelease 2>/dev/null; then
  echo "wsl_mounts.sh: not running in WSL; nothing to do" >&2
  exit 0
fi

mounted() { findmnt -rn --mountpoint "$1" >/dev/null; }

unit="star-debug-wsl-mounts-$(printf %s "$project" | md5sum | cut -c1-12).service"

case "${1:-mount}" in
  mount)
    for path in "${dirs[@]}"; do
      target="$project/$path"
      mounted "$target" && continue
      source="$store/${aliases[$path]:-$path}"
      mkdir -p "$source" "$target"
      "${sudo[@]}" mount --bind "$source" "$target"
    done
    for path in "${files[@]}"; do
      target="$project/$path"
      mounted "$target" && continue
      mkdir -p "$(dirname "$store/$path")" "$(dirname "$target")"
      # A file mount needs an existing file on both sides. Flutter rewrites both in place.
      [[ -e "$store/$path" ]] || : > "$store/$path"
      [[ -e "$target" ]] || : > "$target"
      "${sudo[@]}" mount --bind "$store/$path" "$target"
    done
    ;;
  status)
    echo "store: $store"
    for path in "${dirs[@]}" "${files[@]}"; do
      if mounted "$project/$path"; then echo "mounted      $path"; else echo "not mounted  $path"; fi
    done
    ;;
  umount)
    for path in "${files[@]}" "${dirs[@]}"; do
      target="$project/$path"
      if mounted "$target"; then "${sudo[@]}" umount "$target"; fi
    done
    ;;
  install)
    "${sudo[@]}" tee "/etc/systemd/system/$unit" >/dev/null <<UNIT
[Unit]
Description=WSL-only Flutter paths for $project
After=local-fs.target

[Service]
Type=oneshot
RemainAfterExit=yes
Environment=STAR_DEBUG_WSL_STORE=$store
ExecStart=/bin/bash $project/wsl_mounts.sh mount
ExecStop=/bin/bash $project/wsl_mounts.sh umount

[Install]
WantedBy=multi-user.target
UNIT
    "${sudo[@]}" systemctl daemon-reload
    "${sudo[@]}" systemctl enable --now "$unit"
    echo "installed $unit"
    ;;
  uninstall)
    "${sudo[@]}" systemctl disable --now "$unit" || true
    "${sudo[@]}" rm -f "/etc/systemd/system/$unit"
    "${sudo[@]}" systemctl daemon-reload
    echo "removed $unit"
    ;;
  *)
    echo "usage: $0 [mount|status|umount|install|uninstall]" >&2
    exit 2
    ;;
esac
