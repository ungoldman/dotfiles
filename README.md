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
  * ruby 1.9.2
    * `rvm install 1.9.2 && rvm use 1.9.2 --default`
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
  * [jitsu](https://github.com/nodejitsu/handbook)
    * `npm install -g jitsu`

---

### Utilities

  * [tig](http://jonas.nitro.dk/tig/)
    * `brew install tig`
  * [rmtrash](http://www.nightproductions.net/cli.htm)