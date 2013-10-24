# dotfiles

Some basic config for a mac dev. Relies heavily on [homebrew](https://github.com/mxcl/homebrew).

Designed to be cloned into `~/.dotfiles`, as in

```sh
$ git clone git@github.com:ngoldman/dotfiles.git ~/.dotfiles
```

then included with the following line in your `.bash_profile`:

```sh
[ -f ~/.dotfiles/.bash_profile ] && source ~/.dotfiles/.bash_profile
```

`.bash_profile` also tries to source a `.gitignore`'d `bash/.vars` file that's meant to include your environmental variables.

## Dev Environment Install List

### Global

* [homebrew](https://github.com/mxcl/homebrew/wiki/installation)
  * `ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`
* latest [git](http://git-scm.com)
  * `brew install git`
* [tig](http://jonas.nitro.dk/tig)
  * `brew install tig`

### Command Line Tools (GCC)

This is an ongoing issue with Apple. They seem to enjoy changing how these tools are installed at every major OS update. It is a huge pain the ass.

Update: Apparently with Mavericks / Xcode 5.1, Command Line Tools are no longer available via Xcode and must either be installed via the Apple Developers Tools site, **OR** by running `xcode-select --install` in your terminal. More info [here](http://stackoverflow.com/questions/9329243/xcode-4-4-command-line-tools).

* ~~proprietary solution: Download Xcode, install "Command Line Tools" from Preferences -> Downloads -> Components. Takes a long time.~~ (deprecated)
* :-1: proprietary solution: Go to Apple's developer site, search for "Command Line Tools" and download that. Requires registering as an apple developer.
* :+1: non-apple solution: `brew tap homebrew/dupes`, then `brew install apple-gcc42`. Very quick, no registration. [Freedom](http://cdn.memegenerator.net/instances/400x/35280005.jpg)!

From kennethreitz's [osx-gcc-installer](https://github.com/kennethreitz/osx-gcc-installer) readme:

> For Lion and Mountain Lion users, Apple now provides an official Command Line Tools for Xcode package that you can install without needing to install Xcode itself! You can download it from Apple's developer site (free registration required) and search for "Command Line Tools".
>
> If you still need gcc-4.2, and you use Homebrew, you can install it using the apple-gcc42 package from homebrew/dupes.

### Node.js

* [node](http://nodejs.org)
  * `brew install node`

### Ruby

* [ruby-install](https://github.com/postmodern/ruby-install)
  * `brew install ruby-install`
* [chruby](https://github.com/postmodern/chruby)
  * `brew install chruby`
* latest ruby
  * `ruby-install ruby` ([ref](https://github.com/postmodern/ruby-install#synopsis))
  * note: `bash/.langs` includes a line to load chruby and automatically switch to ruby-2.x (`chruby ruby-2`)
* [bundler](http://gembundler.com)
  * `gem install bundler`

### Python

* python
  * `brew install python`

### Databases

* postgresql
  * [Installing on Mountain Lion](https://coderwall.com/p/1mni7w)
* redis
  * `brew install redis`
* mysql
  * [Install and configure Apache, MySQL, PHP and phpMyAdmin on OSX 10.8 Mountain Lion](http://coolestguyplanettech.com/downtown/install-and-configure-apache-mysql-php-and-phpmyadmin-osx-108-mountain-lion)

### Utilities

* [rmtrash](http://www.nightproductions.net/cli.htm) if you're afraid of `rm`


## Mac OS X Prefs

* Show hidden files in Finder

```
$ defaults write com.apple.Finder AppleShowAllFiles YES
$ killall Finder
```

* Transparent dock icons for hidden applications

```
$ defaults write com.apple.Dock showhidden -bool YES
$ killall Dock
```

* SublimeText2 command line tool (make sure `~/bin` exists and is in your `PATH` first)

```
$ ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

* use tabs in modal dialogs

```
$ defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
```

## Fave OS X Apps

* [iTerm 2](http://www.iterm2.com/)
* [Sublime Text 2](http://www.sublimetext.com/2)
  * [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
    * [Emmet](https://github.com/sergeche/emmet-sublime)
    * [GitGutter](https://github.com/jisaacks/GitGutter)
    * [SublimeLinter](https://github.com/SublimeLinter/SublimeLinter)
* [Chrome Canary](https://tools.google.com/dlpage/chromesxs/)
* [Firefox Nightly](http://nightly.mozilla.org/)
  * [Firebug](http://getfirebug.com/)
* [LimeChat](http://limechat.net/mac/)
* [Adium](http://adium.im/)
* [ShadowKiller](http://unsanity.com/haxies/shadowkiller/)

## Tips

* Run `brew doctor`, `brew update`, and `brew upgrade` frequently

## Todo

* create script to automate installation
* investigate installing mac apps with homebrew!
  * https://github.com/phinze/homebrew-cask
  * https://github.com/mathiasbynens/dotfiles/blob/master/.brew
