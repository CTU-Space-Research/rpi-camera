#!/bin/bash

# rpicam-hello --list-cameras

if [ "$(pwd)" != "/home/sr/camera" ]; then
    echo "Error: Run script from its repo here /home/sr/camera and run install.sh"
    exit 1
fi

mkdir mediamtx
cd mediamtx
wget https://github.com/bluenviron/mediamtx/releases/download/v1.15.1/mediamtx_v1.15.1_linux_arm64.tar.gz
tar -xvzf mediamtx_v1.15.1_linux_arm64.tar.gz
cd ..

cp mediamtx.yml mediamtx/mediamtx.yml
sudo cp mediamtx.service /etc/systemd/system/mediamtx.service

sudo systemctl daemon-reload # reload systemd to recognize the new service
sudo systemctl enable mediamtx.service # enable to start on boot
sudo systemctl start mediamtx.service # start immediately
sudo systemctl status mediamtx.service # check the status

# journalctl -u mediamtx.service

# sudo systemctl stop mediamtx.service
# sudo systemctl restart mediamtx.service
# sudo systemctl disable mediamtx.service # disable start on boot

echo -e "\nInstallation complete. The mediamtx service is now running."

IP=$(hostname -I | awk '{print $1}')
echo "HLS: http://$IP:8888/cam/index.m3u8"
echo "HLS: http://$IP:8888/cam"
echo "RTMP: rtmp://$IP/cam"
echo "HTTP: http://$IP:8889/cam"
