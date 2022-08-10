# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#-----   OH-MY-ZSH config

export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

export NVM_AUTOLOAD=1
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh



#-----   Config versions
# see https://www.atlassian.com/git/tutorials/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'



#----   Local Config

test -f ~/.zsh_profile && source ~/.zsh_profile


#-----   Node env

export PATH="${HOME}/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
#export PATH="$PATH:$(yarn global bin)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm



#-----   GCP env



#-----   Aliases

alias lg=lazygit
alias python=python3
alias pip=pip3
alias k=kubectl
alias kx=kubectx
alias kn=kubens

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
