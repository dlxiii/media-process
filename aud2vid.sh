#!/bin/bash

for f in *.mp3
do
	ffmpeg -loop 1 -i "IMG_6465.jpg" -i "$f" -c:a copy -c:v libx264 -shortest "${f%.mp3}.mp4"
done