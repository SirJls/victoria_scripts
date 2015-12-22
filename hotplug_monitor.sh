#! /usr/bin/bash
# Sets right perspective when monitor is plugged in
# Needed by udev rule /etc/udev/rules.d/95-hotplug-monitor, see below for rule

# UDEV RULE
# Rule for executing commands when an external screen is plugged in.
# KERNEL=="card0", SUBSYSTEM=="drm", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/jls/.Xauthority", RUN+="/usr/local/bin/hotplug_monitor.sh"

export DISPLAY=:0
export XAUTHORITY=/home/jls/.Xauthority

function connect(){
    xrandr --output HDMI1 --right-of LVDS1 --preferred --primary --output LVDS1 --preferred
}

function disconnect(){
      xrandr --output HDMI1 --off
}

xrandr | grep "HDMI1 connected" &> /dev/null && connect || disconnect
