chmod +x stream.sh
cp rpicam-stream.service /etc/systemd/system/rpicam-stream.service

# reload systemd to recognize the new service
sudo systemctl daemon-reload

# enable the service to start on boot
sudo systemctl enable rpicam-stream.service

# start the service immediately
sudo systemctl start rpicam-stream.service

# check the status of the service
sudo systemctl status rpicam-stream.service

# journalctl -u rpicam-stream.service

# sudo systemctl stop rpicam-stream.service
# sudo systemctl restart rpicam-stream.service
# sudo systemctl disable rpicam-stream.service # disable autostart on boot
