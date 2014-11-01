export LC_ALL="en_US.UTF-8"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias e="rmate"
alias bload="source ~/.bashrc"
alias bedit="e ~/.bashrc"
alias c="clear"
alias ap="php app/console"
alias p="cd ~/projects"
alias h="history"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ng-s='sudo service nginx status'
alias ng-r='sudo service nginx restart'
alias ng-log='cd /var/log/nginx/'
alias ng='cd /etc/nginx/'
alias sdc="php app/console  doctrine:database:drop --force && php app/console  doctrine:database:create && php app/console doctrine:schema:create"


export PS1="\[\e[00;37m\]\n\[\e[0m\]\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\h:\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[00;37m\]: \n$ \[\e[0m\]"
