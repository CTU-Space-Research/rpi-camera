# RPI Camera
This script will install systemd daemon (`rpicam-stream.service`) which will keep `stream.sh` alive and start it right after boot. `stream.sh` uses `ffmpeg` to open `srt` server for live video transmission.

## Usage
```wget -O - https://raw.githubusercontent.com/CTU-Space-Research/rpi-camera/refs/heads/main/preinstall.sh?token=GHSAT0AAAAAADL5W4G3ULJB5GCWZHHSBFDW2G7BWKQ | sudo bash```

Or with a shortened url:

```wget -O - https://tinyurl.com/sr-camera | sudo bash```
