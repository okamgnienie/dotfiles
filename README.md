# Dotfiles
My terminal configuration contains Tmux and custom OSX terminal theme.

## Installation
1. Install tmux
2. Install oh-my-zsh
3. Clone repository `git clone https://github.com/phardyn/dotfiles.git ~/Documents`
4. Install theme
5. Run `setup.sh` to create symlinks to configuration files

## Key bindings
- Panes
  - `Ctrl + k 3` - split screen vertically
  - `Ctrl + k 2` - split screen horizontally
  - `Ctrl + k 0` - close current pane
  - `Ctrl + k o` - switch to next pane

- Sessions
  - `Ctrl + k n` - open new session
  - `Ctrl + k $` - change session name
  - `Ctrl + k X` - kill all sessions except the current one

- Other
  - `Ctrl + k :` - enter command
