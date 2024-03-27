

### Reproducible builds for Android

Build tools for mobile development continuously evolve, so every new release probably will be built with 
newer versions of SDKs and libraries.

We will try to maintain build configurations for major releases [here](#build-instructions-for-major-versions)

### How to get APK from your Android and verify it

- Ensure you have Android SDK platform tools installed: [platform tools](https://developer.android.com/tools/releases/platform-tools#downloads)
  or [full Android Studio](https://developer.android.com/studio)
- Install the application from Google Play.
- Connect your phone to a computer with developer mode enabled, USB debugging on, and granted permission for ADB on your PC.
- Run `adb shell pm path com.stardebug`. You will receive a list of APKs for this app.
- Download every APK with a command like `adb pull /data/app/com.stardebug-Dzz0Cv7w3bRb1b-S5ektDw==/base.apk`.
- Get the version name of a downloaded APK: `adb shell dumpsys package com.stardebug | grep versionName`.
- Proceed with build steps for a particular version using instructions [here](#build-instructions-for-major-versions).
- At this point, you have a set of APKs from your device and a self-built APK.
- APK file is just a zip archive. Unzip files from all APKs.
- Now you can compare file-to-file changes between published binaries and self-built ones.
- It is OK to have differences in files with signatures and metadata. The main code lays in *.dex and *.so files.
  If they are identical in different APKs, you can conclude, that build is OK.

### Build instructions for major versions
- [1.0.22](1.0.22a.md)
- [1.1.43](1.1.43a.md)
- [1.1.48](1.1.48a.md)
- [1.1.60](1.1.60a.md)
- [1.1.65](1.1.65a.md)