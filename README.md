# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

## Install

Developer tools must be installed first (macos only).

```
xcode-select --install
```

Clone repo somewhere smart.

```sh
git clone git@github.com:ungoldman/dotfiles.git
```

Source `init.sh` in your shell profile (`.bashrc`, `.zshrc`, etc.).

```sh
source ~/dotfiles/init.sh
```

Reload terminal. 🚀

## Tools

### [homebrew](http://brew.sh)

Homebrew enables access to a lot of useful packages in a fairly easy to handle way (it's like `apt-get` for macOS).

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Brewfile

To use the `Brewfile` in the root of this repo, you need [`homebrew-bundle`](https://github.com/Homebrew/homebrew-bundle).

```
brew tap Homebrew/bundle
cd $DOTFILES && brew bundle
```

### zsh

Using `zsh` (use latest: `brew install zsh`).

Using [starship](https://starship.rs/) (`brew install starship`).

Using [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) with [Nerd Font Symbols](https://starship.rs/presets/#nerd-font-symbols) starship preset for maximum icons and legibility.

Completion extensions (via brew):

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

```
nvm i --lts
```

**Note:** I used to work more with ruby, python, and go, but it's been so long the relevant sections here were outdated, so I removed them.

### Databases

#### [postgres](http://www.postgresql.org/)

```
brew install postgres
```

#### [redis](http://redis.io/)

```
brew install redis
```

## Config

### Private env vars

The `init.sh` file at the root of this repo will attempt to source a `sh/.private.sh` file (ignored via `.gitignore`) that's meant to include anything that shouldn't be checked into version control (secrets, device-specific commands & aliases, etc).

### More install scripts

There are some extra scripts in the `install` directory, but be advised most should only ever be run once, may have unwanted effects, and are probably very, very out of date.

## License

[ISC](LICENSE.md)
