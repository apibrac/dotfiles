#-----   OH-MY-ZSH config

export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="agnoster"

export NVM_AUTOLOAD=1
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh
eval `dircolors ~/.dircolors`



#-----   Config versions
# see https://www.atlassian.com/git/tutorials/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'



#-----   Node env

export PATH="${HOME}/.local/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm



#-----   GCP env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi



#-----   Aliases

alias lg=lazygit
alias python=python3
alias pip=pip3
alias k=kubectl
alias kx=kubectx
alias kn=kubens
