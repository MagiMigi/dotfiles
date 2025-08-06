#!/bin/bash
timestamp=$(date +%d-%m-%Y_%H:%M:%S)
mkdir -p ~/Pictures/Screenshots
grim ~/Pictures/Screenshots/screenshot_$timestamp.png
notify-send "Screenshot saved!"
