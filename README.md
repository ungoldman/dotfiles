<div align='center'>

# ungoldman/dotfiles

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

</div>

## Fresh Install (MacOS)

Install Xcode Command-Line Tools

```sh
xcode-select --install
```

Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Clone repo

```sh
git clone git@github.com:ungoldman/dotfiles.git
```

Install packages in Brewfile

```sh
~/dotfiles $ brew bundle
```

Source `init.sh` in your shell profile (currently configured for `zsh`, won't work great with other shells).

```sh
$ source ~/dotfiles/init.sh
```

## Tools

### [homebrew](http://brew.sh)

Homebrew enables access to a lot of useful packages in a fairly easy to handle way (it's like `apt-get` for macOS).

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Brewfile

To use the `Brewfile` in the root of this repo, you need [`homebrew-bundle`](https://github.com/Homebrew/homebrew-bundle).

```sh
brew tap Homebrew/bundle
cd $DOTFILES && brew bundle
```

### zsh

Using `zsh` (use latest: `brew install zsh`).

Using [starship](https://starship.rs/) (`brew install starship`).

Using [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) with [Nerd Font Symbols](https://starship.rs/presets/#nerd-font-symbols) starship preset for maximum icons and legibility.

Completion extensions (via brew):

- `zsh-autosuggestions`
- `zsh-completions`
- `zsh-history-substring-search`
- `zsh-syntax-highlighting`

## Config

### private stuff - `/sh/private.sh` or `/sh/_*.sh`

The `init.sh` file at the root of this repo will attempt to source any `.sh` file in the `sh` directory. Git will ignore `sh/private.sh`, as well as any `.sh` file prefixed with `_`. Use this to include anything that shouldn't be checked into version control (secrets, device-specific commands & aliases, etc).

### `/homefiles`

A collection of files for your home directory (like `.gitconfig`, `.inputrc`, ..).

### `/prefs`

Misc preference files for apps & programs.

### `/remote`

Bash config and miscellaneous goodies for working with remote servers, VPS instances, etc.

## License

[ISC](LICENSE.md)
