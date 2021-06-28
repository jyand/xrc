HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=4294967296
SAVEHIST=4294967296
setopt autocd extendedglob
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[5 q';;
        viins|main) echo -ne '\e[3 q';;
        vivis) echo -ne '\e[1 q';;
    esac
}
zle-line-init() {
        zle -K viins
        echo -ne "\e[3 q"
}
zle -N zle-keymap-select
zle -N zle-line-init
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /opt/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
PS1='%F{cyan}%/ %F{white}'
alias q="exit"
alias z="exit"
alias d="doas"
alias r="busybox clear"
alias k="busybox kill"
alias j="busybox pgrep"
alias l="exa -alF --no-user --no-permissions"
alias h="man"
alias hk="apropos"
alias t="tldr"
alias y="cheat"
alias b="lsblk"
alias m="doas mount"
alias u="doas umount -R /mnt"
alias e="busybox echo"
alias c="busybox cat"
alias a="$PAGER"
alias F="ffmpeg"
alias f="grep --color"
alias n="busybox wc -l"
alias i="openbsd-file"
alias s="sed"
alias w="whereis"
alias v="nvim"
alias V="doas nvim"
#alias x="xbps-query -S"
alias x="pacman -Qi"
#alias xl="xbps-query -l"
alias xl="pacman -Q"
#alias xm="xbps-query -m"
alias xm="pacman -Qe"
#alias xs="xbps-query -Rs"
alias xs="pacsearch"
#alias xx="xbps-query -x"
alias xx="pactree -c"
#alias X="xbps-query -X"
alias X="pactree -rc"
#alias xi="doas xbps-install -Su"
alias xi="doas pacman -Syu"
#alias xr="doas xbps-remove -R"
alias xr="doas pacman -Rcnsu"
#alias xo="doas xbps-remove -O"
alias xo="doas pacman -Sc"
alias W="torsocks -i wget -r"
alias U="youtube-dl -x --audio-format flac --audio-quality 0 """
alias Y="youtube-dl """
alias G="git clone"
alias g="git add --all && git commit -m """
alias p="git push"
alias gp="git pull"
alias gb="git branch"
alias gm="git merge"
alias gs="git status"
alias gw="git switch"
alias gc="git checkout"
alias ping="doas busybox ping"
alias tar="busybox tar -xvf"
alias M="make && doas make install && make clean"
ufetch
