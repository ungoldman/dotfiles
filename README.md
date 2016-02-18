# ngoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

My current setup:

- laptop: early 2011 macbook pro 13"
- server: digital ocean ubuntu 14.04
- editor: [sublime text 3](https://www.sublimetext.com/3) (local), [slap](https://github.com/slap-editor/slap) (remote)

## install

First, clone this repository, for example into `~/.dotfiles`.

```sh
~ $ git clone git@github.com:ngoldman/dotfiles.git ~/.dotfiles
```

Next you'll need to include following lines in `~/.bash_profile`, `~/.profile`, or `~/.bashrc` depending on your machine's setup. Make sure `$DOTFILES` matches the full path to the directory you cloned this repository into.

```sh
# include dotfiles
DOTFILES="${HOME}/.dotfiles"
[ -f ${DOTFILES}/.bash_profile ] && source ${DOTFILES}/.bash_profile
```

Note: `.bash_profile` also tries to source a `bash/.private` file (ignored by this repository's `.gitignore`) that's meant to include anything you don't want to check into version control.

You can run scripts in the `install` directory after this point, but be advised they should only be run once and may have adverse consequences if you don't read through them first.

## extra things I often need to install

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

Ruby installation can be messy. These are the least complicated methods for dealing with installing and managing versions that I've found.

- [ruby-install](https://github.com/postmodern/ruby-install)
  - `brew install ruby-install`
- [chruby](https://github.com/postmodern/chruby)
  - `brew install chruby`
- latest ruby
  - `ruby-install ruby` ([ref](https://github.com/postmodern/ruby-install#synopsis))
  - note: `bash/.langs` includes a line to load chruby and automatically switch to ruby-2.x (`chruby ruby-2`)
- [bundler](http://gembundler.com)
  - `gem install bundler`

### [homebrew](http://brew.sh)

Homebrew can be problematic (taking over a lot of `/usr/local`) but it gives me access to a lot of packages I need to work with in a fairly easy to handle way. Install like so:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## osx prefs

### show hidden files in Finder

```
$ defaults write com.apple.Finder AppleShowAllFiles YES
$ killall Finder
```

### transparent dock icons for hidden applications

```
$ defaults write com.apple.Dock showhidden -bool YES
$ killall Dock
```

### symlink `subl` to sublime text

`~/bin` is added to $PATH in `bash/.exports`.

```
$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

### use tabs in modal dialogs

```
$ defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
```

## handy terminal programs

### [htop](http://hisham.hm/htop/)

Like `top` but much better.

Install with `sudo apt-get htop` or `brew install htop`. Run with `sudo` for better info.

### [slap](https://github.com/slap-editor/slap)

Terminal text editor with full mouse support and sublime-like qualities. Sometimes buggy but much easier than dealing with vim or nano.

```
npm i -g slap
```

## nice-to-have osx apps

- [iTerm](https://www.iterm2.com/downloads.html)
- [Sublime Text 3](https://www.sublimetext.com/3)
  - [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
- [ShadowKiller](http://unsanity.com/haxies/shadowkiller/)
