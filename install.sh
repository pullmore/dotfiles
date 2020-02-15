#!/bin/bash
# Notes to Install and Configure Ubuntu
# Pullmore - 12/Jan/2020

# quality of life
sudo apt-get install snap

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

# install OBS
sudo apt-get install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install obs-studio

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
pip install powerline-shell #Worked this time


wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
# make sure to create a .fonts directory if it doesn't exist yet! mkdir ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
fc-cache -vf ~/.fonts/
# EDIT BASH RC TO INCLUDE CHANGES OR PULL BASHRC FROM GITHUB

# misc applications
snap install spotify

# wine install
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ disco main'
sudo apt update
sudo apt install --install-recommends winehq-staging

# other quality of life
sudo apt-get install uzip
