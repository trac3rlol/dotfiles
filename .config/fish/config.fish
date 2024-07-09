set fish_greeting
set TERM xterm-256color
set EDITOR nvim
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -U fish_user_paths /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /home/tracer/.local/bin/ /home/tracer/.config/emacs/bin $fish_user_paths


#ALIASES
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias v='nvim'
alias s='sudo'
alias rmc="rm config.h"
alias emacs="doom run"

alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first' # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first' # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l.='exa -a --icons | egrep "^\."'

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias py='python'

alias upgrade='sudo pacman -Syu'

alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

alias .dwm="cd && cd .dwm"
alias .dmenu="cd && cd .config/dmenu"
alias .slstatus="cd && cd .config/slstatus"
alias .slock="cd && cd .config/slock"
alias vk="cd && nvim .config/kitty/kitty.conf"
alias vf="cd && nvim .config/fish/config.fish"
alias vp="cd && nvim .config/picom/picom.conf"
alias vd="cd && nvim .config/dunst/dunstrc"
alias vbsp="cd && nvim .config/bspwm/bspwmrc"
alias vsxh="cd && nvim .config/sxhkd/sxhkdrc"

function fish_prompt

    # interactive user name @ host name, date/time in YYYY-mm-dd format and path

    echo (pwd) "\$ "

end


starship init fish | source
