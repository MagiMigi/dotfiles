#!/bin/bash

current=$(powerprofilesctl get)

if [[ $current == "balanced" ]]; then
    powerprofilesctl set power-saver
    notify-send "power-saving"
elif [[ $current == "power-saver" ]]; then
    powerprofilesctl set performance
    notify-send "performance"
else
    powerprofilesctl set balanced
    notify-send "balanced"
fi

