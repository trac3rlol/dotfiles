#!/bin/bash/
echo "DOTFILES SETUP"
sudo pacman -Syu wmname dunst nitrogen polkit-gnome ttf-hack ttf-font-awesome ttf-nerd-fonts-symbols terminus-font libxft firefox network-manager-applet volumeicon
yay -Syu ttf-ubuntu-font-family ttf-ubuntu-mono-nerd ttf-ubuntu-nerd ttf-jetbrains-mono ttf-jetbrains-mono-nerd betterdiscord-installer spicetify discord pcmanfm gnome-disk-utility
sleep 1s
cp .config $HOME/
cp .emacs.d $HOME/
cp .icons $HOME/
cp .local $HOME/
cp .bashrc $HOME/
cp .qtkrc-2.0 $HOME/
sleep 1s
echo "Setup Finished"
