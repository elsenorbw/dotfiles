# Dotfiles

The repository for all the hidden files that I want to preserve between machines, installs, etc.

Use stow <name> to symlink the files into place on a new machine.

## TMUX Config

Trigger is Ctrl-T

Use Ctrl-T I to install the necessary plugins.

Expects a NerdFont

unpack this into .config/tmux

then

``` bash
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf 
```

which should sort out TMUX
