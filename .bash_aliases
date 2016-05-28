alias l='ls -hog --group-directories-first --time-style long-iso' #list
alias la='l -A' #list with hidden files
alias lt='l -tr' #sort ascending by time
alias c='clear'

new () { ls -Ahogt --time-style long-iso --color=always "$@" | head -15; } #show 15 newest files/directories in argument directory

alias u='cd ..' #navigate up one directory
alias uu='u; u' #two
alias uuu='uu; u' #etc
alias uuuu='uu; uu'
