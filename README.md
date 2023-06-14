<a href='https://play.google.com/store/apps/details?id=com.stardebug'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png' height='80px'/></a>

## Star Debug

Star Debug is an alternative tool to manage your Starlink devices.

Currently, it supports:
- Decode and view DebugData json copied (or saved to file) from the official Starlink app or web panel.
- Initiate basic operations with the dish: Reboot/Stow/Unstow/GPSon/off and with the router: reboot and basic wifi setup (if applicable).
- View telemetry available in DebugData, but updated from Starlink online: statuses, alerts, basic stats, current configurations, etc.
- Create and share DebugData-compatible json data.
- Check the internet connection in place within the app.

More projects on Starlink monitoring:
- Python UI to view Debug Data: https://github.com/olegkutkov/Space-Debugger
- Prometheus exporter for Starlink data: 
  - https://github.com/ewilken/starlink-exporter
  - https://github.com/danopstech/starlink_exporter
- More Starlink GRPC tools:
  - https://github.com/ewilken/starlink-rs
  - https://github.com/sparky8512/starlink-grpc-tools


### Reproducible builds

The build process appears to be very fragile. To receive the same binary, it is required:
- Precisely reproduce versions of Flutter SDK and related tools (Android SDK for Android, XCode for iOS, etc.)
- Use exactly the same paths: source, libs, etc.
- There are possible issues with concurrent builds (but it looks like it is a rare issue nowadays).

Moreover, files generated by a build process are often not the same files your phone downloads from the market.

In the Android world, for example, you build an AppBundle file, from which Google Play generates a bunch of APKs
for different hardware, screen sizes, languages, etc. 
As a result, under the hood, you download a set of APKs selected for your particular device. 

In the iOS world, Apple encrypts the code of the app directly for your device, and it is not possible 
to get original binaries without jailbreaking your phone. 

As a result, we cannot guarantee that everyone can successfully reproduce and verify published builds.

For those who are brave enough to try, the best-effort instructions are [here](_build/reproducible/reproducible_builds.md).

For those who care about and failed to verify a particular build, 
you can always build the app for yourself from the source code from this repository. 
The steps described in [the instructions](_build/reproducible/reproducible_builds.md) mentioned above, 
will help you to build your own binary. 

### About Narodnyi Starlink

This application was created as part of the volunteer initiative "Narodnyi Starlink" for the needs of people who care about the availability of communications
even in the places where the russia tries to turn cities into ashes.
