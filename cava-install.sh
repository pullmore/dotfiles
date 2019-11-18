#!/bin/bash
# This program installs Console-based Audio Visualizer for Alsa (CAVA) on Ubuntu
# Pullmore - 17/Nov/19

sudo apt-get install libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool
sudo add-apt-repository ppa:tehtotalpwnage/ppa
sudo apt-get update
sudo apt-get install cava
