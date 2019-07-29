#!/bin/bash
# A Simple Shell Script to Install and Configure Ubuntu
# Pullmore - 27/Aug/2019

# quality of life
sudo apt-get snap

# icon theme and tweak tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle gnome-tweak-tool

# programming tools and editor
sudo apt-get install git neovim 

# tools
sudo apt-get install ssh tmux

# fun terminal applications
sudo apt-get install screenfetch htop moc weechat

# creative suite
sudo apt-get install kdenlive inkscape gimp librecad 

# programming languages 
sudo apt-get install python gcc

# solarized terminal & editor color scheme
sudo apt-get install dconf-cli
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
cd ~/
rm -rf gnome-terminal-colors-solarized

# installs powerline-shell
sudo apt install python-pip
pip install powerline-shell #DIDNT WORK. BE SURE TO EDIT
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#make sure to create a .fonts directory if it doesn't exist yet! mkdir ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fc-cache -vf ~/.fonts/
# EDIT BASH RC TO INCLUDE CHANGES OR PULL BASHRC FROM GITHUB

# misc applications
snap install spotify
