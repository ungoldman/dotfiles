# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

My current setup:

- laptop: early 2015 macbook pro 13"
- server: digital ocean ubuntu 14.04

## Install

1. Clone this repository, for example into `~/.dotfiles`.

```sh
~ $ git clone git@github.com:ungoldman/dotfiles.git ~/.dotfiles
```

2. Include following lines in `~/.bash_profile`, `~/.profile`, or `~/.bashrc` depending on your machine's setup. Make sure `$DOTFILES` matches the full path to the directory you cloned this repository into.

```sh
# include dotfiles
DOTFILES="${HOME}/.dotfiles"
[ -f ${DOTFILES}/.bash_profile ] && source ${DOTFILES}/.bash_profile
```

3. Start a new terminal session. If everything went well, bash environment is ready to go.

### Notes

#### Private environment variables

The `.bash_profile` file at the root of this repo will attempt to source a `bash/.private` file (ignored by this repository's `.gitignore`) that's meant to include anything you don't want to check into version control.

#### More scripts

You can run scripts in the `install` directory after this point, but be advised they should only be run once and may have adverse consequences if you don't read through them first.

## Extras

### [homebrew](http://brew.sh)

Homebrew enables access to a lot of useful packages in a fairly easy to handle way (it's like `apt-get` for macOS). Install like so:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Note that Homebrew can sometimes be problematic as it puts a lot of files in `/usr/local`.

### macOS prefs

Run `./install/mac.sh` (at your own risk) for the most leet macOS settings.

### [node.js](http://nodejs.org)

For cleaner installs and multiple node versions, use [`nvm`](https://github.com/creationix/nvm). Be sure to use the latest version:

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
```

Then install node:

```
nvm i lts
```

After installing node, upgrade to latest `npm`:

```
npm i -g npm
```

Keep node modules out of `/usr/local`.

```
npm set prefix ~/.local/share/npm
```

### [ruby](https://www.ruby-lang.org)

#### mac

Ruby installation can be messy. These are the least complicated methods for dealing with installing and managing versions that I've found.

- [ruby-install](https://github.com/postmodern/ruby-install) for installing rubies
  - `brew install ruby-install`
- [chruby](https://github.com/postmodern/chruby) for changing the ruby version
  - `brew install chruby`
  - note: `bash/.langs` includes a line to load chruby if it's present
- [to install the latest ruby](https://github.com/postmodern/ruby-install#synopsis)
  - `ruby-install ruby`
- you'll probably need [bundler](http://gembundler.com)
  - `gem install bundler`

### [go](https://golang.org)

#### mac

```
brew install go
```

`bash/.langs` defaults to setting `GOPATH` to `~/dev/go`.

### [postgres](http://www.postgresql.org/)

#### mac

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

### [redis](http://redis.io/)

#### mac

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

### [htop](http://hisham.hm/htop/)

Like `top` but much better.

Install with `sudo apt-get htop` or `brew install htop`. Run with `sudo` for better info.

### [slap](https://github.com/slap-editor/slap)

Terminal text editor with full mouse support and sublime-like qualities. Sometimes buggy but much easier than dealing with vim or nano.

```
npm i -g slap
```

### macOS Apps

- [Chrome](https://www.google.com/chrome/) - still the best browser app
- [iTerm](https://www.iterm2.com/downloads.html) - best terminal app
- [Atom](https://atom.io) - slower than [Sublime Text 3](https://www.sublimetext.com/3) but better package ecosystem
