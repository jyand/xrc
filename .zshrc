# The following lines were added by compinstall
zstyle :compinstall filename '/home/jy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=32
SAVEHIST=4294967296
setopt autocd extendedglob
#bindkey -e
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[5 q';;
        viins|main) echo -ne '\e[3 q';;
        vivis) echo -ne '\e[1 q';;
    esac
}
zle -N zle-keymap-select
zle-line-init() {
        zle -K viins
        echo -ne "\e[3 q"
}
source /usr/share/zsh/plugins/*/*.zsh
PS1='%F{cyan}%/ %F{white}'
ufetch
