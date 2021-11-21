# Manual installations

- add ssh keys for github
- install zsh
- install oh-my-zsh (put in install.sh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)
- install vscode, and settings sync on
- install lazygit
- install docker
- install kubectx

# Install the config

```bash
git clone --bare git@github.com:apibrac/dotfiles.git $HOME/.cfg # correct clone for config repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # temporary alias just for the next command
config checkout
```

