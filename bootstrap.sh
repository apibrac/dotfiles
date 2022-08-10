# This bootstrap file is for codespace initialization

# --- PowerLevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# --- Lazygit

git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install
