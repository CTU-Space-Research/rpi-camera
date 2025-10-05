#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install git ffmpeg rpicam-apps -y

cd ~
git clone https://github.com/CTU-Space-Research/rpi-camera.git camera
cd camera
sudo ./install.sh
