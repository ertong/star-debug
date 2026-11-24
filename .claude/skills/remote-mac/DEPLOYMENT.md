# iOS signing and deployment issues

Use this page when a signed iOS build, a TestFlight upload, or the `publish_testflight` CI job
fails because of certificates, profiles, Apple accounts, or the Mac's keychain. Plain
`flutter build ios --no-codesign` problems are build issues, not deployment issues.

## How signing is set up

- Fastlane lives in `star.debug/ios` and is pinned by `Gemfile.lock`. Its lanes are:
  - `beta`: `match appstore --readonly`, then a signed build to `ios/build/$APP_BASENAME.ipa`.
  - `do_testflight`: `match appstore --readonly`, then an upload that uses an app-specific password.
  - `do_adhoc_reg`: registers `adhoc-devices.txt` and regenerates the ad hoc profile.
  - `do_adhoc`: a signed ad hoc build.
  - `clean`: clears derived data.
- **match** keeps the certificate and profiles encrypted in the Git repository `MATCH_GIT_URL`, on
  branch `MATCH_GIT_BRANCH`. `MATCH_PASSWORD` decrypts them. The team is `6Y724VCZZG` and the bundle
  is `com.stardebug`, both from `fastlane/Appfile`.
- The Fastfile creates and unlocks the keychain `MATCH_KEYCHAIN_NAME` every time it loads, for every
  lane. match installs into that keychain too, because `MATCH_KEYCHAIN_NAME` and
  `MATCH_KEYCHAIN_PASSWORD` are match's own option variables.
  - On the Mac it is `~/Library/Keychains/stardebug.keychain-db`.
  - CI creates a keychain per job, `stardebug.<job id>.keychain`, and deletes it in
    `after_script`.
- `--readonly` match never logs in to Apple. Lanes without it, and `register_devices`, log in with
  `APPLE_ID` and need a password and 2FA, or a session from [spaceauth](#refreshing-the-apple-session-for-ci-spaceauth).
- The Mac also holds App Store profiles for other apps of the same team. The distribution
  certificate is shared, so certificate changes affect those apps too.

## Secrets

**Locally.** `star.debug/ios/.env.default` is git-ignored. Fastlane loads it automatically when it
runs in `ios/`.

| Variable | Purpose |
|---|---|
| `MATCH_GIT_URL`, `MATCH_GIT_BRANCH` | match repository and branch; the Mac's SSH key must be able to read it (and write, for non-readonly runs) |
| `MATCH_PASSWORD` | Decrypts the match repository |
| `MATCH_KEYCHAIN_NAME`, `MATCH_KEYCHAIN_PASSWORD` | Keychain that the Fastfile creates and unlocks |
| `APPLE_ID` | Apple account for portal logins and spaceauth |
| `FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD` | Upload password for `do_testflight` |

The file does not hold the two values that `do_testflight` also needs:

- `APP_BASENAME`, which is `stardebug` and comes from `.gitlab-ci.yml`.
- `APP_APPLE_ID`, the app's numeric Apple ID in App Store Connect.

Add both to the file before uploading from the Mac.

The skill's `push` never copies the file, because it is ignored. Copy it separately:

```sh
S=.claude/skills/remote-mac/scripts/remote-mac.sh
bash $S env pull '~/<path>/ios/.env.default'  # fetch from elsewhere on the Mac; ask the user for the path
bash $S env push    # copy the local file into the remote copy
bash $S env check   # list variable names here and on the Mac, and whether the copies match
```

`env pull` refuses to overwrite a local file that differs; ask the user which copy is right.
`push --discard` keeps the remote file, because `git clean` there skips ignored files.

**On CI.** The GitLab project variable `APPLE` holds `KEY=VALUE` lines. `.ios_job` exports them
with `export $(echo "$APPLE" | xargs)`, so values in `APPLE` must not contain spaces or quotes.
`publish_testflight` runs only for tags like `1.2b3`, and only when `APPLE` is set.

Never print, paste, or commit secret values. When you need to know what is set, use `env check`.
It shows names only.

## Diagnose first (read-only)

All of these run on the Mac and change nothing:

```sh
S=.claude/skills/remote-mac/scripts/remote-mac.sh
K='~/Library/Keychains/stardebug.keychain-db'
# Signing identities in the fastlane keychain
NO_PUSH=1 bash $S run "security find-identity -v -p codesigning $K"
# Distribution certificate expiry
NO_PUSH=1 bash $S run "security find-certificate -a -c 'Apple Distribution' -p $K | openssl x509 -noout -subject -enddate"
# Installed provisioning profiles: name and expiry
NO_PUSH=1 bash $S run 'for f in ~/Library/MobileDevice/Provisioning\ Profiles/*; do
  p=$(security cms -D -i "$f" 2>/dev/null); echo "$(plutil -extract ExpirationDate raw -o - - <<<"$p")  $(plutil -extract Name raw -o - - <<<"$p")"; done'
# Can the Mac read the match repository?
NO_PUSH=1 bash $S run 'set -a; . ios/.env.default; set +a; git ls-remote "$MATCH_GIT_URL" "$MATCH_GIT_BRANCH"'
# Install what the match repository currently holds (no Apple login, no portal changes)
bash $S fastlane match appstore --readonly
```

After the read-only match, list the profiles again. If the profile is still expired, the match
repository itself needs a new one.

## Fixes by symptom

Any step that logs in to Apple, changes the developer portal, writes to the match repository,
uploads a build, or deletes keychain items needs the user's approval first. Logins also need the
user at a terminal for the password and 2FA code. They can run the step there with
`bash $S shell`, or after `spaceauth` the Mac reuses the stored session.

- **The profile expired, or "No profiles for 'com.stardebug' were found".**
  1. Run the read-only match above.
  2. If the repository's profile is also expired, regenerate it with
     `bash $S fastlane match appstore`, without `--readonly`. This logs in, creates a new profile
     on the portal, and pushes it to the match repository.
  3. CI picks the new profile up on its next run.
- **The certificate expired or was revoked.** match without `--readonly` then stops and reports
  that the stored certificate is not on the portal.
  - The targeted fix:
    1. Revoke only that certificate on developer.apple.com.
    2. Remove its files from the match repository: `certs/distribution/<id>.*` and the profiles
       that use it.
    3. Run `fastlane match appstore` without `--readonly`.
  - `fastlane match nuke distribution` also fixes it. However, it revokes **every** distribution
    certificate of the team and deletes their profiles, which breaks signing for the team's other
    apps until each one runs match again. Use it only if the user asks for it explicitly.
  - Every app that shares the certificate needs its own match run afterwards.
- **A new device for ad hoc builds.**
  1. Add a tab-separated line to `ios/adhoc-devices.txt` locally.
  2. `push`.
  3. Run `bash $S fastlane do_adhoc_reg`, which logs in, registers the device, and regenerates the
     ad hoc profile.
  4. Commit the device list only when the user asks.
- **The keychain is locked, codesign hangs, or you see `User interaction is not allowed` or
  `errSecInternalComponent`.** The keychain is locked, or codesign was not allowed to use the key.
  - Run any lane, such as `fastlane lanes`; it unlocks the keychain.
  - If unlocking fails with a wrong passphrase, the keychain was created with another
    `MATCH_KEYCHAIN_PASSWORD`. With approval, run
    `security delete-keychain ~/Library/Keychains/stardebug.keychain-db`, then re-run the
    read-only match, which recreates the keychain and installs the identity again.
  - Delete leftover per-job keychains `stardebug.<job id>.keychain-db` from killed CI jobs the
    same way.
- **`unable to build chain to self-signed root`, or a missing WWDR intermediate.** Recent match
  installs Apple's intermediate certificates itself. Otherwise, download `AppleWWDRCAG3.cer` from
  https://www.apple.com/certificateauthority/ on the Mac and import it into the keychain with
  `security import`.
- **The upload fails with "Invalid username and password combination" or a 401.**
  1. The app-specific password was revoked. Changing the Apple ID password revokes all of them.
  2. The user creates a new one at account.apple.com, under *Sign-In and Security → App-Specific
     Passwords*.
  3. Update `FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD` in the local `.env.default`, then run
     `env push`, and update the `APPLE` variable in GitLab.
- **"A required agreement is missing or has expired".** The Account Holder accepts the new terms in
  App Store Connect or on the developer account page. Nothing in the repository changes.
- **"The bundle version must be higher than the previously uploaded version".** Raise the build
  number in `star.debug/pubspec.yaml` (`version: x.y.z+N`), or pass `--build-number` through
  `BUILD_OPTS`.
- **App Store Connect rejects the SDK or Xcode version.** The user updates Xcode on the Mac, then
  runs `sudo xcodebuild -license accept && sudo xcodebuild -runFirstLaunch`. Check with `check`.
- **CI asks for a 2FA code, or says "Your session has expired" or "Need to acknowledge".** The job
  logs in to Apple without a valid session. See the next section.

## Refreshing the Apple session for CI (spaceauth)

The CI lanes as written avoid Apple logins: match is read-only, and the upload uses an
app-specific password with `apple_id` and `skip_waiting_for_build_processing`. CI needs a session
once a job logs in to Apple, through:

- a non-readonly match,
- `register_devices`,
- a fastlane change that makes `pilot` log in.

Apple decides how long a session lasts, usually up to about a month. Refresh it when CI asks again.

1. **The user** runs this in their own terminal, not through Claude: it prompts for the Apple ID
   password and a 2FA code.

   ```sh
   bash .claude/skills/remote-mac/scripts/remote-mac.sh spaceauth
   ```

   It pushes, loads `ios/.env.default` on the Mac, and runs
   `bundle exec fastlane spaceauth -u "$APPLE_ID"` there with a terminal attached.
2. Enter the password, choose a trusted device or SMS, and enter the code. Answer `n` when asked to
   copy to the clipboard, because that clipboard is the Mac's.
3. Copy the single line printed after "Pass the following via the FASTLANE_SESSION environment
   variable". It starts with `---\n- !ruby/object:HTTP::Cookie`.
4. In GitLab, open the project's *Settings → CI/CD → Variables*, then add or update
   `FASTLANE_SESSION`:
   - *Type*: Variable.
   - *Visibility*: Visible. It cannot be masked, because it contains spaces.
   - *Expand variable reference*: off.
   - *Protect variable*: the same as `APPLE`, so tag pipelines receive it.

   Do not put it inside `APPLE`. The `xargs` export in `.ios_job` splits on spaces and would break
   it. A separate variable reaches the job environment as is, and fastlane reads
   `FASTLANE_SESSION` on its own.
5. Re-run the failed job. It should get past the login without a 2FA prompt.

spaceauth also stores the cookie on the Mac under `~/.fastlane/spaceship/`, so lanes started there
with the skill's `fastlane` command reuse it until it expires.

The session grants App Store Connect access for that account. Never paste it into the
conversation, a commit, or a repository file. The durable alternative is an App Store Connect API
key with fastlane's `app_store_connect_api_key`, which needs no 2FA or session refresh. Adopting it
means changing the Fastfile and the CI variables; suggest it, but do not do it unasked.
