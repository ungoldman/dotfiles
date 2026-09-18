<div align='center'>

# ungoldman/dotfiles

![hackerman](./hackerman.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

</div>

## Fresh Install (macOS)

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
cd ~/dotfiles && brew bundle
```

Symlink dotfiles into place (skips existing files, `--force` backs them up)

```sh
cd ~/dotfiles && ./link.sh
```

Add this line to `~/.zshrc`

```sh
source ~/dotfiles/init.sh
```

Set your git identity (untracked, pulled in via `[include]`)

```sh
git config --file ~/.gitconfig.local user.name "Your Name"
git config --file ~/.gitconfig.local user.email "you@example.com"
```

Apply the manual steps in [`manual/`](manual/) (iTerm profile, ..).

> [!NOTE]
> Currently configured for `zsh` only. Will not work with other shells.

## Fresh Install (Ubuntu/WSL)

See [`provisioning-ubuntu-wsl.md`](provisioning-ubuntu-wsl.md). Same `link.sh`
and `init.sh` as macOS. `Brewfile` also works via linuxbrew, macOS-only
formulae and casks are skipped automatically.

## Tools

### zsh

Using [zsh](https://www.zsh.org) (use latest: `brew install zsh`) for shell.

Using [starship](https://starship.rs) (`brew install starship`) for prompt.

Using [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) with [Nerd Font Symbols](https://starship.rs/presets/#nerd-font-symbols) starship preset for better iconography and legibility.

Zsh completion extensions (via brew):

- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
- [`zsh-completions`](https://github.com/zsh-users/zsh-completions)
- [`zsh-history-substring-search`](https://github.com/zsh-users/zsh-history-substring-search)
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting)

## Config

### private: `/sh/private.sh` or `/sh/_*.sh`

The `init.sh` file at the root of this repo will attempt to source any `.sh` file in the `sh` directory. Git will ignore `sh/private.sh`, as well as any `.sh` file prefixed with `_`. Use this to include anything that shouldn't be checked into version control (secrets, device-specific commands & aliases, etc).

### `/home`

Mirror of `$HOME`. `link.sh` symlinks every file here to the same path under
`$HOME` (`home/.config/starship.toml` -> `~/.config/starship.toml`). Add a file
at its real relative path and it gets linked on the next run. Machine-local git
identity lives in `~/.gitconfig.local` (untracked, pulled in via `[include]`).

### `/manual`

Config that can't be symlinked and needs a one-time manual step. See
`manual/README.md`.

### `/remote`

Bash config and miscellaneous goodies for working with remote servers, VPS instances, etc.

## License

[ISC](LICENSE.md)
