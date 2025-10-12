# RPI Camera
This script will install systemd daemon (`mediamtx.service`) which will keep `mediamtx` alive and start it right after boot. `mediamtx` provides a number of stream servers.

## Usage
### [To change IP]
```wget -O - https://raw.githubusercontent.com/CTU-Space-Research/rpi-camera/refs/heads/main/set_ip.sh | bash```
### To install server
```wget -O - https://raw.githubusercontent.com/CTU-Space-Research/rpi-camera/refs/heads/main/preinstall.sh | bash```

## For setting static ip
<https://linuxpi.ca/how-to-set-static-ip-address-on-raspberry-pi-os-and-other-debian-distributions/>
