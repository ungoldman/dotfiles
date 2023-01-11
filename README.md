# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

## Pre-Install

On MacOS, you'll need to install developer tools first.

```sh
xcode-select --install
```

## Install

1. Clone this repository to a nice safe place. I tend to keep all my work in `~/dev`.

    ```sh
    ~ $ git clone git@github.com:ungoldman/dotfiles.git
    ```

2. run the `./init.sh` script at the root of this repository. This will add the following to your `~/.bash_profile` (`DIR` resolves to the local `dotfiles` directory in the script):

    ```
    # include dotfiles
    export DOTFILES="${DIR}"
    [ -f \${DOTFILES}/.bash_profile ] && source \${DOTFILES}/.bash_profile
    ```

3. Start a new terminal session. If everything went well, your bash environment is ready to go.

### [homebrew](http://brew.sh)

Homebrew enables access to a lot of useful packages in a fairly easy to handle way (it's like `apt-get` for macOS). Install like so:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

To use the `Brewfile` in the root of this repo, you need [`homebrew-bundle`](https://github.com/Homebrew/homebrew-bundle).

```
brew tap Homebrew/bundle
cd $DOTFILES && brew bundle
```

### zsh

Install latest zsh with `brew install zsh`.

Currently using [starship](https://starship.rs/) via `brew install starship`.

Using [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) with [Nerd Font Symbols](https://starship.rs/presets/#nerd-font-symbols) starship preset for maximum icons and legibility.

zsh extensions (installed via brew):

- zsh-autosuggestions
- zsh-completions
- zsh-syntax-highlighting

### Languages

#### [node.js](http://nodejs.org)

Install latest [`nvm`](https://github.com/creationix/nvm) to manage node versions.

```
brew install nvm
```

Install latest LTS node:

```sh
nvm i --lts
```

### Databases

#### [postgres](http://www.postgresql.org/)

```
brew install postgres
```

```
To have launchd start postgresql at login:
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
Then to load postgresql now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
Or, if you don't want/need launchctl, you can just run:
  postgres -D /usr/local/var/postgres
```

#### [redis](http://redis.io/)

```
brew install redis
```

```
To have launchd start redis at login:
  ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
Then to load redis now:
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
Or, if you don't want/need launchctl, you can just run:
  redis-server /usr/local/etc/redis.conf
```

### Private env vars

The `.bash_profile` file at the root of this repo will attempt to source a `bash/.private` file (ignored by this repository's `.gitignore`) that's meant to include anything that shouldn't be checked into version control (secrets, device-specific commands & aliases, etc).

### More install scripts

You can run scripts in the `install` directory, but be advised they should only be run once and may have unwanted effects if you don't read through them first.

## License

[ISC](LICENSE.md)
