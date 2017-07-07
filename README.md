# ungoldman/dotfiles

> Minimalist config for working in a terminal environment.

![](https://49.media.tumblr.com/8037b4adc4528f816a87eab93bbb1805/tumblr_np8i3bXp5g1qzdg48o1_500.gif)

**These are my dotfiles. There are many like them, but these ones are mine.**

My current setup:

- laptop: early 2015 macbook pro 13"
- server: digital ocean ubuntu 16.04

## Install

1. Clone this repository to a nice safe place. I tend to keep all my git-related work in `~/dev/git`.

    ```sh
    ~ $ git clone git@github.com:ungoldman/dotfiles.git
    ```

2. run the `./init.sh` script at the root of this repository. This will add the following to your `~/.bash_profile` (`DIR` resolves to the local `dotfiles` directory in the script):

    ```
    # include dotfiles
    export DOTFILES="${DIR}"
    [ -f \${DOTFILES}/.bash_profile ] && source \${DOTFILES}/.bash_profile
    ```

3. Start a new terminal session. If everything went well, your bash environment is ready to go.

### [homebrew](http://brew.sh)

Homebrew enables access to a lot of useful packages in a fairly easy to handle way (it's like `apt-get` for macOS). Install like so:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

To use the `Brewfile` in the root of this repo, you need [`homebrew-bundle`](https://github.com/Homebrew/homebrew-bundle).

```
brew tap Homebrew/bundle
cd $DOTFILES && brew bundle
```

### Languages

#### [node.js](http://nodejs.org)

Use [`nvm`](https://github.com/creationix/nvm) to manage node versions. Be sure to use the latest version:

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
```

Then install node:

```
nvm i lts
nvm alias default lts
```

After installing node, upgrade to latest `npm`:

```
npm i -g npm
```

Here are some node modules I like to install globally:

```
fixpack
gh-release
init-module
module-init
```

#### [ruby](https://www.ruby-lang.org)

- `brew bundle` installs [ruby-install](https://github.com/postmodern/ruby-install) and [chruby](https://github.com/postmodern/chruby), which are nice simple tools for managing ruby versions.
- `bash/.langs` includes a line to load chruby and switch to ruby v2 if it's present
- [to install the latest ruby](https://github.com/postmodern/ruby-install#synopsis): `ruby-install ruby`
- you'll probably need [bundler](http://gembundler.com): `gem install bundler`

#### [go](https://golang.org)

- `brew bundle` installs latest `go`.
- `bash/.langs` defaults to setting `GOPATH` to `~/dev/go`.

### Databases

#### [postgres](http://www.postgresql.org/)

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

#### [redis](http://redis.io/)

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

### macOS prefs

Run `./install/mac.sh` (at your own risk) for the most l33t macOS settings.

### Private environment variables

The `.bash_profile` file at the root of this repo will attempt to source a `bash/.private` file (ignored by this repository's `.gitignore`) that's meant to include anything you don't want to check into version control.

### More install scripts

You can run scripts in the `install` directory, but be advised they should only be run once and may have unwanted effects if you don't read through them first.

## License

[ISC](LICENSE.md)
