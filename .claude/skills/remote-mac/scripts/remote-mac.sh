#!/usr/bin/env bash
# Sync this repository to a remote macOS host and run Flutter/iOS tasks there.
#
# The local working tree is the reference. `push` snapshots it (tracked and untracked,
# non-ignored files) into a commit without touching the local index or HEAD, and pushes
# that commit over SSH to a private repository on the Mac. `pull` brings changes made on
# the Mac back into the local working tree as an uncommitted patch. Upstream remotes are
# never used.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(dirname "$SCRIPT_DIR")"
REPO_ROOT="$(git -C "$SKILL_DIR" rev-parse --show-toplevel)"
CONFIG="${REMOTE_MAC_CONFIG:-$SKILL_DIR/config.env}"

die() { echo "remote-mac: $*" >&2; exit 1; }
info() { echo "remote-mac: $*" >&2; }

[[ -f "$CONFIG" ]] || die "missing $CONFIG (copy config.env.example and fill it in)"
# shellcheck source=/dev/null
source "$CONFIG"

: "${REMOTE_HOST:?REMOTE_HOST is not set in $CONFIG}"
REMOTE_USER="${REMOTE_USER:-}"
REMOTE_BASE="${REMOTE_BASE:-proj/remote}"       # relative to the remote home directory
PROJECT_NAME="${PROJECT_NAME:-$(basename "$REPO_ROOT")}"
APP_DIR="${APP_DIR:-star.debug}"                # Flutter app directory inside the repository
SSH_OPTS="${SSH_OPTS:-}"
REMOTE_ENV="${REMOTE_ENV:-}"                     # extra shell code run before remote commands
ENV_FILE="${ENV_FILE:-ios/.env.default}"         # fastlane secrets, relative to APP_DIR; git-ignored

TARGET="${REMOTE_USER:+$REMOTE_USER@}$REMOTE_HOST"
REMOTE_DIR="$REMOTE_BASE/$PROJECT_NAME"
REF_NS="refs/remote-mac/$PROJECT_NAME"
SYNCED_REF="$REF_NS/synced"
RESULT_REF="$REF_NS/result"
GIT_ID=(-c user.name=remote-mac -c user.email=remote-mac@localhost)

# Test hook: REMOTE_MAC_LOCAL_HOME=<dir> runs the "remote" side locally with HOME=<dir>.
LOCAL_HOME="${REMOTE_MAC_LOCAL_HOME:-}"
if [[ -n "$LOCAL_HOME" ]]; then
  REMOTE_URL="$LOCAL_HOME/$REMOTE_DIR"
else
  REMOTE_URL="$TARGET:$REMOTE_DIR"
  if [[ -n "$SSH_OPTS" ]]; then export GIT_SSH_COMMAND="ssh $SSH_OPTS"; fi
fi

cd "$REPO_ROOT"

q() { printf '%q' "$1"; }
# Quote all arguments for a remote command line; prints nothing when there are none.
qargs() { (( $# )) && printf '%q ' "$@"; return 0; }

# Run a shell script on the Mac in its login environment, from the remote repository root.
# RSH_TTY=1 allocates a terminal, for prompts that the user answers.
rsh() {
  local script="$1"
  local prelude="export LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8; "
  prelude+="[ -f ~/.zshrc ] && source ~/.zshrc >/dev/null 2>&1; "
  [[ -n "$REMOTE_ENV" ]] && prelude+="$REMOTE_ENV; "
  local full="$prelude""cd \"\$HOME\"/$(q "$REMOTE_DIR") 2>/dev/null || true; $script"
  if [[ -n "$LOCAL_HOME" ]]; then
    env HOME="$LOCAL_HOME" bash -c "$full"
  else
    # shellcheck disable=SC2086
    ssh ${RSH_TTY:+-t} $SSH_OPTS "$TARGET" "zsh -lc $(q "$full")"
  fi
}

# Run a command in the remote Flutter app directory.
rapp() { rsh "cd $(q "$APP_DIR") && $1"; }

ensure_remote_repo() {
  rsh "mkdir -p \"\$HOME\"/$(q "$REMOTE_DIR") && cd \"\$HOME\"/$(q "$REMOTE_DIR") &&
    if [ ! -d .git ]; then
      git init -q && git symbolic-ref HEAD refs/heads/sync &&
      git config receive.denyCurrentBranch updateInstead && echo initialized; fi" |
    sed 's/^/remote-mac: remote repository /' >&2
}

# Snapshot the local working tree into a commit; print its id.
snapshot() {
  local idx tree parent=()
  idx="$(mktemp)"
  cp "$(git rev-parse --git-path index)" "$idx" 2>/dev/null || rm -f "$idx"
  GIT_INDEX_FILE="$idx" git add -A
  tree="$(GIT_INDEX_FILE="$idx" git write-tree)"
  rm -f "$idx"
  if git rev-parse -q --verify "$SYNCED_REF" >/dev/null; then
    if [[ "$(git rev-parse "$SYNCED_REF^{tree}")" == "$tree" ]]; then
      git rev-parse "$SYNCED_REF"; return
    fi
    parent=(-p "$SYNCED_REF")
  fi
  git "${GIT_ID[@]}" commit-tree "$tree" "${parent[@]}" -m "remote-mac snapshot $(date -u +%FT%TZ)"
}

remote_changes() {
  rsh "git rev-parse -q --verify HEAD >/dev/null && git -c core.quotepath=off status --porcelain"
}

cmd_push() {
  local discard=0
  [[ "${1:-}" == "--discard" ]] && discard=1
  ensure_remote_repo
  local changes
  changes="$(remote_changes || true)"
  if [[ -n "$changes" ]]; then
    if (( discard )); then
      info "discarding remote changes:"; echo "$changes" >&2
      rsh "git reset -q --hard && git clean -fdq"
    else
      echo "$changes" >&2
      die "the remote copy has changes that were not pulled; run 'pull', or 'push --discard'"
    fi
  fi
  local commit remote_head
  commit="$(snapshot)"
  remote_head="$(rsh "git rev-parse -q --verify HEAD || true")"
  if [[ "$remote_head" == "$commit" ]]; then
    info "remote is up to date ($(git rev-parse --short "$commit"))"
  else
    git push -q --force "$REMOTE_URL" "$commit:refs/heads/sync"
    info "pushed snapshot $(git rev-parse --short "$commit") to $TARGET:~/$REMOTE_DIR"
  fi
  git update-ref "$SYNCED_REF" "$commit"
}

cmd_pull() {
  local result
  result="$(rsh "idx=\$(mktemp) && cp .git/index \"\$idx\" &&
    GIT_INDEX_FILE=\"\$idx\" git add -A && tree=\$(GIT_INDEX_FILE=\"\$idx\" git write-tree) &&
    rm -f \"\$idx\" &&
    if [ \"\$tree\" = \"\$(git rev-parse 'HEAD^{tree}')\" ]; then echo none; else
      c=\$(git ${GIT_ID[*]} commit-tree \"\$tree\" -p HEAD -m 'remote-mac result') &&
      git update-ref refs/heads/result \"\$c\" && echo \"\$c\"; fi")"
  if [[ "$result" == "none" ]]; then info "no remote changes to pull"; return; fi
  git fetch -q "$REMOTE_URL" "+refs/heads/result:$RESULT_REF"
  [[ "$(git rev-parse "$RESULT_REF^")" == "$(git rev-parse -q --verify "$SYNCED_REF" || true)" ]] ||
    die "the remote copy was not synced from this checkout's last push; inspect with 'diff'"
  git -c core.quotepath=off diff --stat "$SYNCED_REF" "$RESULT_REF" >&2
  local patch
  patch="$(mktemp)"
  git diff --binary "$SYNCED_REF" "$RESULT_REF" >"$patch"
  if ! git apply --whitespace=nowarn "$patch"; then
    rm -f "$patch"
    die "local files changed since the last push; nothing was applied. Compare with:
  git diff $SYNCED_REF $RESULT_REF"
  fi
  rm -f "$patch"
  git update-ref "$SYNCED_REF" "$RESULT_REF"
  rsh "git update-ref refs/heads/sync refs/heads/result && git reset -q"
  info "applied remote changes to the local working tree (not committed); review with git diff"
}

cmd_status() {
  echo "local:  synced $(git rev-parse -q --short --verify "$SYNCED_REF" || echo none)"
  echo "remote: $TARGET:~/$REMOTE_DIR at $(rsh "git rev-parse -q --short --verify HEAD || echo none" 2>/dev/null || echo unreachable)"
  local changes; changes="$(remote_changes || true)"
  if [[ -n "$changes" ]]; then echo "remote changes not pulled:"; echo "$changes"; fi
}

cmd_diff() {
  rsh "git -c core.quotepath=off status --short && git --no-pager diff --stat && git --no-pager diff"
}

cmd_check() {
  local want
  want="$(awk '$1=="flutter"{print $2}' "$APP_DIR/.tool-versions" 2>/dev/null || true)"
  rsh "echo \"host: \$(scutil --get ComputerName 2>/dev/null) macOS \$(sw_vers -productVersion) \$(uname -m)\"
    xcodebuild -version 2>&1 | head -2
    if git --version >/dev/null 2>&1 && ! git --version 2>&1 | grep -q license; then
      echo \"git: \$(git --version)\"
    else echo 'PROBLEM: git is unusable; accept the Xcode license (sudo xcodebuild -license accept)'; fi
    xcodebuild -checkFirstLaunchStatus >/dev/null 2>&1 || echo 'PROBLEM: run sudo xcodebuild -runFirstLaunch'
    echo \"ruby: \$(ruby -v 2>&1 | cut -d' ' -f2), bundler: \$(bundle --version 2>&1 | awk '{print \$3}')\"
    command -v pod >/dev/null 2>&1 && echo \"cocoapods: \$(pod --version 2>&1 | tail -1) (only needed if ios/Podfile returns)\"
    if command -v asdf >/dev/null 2>&1; then
      echo \"asdf flutter: \$(asdf list flutter 2>/dev/null | tr -d ' *' | tr '\n' ' ')\"
      asdf list flutter 2>/dev/null | tr -d ' *' | grep -qx $(q "${want:-none}") ||
        echo $(q "PROBLEM: flutter ${want:-?} from $APP_DIR/.tool-versions is not installed (run: setup)")
    else echo 'PROBLEM: asdf not found'; fi
    echo \"disk: \$(df -h ~ | tail -1 | awk '{print \$4\" free of \"\$2}')\"
    [ -d .git ] && echo \"remote repo: ~/$(q "$REMOTE_DIR") at \$(git rev-parse -q --short --verify HEAD || echo empty)\" ||
      echo 'remote repo: not created yet (created by push)'"
}

# Print the variable names of a dotenv file read from stdin, never the values.
env_keys() {
  awk '/^[A-Za-z_][A-Za-z0-9_]*=/ { k = $0; sub(/=.*/, "", k); v = substr($0, length(k) + 2)
    print "  " k (v == "" ? " (empty)" : "") }'
}

# A remote path as shell code: ~/x is under the remote home, a relative path is in the remote repository.
# shellcheck disable=SC2088
remote_path() {
  case "$1" in
    "~/"*) echo "\"\$HOME\"/$(q "${1#\~/}")" ;;
    *) q "$1" ;;
  esac
}

cmd_env() {
  local local_file="$APP_DIR/$ENV_FILE" remote_file="~/$REMOTE_DIR/$APP_DIR/$ENV_FILE"
  local rfile; rfile="$(remote_path "$remote_file")"
  case "${1:-check}" in
    check)
      if [[ -f "$local_file" ]]; then
        echo "local $local_file:"; env_keys <"$local_file"
      else echo "local $local_file: missing"; fi
      local remote_hash
      remote_hash="$(rsh "[ -f $rfile ] && git hash-object $rfile || true")"
      if [[ -z "$remote_hash" ]]; then
        echo "remote $remote_file: missing (run: env push)"
      elif [[ -f "$local_file" && "$remote_hash" == "$(git hash-object "$local_file")" ]]; then
        echo "remote $remote_file: same as local"
      else
        echo "remote $remote_file: differs from local:"
        rsh "cat $rfile" | env_keys
      fi ;;
    push)
      [[ -f "$local_file" ]] || die "missing $local_file; fetch it with: env pull <path on the Mac>"
      ensure_remote_repo
      rsh "mkdir -p $(remote_path "$(dirname "$remote_file")") && umask 077 && cat > $rfile" <"$local_file"
      info "copied $local_file to $TARGET:$remote_file" ;;
    pull)
      local src="${2:-$remote_file}" tmp
      tmp="$(mktemp)"
      rsh "cat $(remote_path "$src")" >"$tmp" || { rm -f "$tmp"; die "cannot read $src on the Mac"; }
      [[ -s "$tmp" ]] || { rm -f "$tmp"; die "$src on the Mac is empty"; }
      if [[ -f "$local_file" ]] && ! cmp -s "$tmp" "$local_file"; then
        rm -f "$tmp"
        die "local $local_file differs from $src; move it away first"
      fi
      chmod 600 "$tmp" && mv "$tmp" "$local_file"
      git check-ignore -q "$local_file" || info "WARNING: $local_file is not git-ignored"
      info "copied $src from the Mac to $local_file:"; env_keys <"$local_file" >&2 ;;
    *) die "env: expected check, push or pull [path]" ;;
  esac
}

# Fail unless the remote copy has the fastlane env file.
require_remote_env() {
  rsh "[ -f $(remote_path "~/$REMOTE_DIR/$APP_DIR/$ENV_FILE") ]" ||
    die "the Mac has no $APP_DIR/$ENV_FILE; run: env push"
}

usage() {
  cat <<EOF
Usage: $(basename "$0") <command> [args]

  check                 report the remote environment (Xcode, git, Ruby, Flutter)
  push [--discard]      sync the local working tree to ~/$REMOTE_DIR on $TARGET
  pull                  apply changes made on the Mac to the local working tree
  status | diff         show sync state / remote changes not pulled yet
  setup                 push, install Flutter from .tool-versions, pub get, iOS precache
  test [args]           push, then flutter test [args]
  analyze [args]        push, then flutter analyze [args]
  build [args]          push, pub get, flutter build ios --no-codesign [args]
                        (default args: --release); the build may update Package.resolved
  upgrade [spm|gems|all]
                        push, then re-resolve Swift packages to the newest versions the
                        plugins allow and rebuild (spm), and/or bundle update in ios/ (gems);
                        review with diff, bring back with pull
  run '<command>'       push, then run a shell command in the remote $APP_DIR
  env [check|push|pull [path]]
                        show the variable names in $APP_DIR/$ENV_FILE here and on the Mac,
                        copy it to the remote copy, or fetch it from the Mac (default
                        path: the remote copy; ~/... is under the remote home)
  fastlane <args>       push, then bundle exec fastlane <args> in the remote ios/
  spaceauth             push, then log in to Apple with fastlane spaceauth in a terminal;
                        prints a FASTLANE_SESSION for CI (interactive, for the user)
  shell                 open an interactive login shell in the remote $APP_DIR

Set NO_PUSH=1 to skip the automatic push before test/analyze/build/upgrade/run/fastlane.
EOF
}

# Swift Package Manager pins, relative to APP_DIR, separated by spaces.
SPM_RESOLVED_FILES="${SPM_RESOLVED_FILES:-ios/Runner.xcworkspace/xcshareddata/swiftpm/Package.resolved ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved}"

auto_push() { [[ "${NO_PUSH:-}" == 1 ]] || cmd_push; }

cmd="${1:-}"; shift || true
case "$cmd" in
  check) cmd_check ;;
  push) cmd_push "$@" ;;
  pull) cmd_pull ;;
  status) cmd_status ;;
  diff) cmd_diff ;;
  setup)
    auto_push
    rapp "asdf install && flutter --version && flutter pub get && flutter precache --ios" ;;
  test) auto_push; rapp "flutter test $(qargs "$@")" ;;
  analyze) auto_push; rapp "flutter analyze $(qargs "$@")" ;;
  build)
    auto_push
    (( $# )) || set -- --release
    rapp "flutter pub get && flutter build ios --no-codesign $(qargs "$@")" ;;
  upgrade)
    auto_push
    spm="rm -f"
    for f in $SPM_RESOLVED_FILES; do spm+=" $(q "$f")"; done
    spm+=" && flutter pub get && flutter build ios --no-codesign --release"
    case "${1:-spm}" in
      spm) rapp "$spm" ;;
      gems) rapp "cd ios && bundle update" ;;
      all) rapp "$spm && cd ios && bundle update" ;;
      *) die "upgrade: expected spm, gems or all" ;;
    esac
    cmd_status ;;
  run)
    (( $# == 1 )) || die "run: pass one quoted shell command"
    auto_push; rapp "$1" ;;
  env) cmd_env "$@" ;;
  fastlane)
    (( $# )) || die "fastlane: pass a lane or fastlane arguments"
    auto_push
    require_remote_env
    rapp "cd ios && bundle install --quiet && bundle exec fastlane $(qargs "$@")" ;;
  spaceauth)
    [[ -z "$LOCAL_HOME" ]] || die "spaceauth is not available in local test mode"
    [[ -t 0 && -t 1 ]] || die "spaceauth asks for the Apple ID password and a 2FA code; run it in your own terminal"
    auto_push
    require_remote_env
    RSH_TTY=1 rapp "cd ios && bundle install --quiet && set -a && . ./$(q "${ENV_FILE#ios/}") && set +a &&
      bundle exec fastlane spaceauth -u \"\$APPLE_ID\"" ;;
  shell)
    [[ -z "$LOCAL_HOME" ]] || die "shell is not available in local test mode"
    # shellcheck disable=SC2086
    ssh -t $SSH_OPTS "$TARGET" "cd ~/$(q "$REMOTE_DIR/$APP_DIR") && exec zsh -l" ;;
  ""|-h|--help|help) usage ;;
  *) usage >&2; die "unknown command: $cmd" ;;
esac
