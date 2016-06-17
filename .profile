# Colors settings:
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Shell prompt:
PS1="\[\e[1m\]$ \[\e[2m\]"

# Update tmux status on every cd command:
cd() {
    builtin cd "$@";
    tmux refresh-client -S;
}
