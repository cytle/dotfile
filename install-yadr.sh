#! /bin/bash

sudo apt-get install rake tmux

# install YADR
# http://www.agileventures.org/articles/setting-up-yadr-on-ubuntu
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"

nautilus ~/.yadr/fonts/

gconftool-2 --set "/apps/gnome-terminal/profiles/<ProfileName>/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/<ProfileName>/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/<ProfileName>/palette" --type string "#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
gconftool-2 --set "/apps/gnome-terminal/profiles/<ProfileName>/background_color" --type string "#00002B2B3636"
gconftool-2 --set "/apps/gnome-terminal/profiles/<ProfileName>/foreground_color" --type string "#65657B7B8383"

curl https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark > ~/.dircolors

# .zshrc
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# fi

# alias ls="ls -F --color=auto"
# alias grep='grep --color=auto'

# alias tmux='TERM=screen-256color-bce tmux'
