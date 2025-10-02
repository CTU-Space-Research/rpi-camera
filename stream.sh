#!/bin/bash

while true; do
    rpicam-vid -t 0 --width 1920 --height 1080 --framerate 56 --profile high --inline --flush --codec h264 --libav-format h264 -o - | \
    ffmpeg -re -i - -c:v copy -f h264 "srt://0.0.0.0:5000?mode=listener&latency=120000&pktsize=1316&sndbuf=12000000" 2>&1
    echo "Connection closed, restarting in 1 second..." | logger -t rpicam-stream
    sleep 1
done