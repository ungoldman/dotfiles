# provisioning ubuntu wsl

1. check ubuntu version

    lsb_release -a

1. upgrade ubuntu packages

    sudo apt update
    sudo apt upgrade

1. upgrade ubuntu to latest LTS

    sudo do-release-upgrade

1. install git

    sudo apt install git

1. connect vscode to wsl

    https://code.visualstudio.com/docs/remote/wsl-tutorial

1. install gh cli on linux

    https://github.com/cli/cli/blob/trunk/docs/install_linux.md

1. create ssh key

    ssh-keygen -t ed25519 -C "your@email.com"
    eval "$(ssh-agent -s)"

1. add to github

    https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

1. auth with gh

    gh auth login

1. install starship

    curl -sS https://starship.rs/install.sh | sh

1. install dotfiles

    gh repo clone dotfiles

1. install zsh & friends

    sudo apt install zsh zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting

    (zsh-completions not working)