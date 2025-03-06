alias exa='/home/roland/sw/exa-linux-x86_64'
alias l='exa --group-directories-first -l --time-style=iso --color-scale -a'
#alias l='ls -hog --group-directories-first --time-style long-iso' #list
#alias la='l -A' #list with hidden files
#alias lt='l -tr' #sort ascending by time

alias c='clear'

alias cc='source-highlight --out-format=esc --failsafe -i'

new () { ls -Ahogt --time-style long-iso --color=always "$@" | head -15; } #show 15 newest files/directories in argument directory

alias u='cd ..' #navigate up one directory
alias uu='u; u' #two
alias uuu='uu; u' #etc
alias uuuu='uu; uu'

alias hyperdate='date +%F\ %T%n%A\ of\ week\ %V,\ day\ %j\ of\ the\ year%nEpoch:\ %s%nTime\ zone\ %Z,\ %:z%n%FT%T%:z'

alias testses='php bin/console doctrine:database:drop --force --env=test;
php bin/console doctrine:database:create --env=test;
php bin/console doctrine:migrations:migrate --env=test --no-interaction -q;
php bin/console doctrine:fixtures:load --env=test -n --append;
phpunit'

alias gs='git status'
alias p='cd ~/Documents/projects'


alias fuck='toilet "There is noneed to be upset" --gay'
