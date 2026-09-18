# provisioning ubuntu wsl

1. install ubuntu via wsl

    https://learn.microsoft.com/en-us/windows/wsl/setup/environment

1. check ubuntu version

    lsb_release -a

1. upgrade ubuntu packages

    sudo apt update
    sudo apt upgrade

1. upgrade ubuntu to latest LTS

    sudo do-release-upgrade

1. install git

    sudo apt install git

1. create ssh key

    ssh-keygen -t ed25519 -C "your@email.com"
    eval "$(ssh-agent -s)"

1. add to github

    https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

1. install gh cli

    https://github.com/cli/cli/blob/trunk/docs/install_linux.md

1. auth with gh

    gh auth login

1. connect vscode to wsl

    https://code.visualstudio.com/docs/remote/wsl-tutorial

1. install homebrew on linux! https://brew.sh

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

1. install dotfiles for maximum config (ungoldman only)

    gh repo clone dotfiles
    cd dotfiles

1. install packages in Brewfile (zsh & friends, term utils, etc. macos-only formulae and casks are skipped automatically)

    brew bundle

1. symlink dotfiles into place (skips existing files, `--force` backs them up)

    ./link.sh

1. install [Hack Nerd Font Mono](https://www.nerdfonts.com/font-downloads) on windows, set as default font for all profiles in command prompt settings

1. install [wsl utilities](https://github.com/wslutilities/wslu)

    sudo apt install ubuntu-wsl
    sudo add-apt-repository ppa:wslutilities/wslu
    sudo apt update
    sudo apt install wslu

1. browser is set in `sh/ubuntu-wsl.sh` -- totally works with gh browse!

    export BROWSER=wslview

1. install nvm & latest node (Brewfile skips the nvm formula on linux, `sh/ubuntu-wsl.sh` expects this layout)

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
    # reload shell
    exec zsh -l
    # install node and set as default
    nvm install 20
    nvm alias default 20
