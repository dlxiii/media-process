#!/bin/bash

for f in *.mp3
do
    ffmpeg -i "$f" -acodec libmp3lame -ac 2 -ab 64k -ar 44100 "$f”;
done