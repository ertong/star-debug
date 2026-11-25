# Upgrades and releases

This guide is the checklist for toolchain and dependency upgrades, followed by the routine that
prepares a release. [Development](development.md) describes the current versions, generators, and
CI layout.

## Branches

Upgrades, like other work, land on `base` and reach `main` by merging; do not cherry-pick the same
change onto both. `main` is `base` plus release-only files (`README.md`, `RELEASE_NOTES.md`,
`LICENSE.md`, `_build/reproducible/`, store screenshots, and the privacy policy) and its own iOS
signing settings in `project.pbxproj`. Release tags point at `main`.

## Where versions live

A version often appears in more than one place. When one changes, check the rest of its row.

| Component | Places that must agree |
|---|---|
| Flutter | `star.debug/.tool-versions` (iOS CI installs it with asdf, Windows CI clones it); the `flutter` and Dart `sdk` floors in `pubspec.yaml`; `FLUTTER_VERSION` in `_build/docker/Dockerfile`; the `CI_IMAGE` tag; version notes in `android/build.gradle`, `android/gradle.properties`, `docs/development.md`, and `docs/stack.md` |
| Dart packages | `pubspec.yaml` and `pubspec.lock`; generated plugin registrants under `linux/` and `windows/`; Git-pinned packages and the reason for each pin |
| AGP, Gradle, Kotlin | `android/settings.gradle` plugins (AGP, Kotlin, google-services, Crashlytics); `distributionUrl` in the Gradle wrapper; the Kotlin BOM in `android/app/build.gradle`; migration flags in `android/gradle.properties` |
| Android SDK | `compileSdkVersion`/`compileSdkMinor`, `buildToolsVersion`, `ndkVersion`, and `targetSdkVersion` in `android/app/build.gradle`; the subproject override in `android/build.gradle`; `ANDROID_PACKAGES` in the Dockerfile |
| JDK | `JDK_PACKAGE` in the Dockerfile; the Java range in `docs/development.md` |
| CI image | Dockerfile base image digest, `UBUNTU_SNAPSHOT`, and `ANDROID_SDK_TOOLS_VERSION`; the `CI_IMAGE` tag in `.gitlab-ci.yml` |
| iOS | both `Package.resolved` files; `ios/Gemfile.lock`; `IPHONEOS_DEPLOYMENT_TARGET`; Xcode and asdf on the Mac runner |
| Windows | `windows/CMakeLists.txt`; runtime DLLs in `windows/dll/`; `_build/ci_win32.yaml` |
| Starlink protocol | `_misc/*.proto` and generated `lib/grpc/starlink/`; `protoc_plugin` and the unpinned `requirements.txt` tools |

## Upgrade procedure

Upgrade one area per commit where practical, in the order below. Name held-back packages and the
reason in the commit message.

### Before starting

- Read the release notes and breaking-change lists for Flutter and for each major dependency
  version you take.
- Look up the limits of the target Flutter release in its
  `packages/flutter_tools/lib/src/android/gradle_utils.dart`: the newest known Gradle, the AGP and
  Gradle pairs, and the Java and Gradle table (`oneMajorVersionHigherJavaVersion` is the first Java
  it does not know).

### Flutter and Dart

1. Change every place in the Flutter row above.
2. Run `flutter pub get` and a first Android, iOS, and Windows build. Flutter's migrators may
   edit platform files on that build (Gradle flags, CMake rules, Xcode settings). Review those edits
   and commit them with the upgrade.
3. Compare the platform runners with a fresh `flutter create` project of the same version, made in
   a temporary directory, to catch template changes that no migrator applies.
4. Run `dart fix --dry-run` and `flutter analyze`. Apply API migrations in their own commits.
   Fix new lints, or adjust `analysis_options.yaml` deliberately, in a separate commit.

### Dart dependencies

1. Review `flutter pub outdated`, raise constraints, including majors you intend to take, and run
   `flutter pub upgrade`. Raise each floor to the resolved version.
2. Remove unused dependencies. Recheck whether each Git pin is still needed.
3. Rerun generators whose inputs or generator versions changed
   (`dart run build_runner build --delete-conflicting-outputs`).
4. Commit `pubspec.lock` and regenerated platform registrants with the change.
5. Expect native follow-ups from plugin majors: new Swift packages or a higher minimum iOS
   version, new Gradle plugin versions, or Android manifest changes.

### Android

1. Choose AGP, Gradle, and Kotlin within the target Flutter release's limits. Update them together
   with the Kotlin BOM and any `gradle.properties` flags that the new AGP or Flutter requires.
2. Raise compile SDK, Build Tools, and NDK when AGP or a plugin requires it, in both Gradle files.
   Raise `targetSdkVersion` to meet Google Play's target-API deadline, and check the behavior
   changes of that API level, including manifest attributes.
3. Choose the newest JDK that both the Flutter Java table and AGP accept.
4. Add any new SDK package or JDK to the CI image (next section).

### Android CI image

Android jobs run in `$CI_REGISTRY_IMAGE/flutter:<flutter>-api<api>-jdk<jdk>`. The `ci_image` job
builds it from `_build/docker/Dockerfile` and pushes it to the project registry only when the tag is
missing.

1. Edit the Dockerfile `ARG` defaults for Flutter, JDK, and Android SDK packages.
2. When refreshing system packages, update the base image digest
   (`docker buildx imagetools inspect ubuntu:<release>`) and `UBUNTU_SNAPSHOT` (a UTC timestamp,
   `YYYYMMDDTHHMMSSZ`) together. Moving to a new Ubuntu release also means checking package names.
3. Change the `CI_IMAGE` tag in the same commit as any change under `_build/docker`. Use the new
   versions, or a suffix such as `-r2` when the versions stay the same. An existing tag is never
   rebuilt, so a Dockerfile change under an old tag has no effect.
4. Build the image locally before pushing:
   `docker build -t local/flutter:test _build/docker`. The first pipeline with a new tag spends
   about 15–20 minutes building it.
5. Keep the registry cleanup policy matching the tag pattern, so that superseded images expire.

### iOS and the Mac host

The iOS project uses Swift Package Manager and has no Podfile. The Mac hosts the GitLab iOS runner
and the [`remote-mac`](../.claude/skills/remote-mac/SKILL.md) skill, which automates these steps.

1. After Flutter or plugin changes, build on the Mac so Xcode re-resolves Swift packages. Commit
   both `Package.resolved` files.
2. Update fastlane with `bundle update` in `ios/` and commit `Gemfile.lock`.
3. Raise `IPHONEOS_DEPLOYMENT_TARGET` when a plugin requires it.
4. After an Xcode or macOS update, accept the license and run Xcode's first-launch setup on the
   Mac before building (`sudo xcodebuild -license accept` and `sudo xcodebuild -runFirstLaunch`).
5. If the runner is ever regenerated, restore the signing team, bundle identifier, Firebase
   configuration, and entitlements, and keep `main`'s signing settings when merging.

### Windows and Linux

Apply template changes found in step 3 of [Flutter and Dart](#flutter-and-dart) to
`windows/CMakeLists.txt` and `linux/`. Check that the runtime DLLs in `windows/dll/` still match
what the build needs. Linux has no CI job, so build it locally after plugin changes.

### Starlink protocol

1. Replace the `_misc/*.proto` files with the new dump and run `bash _misc/protoc.sh` from the
   repository root.
2. Keep fields that the new dump reserves but older firmware still sends, and tag their uses as
   described in [Deprecated gRPC fields](development.md#deprecated-grpc-fields).
3. Extend `test/proto_schema_test.dart` and the debug-data fixtures for new fields.

### Validate

1. From `star.debug/`: `flutter test`, `flutter analyze`, and the CI debug APK build
   (see [Validation](development.md#validation)).
2. A release bundle in the CI image. Only release builds run Android lint, so a debug build can
   pass while the tag pipeline fails. From the root of a separate clone, so that build output and
   the throwaway key stay out of the working checkout:

   ```sh
   docker run --rm -v "$PWD:/builds/p" -w /builds/p/star.debug -e ANDROID_KEY_PASSWORD=pass123 \
     local/flutter:test bash -c '
       keytool -genkey -keystore android/release-key.jks -alias key -keyalg RSA -keysize 2048 \
         -validity 10000 -keypass pass123 -storepass pass123 -dname "cn=Test, c=UA" &&
       flutter build appbundle'
   ```

3. `flutter build ios --release --no-codesign` on the Mac, and a Windows build.
4. Push `base` and confirm that its pipeline passes, including `ci_image` when the tag is new.

## Pre-release routine

Release tags look like `1.2b84`; `ci-parse-tag.sh` turns them into build names and numbers
(`1.2.84a` and `84` on Android, `1.2.84i` on iOS, `1.2.84` on Windows).

1. **Merge.** Merge `base` into `main` with `git merge --no-ff base`. Keep `main`'s release-only
   files and signing settings. If `Package.resolved` conflicts, take the most recent Mac
   resolution.
2. **Check.** Run `flutter test` and `flutter analyze` on `main`.
3. **Release notes.** Add the new version at the top of `RELEASE_NOTES.md`, using the headings of
   earlier entries (`### New Features:`, `### Enhancements:`, `### Fixes:`). Build it from
   `git log --no-merges <previous tag>..main`, keep only user-visible changes, and skip empty
   headings.
4. **README.** Update the "as of version" line in `README.md` and the feature list.
5. **Reproducible build.** Add `_build/reproducible/<build name>.md`, starting from the previous
   one, and link it from `reproducible_builds.md`. It must name the release tag, the `NAME`,
   `NUM`, and `BUILD_OPTS` values, and the CI image. Readers may not have access to the project
   registry, so have them build the image from `_build/docker` at the release tag
   (`docker build -t star-debug-ci:<tag> _build/docker`) and run the build in it.
6. **Commit, push, tag.** Push `main`, then the tag. The tag pipeline publishes to the Play internal
   track when `ANDROID_JKS` is set, to TestFlight when `APPLE` is set, and builds the Windows
   archive when `DIAWI_TOKEN` is set.
7. **Watch the tag pipeline.** It is the first run of the release-only steps: signing, the release
   bundle with Android lint, and store uploads. If it fails before anything is published, fix the
   problem on `base`, merge again, and move the tag.

`RELEASE_NOTES.md` and `_build/reproducible/reproducible_builds.md` use CRLF line endings.
