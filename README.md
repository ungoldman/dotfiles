# dotfiles

Some basic config for a fresh install. Designed to be cloned into `~/.dotfiles` and included with the following line in your `.bash_profile`:

```sh
[ -f ~/.dotfiles/.bash_profile ] && source ~/.dotfiles/.bash_profile
```

## Dev Environment Install List

### Global

  * [osx-gcc-installer](https://github.com/kennethreitz/osx-gcc-installer) (or xcode)
  * [homebrew](https://github.com/mxcl/homebrew/wiki/installation)
  * [git](http://git-scm.com)
    * `brew install git`
  * [tig](http://jonas.nitro.dk/tig)
    * `brew install tig`

---

### Ruby

  * [rvm](https://rvm.beginrescueend.com/rvm/install)
    * remember to put RVM loader in bash profile (usually at bottom)
      * `[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"`
  * ruby 1.9.3
    * `rvm install 1.9.3 && rvm use 1.9.3 --default`
  * postgresql
    * [Installing on Mountain Lion](https://coderwall.com/p/1mni7w)
  * [bundler](http://gembundler.com)
    * `gem install bundler`

---

### Node.js

  * [node](http://nodejs.org)
    * `brew install node`
  * [redis](http://redis.io/download)
    * `brew install redis`

---

### Apache/PHP/MySQL

  * [Install and configure Apache, MySQL, PHP and phpMyAdmin on OSX 10.8 Mountain Lion](http://coolestguyplanettech.com/downtown/install-and-configure-apache-mysql-php-and-phpmyadmin-osx-108-mountain-lion)

---

### Utilities

  * [rmtrash](http://www.nightproductions.net/cli.htm) if you're afraid of rm

---

### Mac OS X Prefs

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

---

### Fave OS X Apps

  * [iTerm 2](http://www.iterm2.com/)
  * [Sublime Text 2](http://www.sublimetext.com/2)
    * [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
      * [Emmet](https://github.com/sergeche/emmet-sublime)
      * [GitGutter](https://github.com/jisaacks/GitGutter)
  * [Chrome Canary](https://tools.google.com/dlpage/chromesxs/)
  * [Firefox Nightly](http://nightly.mozilla.org/)
    * [Firebug](http://getfirebug.com/)
  * [LimeChat](http://limechat.net/mac/)
  * [Adium](http://adium.im/)
  * [ShadowKiller](http://unsanity.com/haxies/shadowkiller/)
