# dotfiles

some basic config for a fresh install.

## Dev Environment Install List

### Global

  * [osx-gcc-installer](https://github.com/kennethreitz/osx-gcc-installer) (or xcode)
  * [homebrew](https://github.com/mxcl/homebrew/wiki/installation)
  * [git](http://git-scm.com/)
    * `brew install git`

---

### Ruby/Heroku

  * [rvm](https://rvm.beginrescueend.com/rvm/install/)
    * remember to put RVM loader in bash profile
      * `[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"`
  * ruby 1.9.3
    * `rvm install 1.9.3 && rvm use 1.9.3 --default`
  * postgresql
    * [Installing on Lion](http://nextmarvel.net/blog/2011/09/brew-install-postgresql-on-os-x-lion/)
  * [bundler](http://gembundler.com/)
    * `gem install bundler`
  * [heroku](https://github.com/heroku/heroku)
    * `gem install heroku`

---

### Node.js/Nodejitsu

  * [npm](http://npmjs.org/)
  * [node.js](https://github.com/joyent/node/wiki/Installation)
  * [redis](http://redis.io/download)

    * `brew install redis`, or this ([ref](http://jason.pureconcepts.net/2011/12/installing-node-js-npm-redis-mac-os-x/)), ensuring version is current:

```
curl -O http://redis.googlecode.com/files/redis-2.4.4.tar.gz
tar -xzf redis-2.4.4.tar.gz
cd redis-2.4.4
make
```

  * [jitsu](https://github.com/nodejitsu/handbook)
    * `npm install -g jitsu`

---

### Apache/PHP/MySQL

  * See [this tutorial](http://ratvars.com/operating-systems/mac/how-to-install-apache-php-and-mysql-stack-on-macos-lion/)

---

### Utilities

  * [tig](http://jonas.nitro.dk/tig/)
    * `brew install tig`
  * [rmtrash](http://www.nightproductions.net/cli.htm)

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

  * SublimeText2 command line tool (make sure `export PATH=$PATH:~/bin` is in your bash profile and `~/bin` exists)

```
$ ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

---

### Fave Apps

  * [iTerm 2](http://www.iterm2.com/)
  * [Sublime Text 2](http://www.sublimetext.com/2)
    * [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
      * [Zen Coding](http://code.google.com/p/zen-coding/) (install w/ pkg ctrl)
  * [Chrome Canary](https://tools.google.com/dlpage/chromesxs/)
  * [Firefox Nightly](http://nightly.mozilla.org/)
    * [Firebug](http://getfirebug.com/)
  * [LimeChat](http://limechat.net/mac/)
  * [Adium](http://adium.im/)
  * [Google Notifier](http://toolbar.google.com/gmail-helper/notifier_mac.html)
  * [Nestopia](http://nestopia.sourceforge.net/)
