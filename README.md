# Dotfiles
![terminal](images/terminal.png)
My MacOS terminal, Tmux and zsh configuration.

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
  - `Ctrl + k R` - reload the Tmux configuration file

## Credits
A lot of functionality and inspiration comes from [this](https://github.com/ice9js/dragons) config by [ice9js](https://github.com/ice9js).
