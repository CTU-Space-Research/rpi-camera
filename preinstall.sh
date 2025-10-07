#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git ffmpeg rpicam-apps -y

echo -e "\nInstalling rpi-camera"
cd ~
git clone https://github.com/CTU-Space-Research/rpi-camera.git camera
cd camera
./install.sh
