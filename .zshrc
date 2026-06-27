# Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Pure
# https://github.com/sindresorhus/pure
fpath+=($HOME/.oh-my-zsh/custom/plugins/pure)
autoload -U promptinit; promptinit
prompt pure

# Zsh completion settings
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# fzf
# https://github.com/junegunn/fzf
eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS="--layout=reverse"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

# mise
# https://github.com/jdx/mise
eval "$(mise activate zsh)"

alias vi="nvim"
alias vim="nvim"
