#!/bin/bash

timestamp=$(date +%d-%m-%Y_%H:%M:%S)
mkdir -p ~/Pictures/Screenshots
filepath=~/Pictures/Screenshots/screenshot_$timestamp.png

grimblast --freeze save area "$filepath"

wl-copy < "$filepath"
notify-send "Screenshot saved!"

