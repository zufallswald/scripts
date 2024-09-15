export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

