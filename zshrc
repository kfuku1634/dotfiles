
autoload -U colors
colors

#PROMPT format and color
PROMPT="%{$fg[red]%}[%n@%m]%{$reset_color%} $ "
RPROMPT="%{${fg[red]}%}[%~]%{${reset_color}%}"

# ls color setting
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=01;34'

# ls with color
alias ls='ls -F --color'

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# set background color of current selected complement canditate
zstyle ':completion:*' menu select=1
