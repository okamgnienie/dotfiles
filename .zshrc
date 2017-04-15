# Path to oh-my-zsh installation:
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Prompt configuration:
PROMPT='$fg[green]→ $fg_bold[cyan]${PWD##*/} $reset_color'

# Updates settings:
export UPDATE_ZSH_DAYS=1

# Plugins to load:
plugins=(git lein npm yarn)

# Update tmux status on every cd command:
cd() {
    builtin cd "$@";
    tmux refresh-client -S;
}

# Open tmux by default:
tmux attach &> /dev/null
if { [ "$TERM" = "screen" ] && ! [ -n "$EMACS" ]; } then
   exec tmux
fi

# Disable sharing history between tmux panes:
setopt noincappendhistory
setopt nosharehistory
