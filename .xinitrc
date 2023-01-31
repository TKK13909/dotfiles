#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
#xterm &

exec i3 --force-xinerama -V >>~/.i3/i3log 2>&1
