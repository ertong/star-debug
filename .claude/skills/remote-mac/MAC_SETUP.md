# Preparing a Mac for remote-mac

The skill needs SSH access to a Mac that can build the iOS app from a login shell. The same setup
serves the GitLab iOS runner (`_build/ci_ios.yaml`).

## On the Mac

1. **SSH:** turn on *System Settings → General → Sharing → Remote Login*. Add the public key from
   your ssh-agent to `~/.ssh/authorized_keys` of the build account.
2. **Xcode:** install it from the App Store or developer.apple.com, then run:

   ```sh
   sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
   sudo xcodebuild -license accept
   sudo xcodebuild -runFirstLaunch
   ```

   Repeat the last two after every Xcode update. Until then `/usr/bin/git` and builds fail.
3. **Homebrew:** install it, and load it for login shells in `~/.zprofile`:

   ```sh
   eval "$(/opt/homebrew/bin/brew shellenv)"
   ```

4. **asdf** for Flutter and Ruby: run `brew install asdf`, then load it in `~/.zshrc`. For asdf
   0.14, add `. /opt/homebrew/opt/asdf/libexec/asdf.sh`. Newer asdf versions instead need
   `~/.asdf/shims` on `PATH`. Then add the plugins and a Ruby for fastlane:

   ```sh
   asdf plugin add flutter
   asdf plugin add ruby
   asdf install ruby 3.3.6 && asdf global ruby 3.3.6   # global writes ~/.tool-versions
   gem install bundler -v 2.5.23                       # matches ios/Gemfile.lock
   ```

   The skill's `setup` command installs the Flutter version from `star.debug/.tool-versions`.
5. **match repository:** the build account's SSH key must be able to read the match repository,
   `MATCH_GIT_URL` in `ios/.env.default`. Write access is needed only for regenerating
   certificates or profiles. Connect once to accept the host key.
6. **Disk:** keep at least 20 GB free. Old Flutter versions (`asdf uninstall flutter <version>`)
   and `~/Library/Developer/Xcode/DerivedData` are the usual space to reclaim.

CocoaPods is not needed: the iOS project uses Swift Package Manager.

## On this machine

1. Copy `config.env.example` to `config.env` and set `REMOTE_HOST` and `REMOTE_USER`.
2. Load the key into ssh-agent, then connect once with `ssh <user>@<host>` to accept the host key.
3. Run `bash .claude/skills/remote-mac/scripts/remote-mac.sh check`, then `setup`.
4. For fastlane, get `star.debug/ios/.env.default` and run `env push`. The file comes from the user,
   or from an existing checkout on the Mac through `env pull <path>`. See
   [DEPLOYMENT.md](DEPLOYMENT.md).
