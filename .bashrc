#
# ~/.bashrc
#

export HISTSIZE=1000000
export HISTFILESIZE=1000000000
export HISTCONTROL=ignoreboth

PS1='\u@\h [\w]\$ '
# If not running interactively, don't do anything
[[ $- != *i* ]] && return



# Allow the user to set the title.
function title {
   PROMPT_COMMAND="echo -ne \"\033]0;$1 (on $HOSTNAME)\007\""
}


bind "'\C-l':'\n clear\n'"


alias ls='ls --color=auto'
alias lsd='ls -d .*'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias cls='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ~='cd ~'
alias ls.='ls -d .* | tail +3'
alias connect='iwctl station wlan0 connect'
alias weather='curl http://wttr.in/'

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'


oldps1="\u@\h [\w]> "

cyan_white='\[\e[37;46m\]'
cyan_magenta='\[\e[35;46m\]'
magenta_cyan='\[\e[36;45m\]'
black_magenta='\[\e[0;35m\]'
magenta_white='\[\e[37;45m\]'
black_cyan='\[\e[0;36m\]'
magenta_black='\[\e[30;45m\]'
cyan_black='\[\e[30;46m\]'

white='\[\e[37;0m\]'

color_reset='\[\e[0;0\]'
separator=""
bseparator=""


export PS1="$cyan_magenta $magenta_black\u$cyan_magenta$cyan_black \w $black_cyan $(echo -e '\e]2;Alacritty - $(basename $PWD)\007')"

alias crt='export PS1="$black_cyan┌\u [\w]\n└$ "'
pfetch | lolcat -S 210
bash ~/.welcome/welcome.sh
