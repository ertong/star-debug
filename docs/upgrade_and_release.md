# Upgrades and releases

This guide covers toolchain and dependency upgrades, then the routine that prepares a release.
[Development](development.md) describes the current versions, generators, and CI layout; this guide
lists the steps that change them.

## Branches

Day-to-day work, upgrades included, lands on `base`. `main` is `base` plus release-only files:
`README.md`, `RELEASE_NOTES.md`, `LICENSE.md`, `_build/reproducible/`, store screenshots in
`star.debug/_misc/android/` and `ios/`, and the privacy policy. `main` also keeps its own iOS signing settings
(`DEVELOPMENT_TEAM` and the `com.stardebug` bundle identifier in `project.pbxproj`). Release tags
such as `1.2b83` point at `main`.

## What changed from 1.2b82 to 1.2b83

The 1.2b83 upgrade touched every layer and is a useful checklist:

| Area | 1.2b82 | 1.2b83 | Where |
|---|---|---|---|
| Flutter / Dart | 3.47.6 / 3.13 | 3.50.1 / 3.14 | `.tool-versions`, `pubspec.yaml` `environment` |
| Firebase plugins | core 4, crashlytics 5, analytics 12 | core 5, crashlytics 6, analytics 13 | `pubspec.yaml` |
| Design widgets | `flutter/material`, `flutter/cupertino` | `material_ui`, `cupertino_ui` | imports, app builder |
| Removed | `upgrader`, macOS target | | `pubspec.yaml`, `star.debug/macos/` |
| AGP / Gradle / Kotlin | 9.1.1 / 9.3.1 / 2.3.20 | 9.3.1 / 9.5.0 / 2.4.20 | `android/settings.gradle`, Gradle wrapper |
| Google services / Crashlytics Gradle plugins | 4.4.4 / 3.0.6 | 4.6.0 / 3.0.8 | `android/settings.gradle` |
| Android CI image | `ertong/flutter:…-jdk17` (external) | `_build/docker`, JDK 25, project registry | `.gitlab-ci.yml`, `_build/` |
| iOS Swift packages | firebase-ios-sdk 12.x | firebase-ios-sdk 13.2.0 | both `Package.resolved` files |
| fastlane | | 2.242.0 | `ios/Gemfile.lock` |
| iOS CI | `pod install` | removed: Swift Package Manager, no Podfile | `_build/ci_ios.yaml` |
| Starlink protocol | 2026-09-24 | 2026-11-16 | `_misc/*.proto` |

Problems found on the way, and the rule each one became:

- Release builds run Android lint and debug builds do not. The new lint crashed on JDK 17 with
  `NoSuchMethodError: java.util.List.removeLast()`, but only in the tag pipeline. Build a release
  bundle before tagging (see [Validate](#validate)).
- Plugins that moved to Swift Package Manager broke `pod install` in iOS CI. Check iOS CI steps
  when plugins change their iOS packaging.
- Commits cherry-picked onto both branches conflicted in `Package.resolved` at merge time. Land
  upgrades on `base` only and reach `main` by merging.
- `build_runner` stayed at 2.16 because the i18n generator does not yet support `build` 5.
  `flutter pub outdated` keeps listing such held packages; that is expected.

## Upgrade procedure

Work on `base`. Do one area per commit where practical, in this order.

### Flutter and Dart

1. Read the Flutter release notes and breaking changes between the current and target versions.
2. Change the version in every place that names it:
   - `star.debug/.tool-versions`. iOS CI (asdf on the Mac runner) and Windows CI install Flutter
     from this file.
   - `pubspec.yaml` `environment`: the `flutter` floor and the Dart `sdk` floor of that release.
   - `_build/docker/Dockerfile` `FLUTTER_VERSION`, and the `CI_IMAGE` tag in `.gitlab-ci.yml`
     (see [Android CI image](#android-ci-image)).
   - Version notes in `android/build.gradle`, `android/gradle.properties`, `docs/development.md`,
     and `docs/stack.md`. `git grep -n '<old version>'` finds them.
3. Run `flutter pub get`, then `dart fix --dry-run` and `flutter analyze`. Apply migrations the
   release calls for; 3.50 needed `dart fix --apply --code=migrate_design_widgets` and the
   `RadioGroup` migration. Keep each migration in its own commit.

### Dart dependencies

1. `flutter pub outdated` lists upgradable and held packages.
2. Raise constraints in `pubspec.yaml`, including major versions you intend to take, then run
   `flutter pub upgrade`. Raise each floor to the resolved version so the lockfile and constraints
   agree.
3. Remove dependencies that are no longer used.
4. Regenerate when generators changed: `dart run build_runner build --delete-conflicting-outputs`.
5. Commit `pubspec.lock` and changed platform registrants (for example
   `windows/flutter/generated_plugin_registrant.cc`) with the dependency change.
6. A plugin major version can change native requirements: Firebase majors move the iOS Swift
   packages ([iOS](#ios-and-the-mac-host)) and Android Gradle plugins.

### Android build tools

1. Pick AGP, Gradle, and Kotlin versions that the target Flutter release supports.
   `packages/flutter_tools/lib/src/android/gradle_utils.dart` in the Flutter SDK holds the limits:
   `maxKnownAndSupportedGradleVersion`, the AGP-to-Gradle table, and the Java-to-Gradle table
   (`_javaGradleCompatList`, with `oneMajorVersionHigherJavaVersion` as the first unknown Java).
2. Update `android/settings.gradle` (AGP, Kotlin, google-services, Crashlytics plugins) and
   `distributionUrl` in `android/gradle/wrapper/gradle-wrapper.properties`.
3. Update compile SDK, Build Tools, and NDK in `android/app/build.gradle` when a plugin or AGP
   requires it. Add the same packages to `ANDROID_PACKAGES` in the Dockerfile.
4. Choose the JDK: the newest version in Flutter's Java table that the AGP release accepts. Set it
   in the Dockerfile's `JDK_PACKAGE`, and update the Java range in `docs/development.md`.

### Android CI image

The Android jobs run in `$CI_REGISTRY_IMAGE/flutter:<flutter>-api<api>-jdk<jdk>`, built from
`_build/docker/Dockerfile` by the `ci_image` job only when the tag is missing.

1. Change Flutter, JDK, or SDK packages in the Dockerfile's `ARG` defaults.
2. To refresh system packages, set `UBUNTU_SNAPSHOT` to a recent UTC timestamp
   (`YYYYMMDDTHHMMSSZ`) and update the base image digest, which
   `docker buildx imagetools inspect ubuntu:26.04` prints. Change both together.
3. Change the `CI_IMAGE` tag in `.gitlab-ci.yml` whenever anything in `_build/docker` changes. Use
   the new versions, or add a suffix such as `-r2` when the versions stay the same. An existing tag
   is never rebuilt, so a Dockerfile change under an old tag has no effect.
4. The first pipeline with a new tag spends about 15–20 minutes building the image. To try it
   before pushing, build it locally with `docker build -t local/flutter:test _build/docker`.

### iOS and the Mac host

The iOS project uses Swift Package Manager and has no Podfile. The Mac also runs the GitLab iOS
runner. The [`remote-mac` skill](../.claude/skills/remote-mac/SKILL.md) automates the steps below;
its commands run as `bash .claude/skills/remote-mac/scripts/remote-mac.sh <command>`.

1. Re-resolve Swift packages after plugin or Flutter changes: build on the Mac with Xcode (or the
   skill's `upgrade spm`), then commit both `Package.resolved` files.
2. Update fastlane with `bundle update` in `ios/` (or the skill's `upgrade gems`) and commit
   `ios/Gemfile.lock`.
3. Verify with `flutter build ios --release --no-codesign`.
4. After an Xcode or macOS update, builds and `git` fail on the Mac until you run there:

   ```sh
   sudo xcodebuild -license accept && sudo xcodebuild -runFirstLaunch
   ```

   Then re-check `flutter doctor -v`.
5. Expired Apple sessions break TestFlight uploads; refresh `FASTLANE_SESSION` with
   the skill's `spaceauth`, which you run interactively. Signing and profile fixes are in the
   skill's `DEPLOYMENT.md`.

The macOS desktop target was removed in 1.2b83. Do not regenerate it as part of an upgrade.

### Windows and Linux

Windows CI clones the Flutter release named in `.tool-versions`, so it needs no separate change.
After dependency upgrades, check that the `clipboard` Git pin is still needed (see
[Development](development.md#platform-and-release-tooling)) and that `windows/dll/` still matches
the runtime the build needs. Linux has no CI job; build it locally when its plugins change.

### Starlink protocol

1. Replace `_misc/starlink.proto` and related files with the new dump.
2. From the repository root, run `bash _misc/protoc.sh`.
3. Keep fields that a newer dump reserves but older firmware still sends, and tag their uses with
   `grpc-deprecated(<when>)` ([Deprecated gRPC fields](development.md#deprecated-grpc-fields)).
4. Extend `test/proto_schema_test.dart` and the debug-data fixtures for new fields.

### Validate

From `star.debug/`:

```sh
flutter test
flutter analyze
flutter build apk --debug --target-platform android-arm,android-arm64,android-x64
```

Also build a release bundle in the CI image (`local/flutter:test`, built as in
[Android CI image](#android-ci-image)), because only release builds run Android lint. Run it from
the root of a separate clone, so build output and the throwaway signing key stay out of the
working checkout:

```sh
docker run --rm -v "$PWD:/builds/p" -w /builds/p/star.debug -e ANDROID_KEY_PASSWORD=pass123 \
  local/flutter:test bash -c '
    keytool -genkey -keystore android/release-key.jks -alias key -keyalg RSA -keysize 2048 \
      -validity 10000 -keypass pass123 -storepass pass123 -dname "cn=Test, c=UA" &&
    flutter build appbundle'
```

Check iOS with `flutter build ios --release --no-codesign` on the Mac.

## Pre-release routine

Version tags look like `1.2b84`. `ci-parse-tag.sh` turns a tag into the build name and number:
`1.2.84a` and `84` on Android, `1.2.84i` on iOS, and `1.2.84` on Windows.

1. **Merge.** Check out `main` and run `git merge --no-ff base` (message `Merge branch 'base'`).
   Keep `main`'s signing settings in `project.pbxproj` and its release-only files. If
   `Package.resolved` conflicts, take the side that was resolved on the Mac most recently.
2. **Check.** Run `flutter test` and `flutter analyze` on `main`.
3. **Release notes.** Add a section to the top of `RELEASE_NOTES.md`:

   ```markdown
   ## 1.2b84

   ### New Features:
   - …

   ### Enhancements:
   - …

   ### Fixes:
   - …
   ```

   Base it on `git log --no-merges <previous tag>..main`, and write user-visible changes only. Omit
   empty headings. Name protocol updates as "Update Starlink protocol support to <date>". The file
   uses CRLF line endings; keep them.
4. **README.** In `README.md`, update "Currently (as of version …)" and add new user-facing
   capabilities to the feature list.
5. **Reproducible build.** Copy the previous `_build/reproducible/1.2.<n>a.md` to the new version.
   Update the tag, `NAME`, `NUM`, `BUILD_OPTS`, and the CI image. Add the link to the list in
   `_build/reproducible/reproducible_builds.md`, which uses CRLF line endings. The image comes
   from the project registry, so readers without access build it from `_build/docker` at the
   release tag: `docker build -t star-debug-ci:<tag> _build/docker`.
6. **Commit and tag.** Commit with the summary `release notes` or `release docs`, push `main`, then
   push the tag. The tag pipeline publishes to the Play internal track when the `ANDROID_JKS`
   variable is set and to TestFlight when `APPLE` is set, and builds the Windows archive when
   `DIAWI_TOKEN` is set.
7. **Watch the tag pipeline.** It is the first run of the release-only steps: the release bundle
   with Android lint, signing, and store uploads. If it fails, fix the problem on `base`, merge
   again, and move the tag to the fixed commit before it is published anywhere.
