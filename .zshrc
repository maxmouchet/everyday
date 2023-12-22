setopt autocd
zstyle ':completion:*' menu select

bindkey '^[[1;3D' backward-word  # alt-left
bindkey '^[[1;3C' forward-word   # alt-right

source /usr/share/autojump/autojump.sh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$PATH:$HOME/.local/bin"
