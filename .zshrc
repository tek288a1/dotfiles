export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs anaconda)

if [ `tput colors` != "256" ]; then
    ZSH_THEME="norm"
fi

plugins=(
    git
    fzf
    archlinux
)

source $ZSH/oh-my-zsh.sh

#neofetch
#echo "Welcome to Terminal!"
