#!/bin/sh

Download to a specified file
wget https://tldp.org/LDP/abs/html/sample-bashrc.html -P /mnt/Downloads/Docs/html
Download from youtube:
yt-dlp -o "%(playlist)s/%(title)s.%(ext)s '<YT-URL>'"
