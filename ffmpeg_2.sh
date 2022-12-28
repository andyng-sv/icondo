#!/bin/sh

date=$(date +"%d-%m-%H-%M")

#directory path of recording
_path="/home/administrator/Desktop/$_fullpath"
#recording path
_rpath="/home/administrator/Recordings/$date-2/"
mkdir -p /home/administrator/Recordings/$date-2

ffmpeg -i rtsp://root:Vivotek00@192.168.123.3:554/live1s1.sdp -strict -2 -b:v 500k -vcodec copy -f segment -segment_time 60 -reset_timestamps 1 -strftime 1 -t 02:05:00 -y $_rpath%H%M.mp4
