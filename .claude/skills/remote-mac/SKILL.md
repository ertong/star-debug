---
name: remote-mac
description: Build, test, sign, and upgrade this Flutter project on the remote macOS host over SSH. The skill syncs the local working tree to ~/proj/remote/<project> and runs iOS builds, flutter test or analyze, fastlane lanes with ios/.env.default, and Swift package or fastlane gem upgrades there, then brings changes made on the Mac back. Use when asked to build or test on the Mac, check an iOS build, refresh Package.resolved or Gemfile.lock, sync files to or from the Mac, fix iOS certificates, profiles, or TestFlight uploads, or refresh the Apple session (spaceauth) for CI.
---

# Remote Mac builds

`scripts/remote-mac.sh` mirrors the local working tree into a private Git repository on the Mac
and runs Flutter and iOS commands in it. The local checkout is the reference copy. The Mac copy
has no upstream remote, so never push or pull from it to GitLab or GitHub.

Run the script with `bash` from anywhere in the repository. The executable bit may not survive
the Windows-mounted checkout.

```sh
bash .claude/skills/remote-mac/scripts/remote-mac.sh <command> [args]
```

## Configuration

- `config.env.example` is committed. Copy it to `config.env` next to it and fill in the host and
  user. `config.env` is git-ignored and can also hold `SSH_OPTS` and `REMOTE_ENV` secrets.
- SSH uses the current ssh-agent, so no password is stored.
- The remote copy is `~/$REMOTE_BASE/$PROJECT_NAME`, by default `~/proj/remote/<repo folder>`.

If `config.env` is missing, ask the user for the host and account before creating it. To prepare
a new Mac, follow [MAC_SETUP.md](MAC_SETUP.md).

## Fastlane secrets

Fastlane reads its secrets from `star.debug/ios/.env.default`, which is git-ignored, so `push` never
copies it. Use the `env` command to keep the local file and the Mac's copy in step:

- `env pull <path>` fetches it from another location on the Mac, such as a checkout there. Ask the
  user for the path; `~/...` is under the remote home. Without a path it reads the remote copy.
- `env push` copies the local file to the remote copy, mode 600.
- `env check` lists the variable names on both sides and whether the copies match.

The `fastlane` and `spaceauth` commands refuse to run until the Mac has the file. For certificates,
profiles, uploads, keychains, and the CI Apple session, follow [DEPLOYMENT.md](DEPLOYMENT.md).

## Commands

| Command | Effect |
|---|---|
| `check` | Report macOS, Xcode, Git, Ruby, the Flutter versions in asdf, and free disk space |
| `push [--discard]` | Sync the local working tree to the Mac |
| `pull` | Apply changes made on the Mac to the local working tree, uncommitted |
| `status`, `diff` | Show the sync state, or the changes on the Mac that are not pulled yet |
| `setup` | Push, then `asdf install` (Flutter from `star.debug/.tool-versions`), `flutter pub get`, `flutter precache --ios` |
| `test [args]`, `analyze [args]` | Push, then `flutter test` or `flutter analyze` in `star.debug` |
| `build [args]` | Push, then `flutter build ios --no-codesign`, by default with `--release` |
| `upgrade [spm\|gems\|all]` | Push, then re-resolve Swift packages and rebuild (`spm`), or run `bundle update` for fastlane (`gems`) |
| `run '<command>'` | Push, then run one shell command in the remote `star.debug` |
| `env [check\|push\|pull [path]]` | Compare, upload, or fetch `ios/.env.default` (names only; values never print) |
| `fastlane <args>` | Push, then `bundle exec fastlane <args>` in the remote `star.debug/ios` |
| `spaceauth` | Push, then log in to Apple interactively and print a `FASTLANE_SESSION` for CI (the user runs it) |
| `shell` | Open an interactive login shell on the Mac (for the user, not for unattended use) |

Set `NO_PUSH=1` to reuse the current remote copy without syncing first.

## How syncing works

- **push**
  - Snapshots tracked and untracked, non-ignored files into a commit. It uses a temporary index,
    so the local index, HEAD, and branches are untouched.
  - Pushes the commit to the Mac's `sync` branch. The Mac's working tree updates in place.
  - Deleted files are removed on the Mac.
  - Ignored output on the Mac, such as `build/`, `.dart_tool/`, and SwiftPM caches, survives
    between runs.
  - The last pushed snapshot is stored locally as `refs/remote-mac/<project>/synced`.
- **Push refuses while the Mac has changes that were not pulled.** Run `diff` and decide:
  - `pull` keeps them.
  - `push --discard` drops them, including untracked non-ignored files on the Mac.

  Tell the user before you discard anything.
- **pull**
  - Commits the Mac's changes there and fetches them into `refs/remote-mac/<project>/result`.
  - Applies the difference to the local working tree as a patch.
  - The patch is refused, with nothing applied, if the same local files changed since the last
    push.
  - Pulled changes are left uncommitted. Review them with `git diff` and commit only when the
    user asks.

## Typical workflows

- **Check an iOS build:** run `build`, then `status`. Flutter's SwiftPM integration may rewrite
  both `Package.resolved` files during a build. If they changed, show the user `diff` and offer
  `pull`.
- **Run tests on macOS:** `test test/some_test.dart`, or `test` for the full suite.
- **Upgrade iOS dependencies:** `upgrade spm` or `upgrade gems`, then `diff` and `pull`. Then
  review the local diff and run the local tests.
- **Something odd on the Mac:** `run 'flutter doctor -v'`, or `check`.
- **Signing or upload problems:** run the read-only diagnostics in [DEPLOYMENT.md](DEPLOYMENT.md)
  first, then follow the matching fix.
- **Signed TestFlight build, as CI does it:**
  1. `build`.
  2. `fastlane beta` with `NO_PUSH=1`, which writes `ios/build/stardebug.ipa`.
  3. `do_testflight` uploads it; run it only when the user asks.

Pushing is fast after the first sync, because only changed objects are sent. A cold release build
takes about 2.5 minutes; a warm one takes under a minute.

## Remote host notes

- The Mac also runs the project's GitLab iOS runner (`gitlab-runner`, one job at a time). Our copy
  is separate from the runner's build directory, but builds compete for CPU.
- Tools come from the login environment. Homebrew is loaded from `~/.zprofile`, and asdf (Flutter,
  Ruby) from `~/.zshrc`. The script sources both, as `_build/ci_ios.yaml` does.
- The iOS project uses Swift Package Manager. CocoaPods is installed, but there is no
  `ios/Podfile`.
- After an Xcode update, `/usr/bin/git` and builds fail until the user runs, on the Mac:
  `sudo xcodebuild -license accept && sudo xcodebuild -runFirstLaunch`. These need sudo, so ask
  the user to run them; `check` reports the problem.

## Rules

- Do not run `_misc/protoc.sh`, `build_runner`, or `msg.sh` on the Mac. Generate locally, then
  push.
- Do not edit files on the Mac by hand. Edit locally and push. Only tool output, such as
  lock files, should come back through `pull`.
- Do not print or commit `config.env`, `ios/.env.default`, or a `FASTLANE_SESSION`. Use
  `env check` to see which variables are set.
- Ask the user before any fastlane step that logs in to Apple, changes the developer portal or
  the match repository, uploads a build, or deletes keychain items. `spaceauth` and other 2FA
  prompts need the user's own terminal.
