# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

My current setup:

- laptop: early 2011 macbook pro 13"
- server: digital ocean ubuntu 14.04
- editor: [atom](https://atom.io/)

## Install

First, clone this repository, for example into `~/.dotfiles`.

```sh
~ $ git clone git@github.com:ungoldman/dotfiles.git ~/.dotfiles
```

Next you'll need to include following lines in `~/.bash_profile`, `~/.profile`, or `~/.bashrc` depending on your machine's setup. Make sure `$DOTFILES` matches the full path to the directory you cloned this repository into.

```sh
# include dotfiles
DOTFILES="${HOME}/.dotfiles"
[ -f ${DOTFILES}/.bash_profile ] && source ${DOTFILES}/.bash_profile
```

Note: `.bash_profile` also tries to source a `bash/.private` file (ignored by this repository's `.gitignore`) that's meant to include anything you don't want to check into version control.

You can run scripts in the `install` directory after this point, but be advised they should only be run once and may have adverse consequences if you don't read through them first.

## Extras

### [homebrew](http://brew.sh)

Homebrew can be problematic (taking over a lot of `/usr/local`) but it gives me access to a lot of packages I need to work with in a fairly easy to handle way. Install like so:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### osx prefs

Run `./install/osx.sh` (at your own risk) for the most leet OS X settings.

### [node.js](http://nodejs.org)

For cleaner installs and multiple node versions, use [`nvm`](https://github.com/creationix/nvm). Be sure to use the latest version.

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
```

After installing node, upgrade to latest `npm`:

```
npm i -g npm
```

Keep node modules out of `/usr/local`.

```
npm set prefix ~/.local/share/npm
```

If you don't want to use `nvm`...

#### mac

Easiest is `brew install node` or the [installer](https://nodejs.org/en/download/).

#### ubuntu

For 4.x:

```
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
```

For 5.x:

```
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
```

See https://github.com/nodesource/distributions#debinstall for more info on the above method (not easy to find).

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

### OSX Apps

- [iTerm](https://www.iterm2.com/downloads.html)
- [Atom](https://atom.io/)
  - [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
  - [Git Gutter](https://github.com/jisaacks/GitGutter)
  - [Themr](https://github.com/benweier/Themr)
  - [Schemr](https://github.com/benweier/Schemr)
- [ShadowKiller](http://unsanity.com/haxies/shadowkiller/)
