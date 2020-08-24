#####################
###    plugin     ###
#####################
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

setopt auto_cd

# プラグインを読み込み、コマンドにパスを通す
zplug load --verbose

autoload -Uz compinit
compinit
autoload -U colors
colors

# vi keybind
bindkey -v

#####################
###    prompt     ###
#####################
#PROMPT format and color
PROMPT="%{$fg[red]%}[%n@%m]%{$reset_color%} $ "
RPROMPT="%{${fg[red]}%}[%~]%{${reset_color}%}"

#####################
###   ls color    ###
#####################
# ls color setting
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=01;34'

# ls with color
alias ls='ls -F --color'

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# set background color of current selected complement canditate
zstyle ':completion:*' menu select=1


#####################
###    history    ###
#####################

#履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=10000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=1000000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

#history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward


