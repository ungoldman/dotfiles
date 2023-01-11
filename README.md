# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

## Pre-Install

On MacOS, you'll need to install developer tools first.

```
xcode-select --install
```

## Install

**Note:** designed for use with `zsh` (not bash).

1. Clone this repository to a nice safe place. I tend to keep all my work in `~/dev`.

    ```
    ~ $ git clone git@github.com:ungoldman/dotfiles.git
    ```

2. Run the `./install.sh` script at the root of this repository. This will add the following to your `~/.zshrc` (`DIR` resolves to the local `dotfiles` directory in the script):

    ```
    # init dotfiles
    export DOTFILES="${DIR}"
    [ -f \${DOTFILES}/.init ] && source \${DOTFILES}/.init
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

### Private env vars

The `init.sh` file at the root of this repo will attempt to source a `sh/.private.sh` file (ignored by this repository's `.gitignore`) that's meant to include anything that shouldn't be checked into version control (secrets, device-specific commands & aliases, etc).

### More install scripts

There are some extra scripts in the `install` directory, but be advised most should only ever be run once, may have unwanted effects, and are probably very, very out of date.

## License

[ISC](LICENSE.md)
