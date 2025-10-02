sudo apt update
sudo apt upgrade
sudo apt install git ffmpeg rpicam-apps

git clone https://github.com/CTU-Space-Research/rpi-camera-service.git camera
cd camera
sudo ./install.sh
