parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\e[1m\]\u@\h:\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
