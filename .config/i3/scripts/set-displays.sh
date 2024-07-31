#!/bin/bash

# Run arandr and capture its output
output=$(xrandr)

# set 34" UW and additional 24" displays 
if [[ $output == *"DP-3-1 connected"* ]] && [[ $output == *"DP-3-3 connected"* ]]; then
  xrandr \
    --output eDP-1 --mode 1680x1050 --pos 240x390 --rotate normal \
    --output HDMI-1 --off \
    --output DP-1 --off \
    --output HDMI-2 --off \
    --output DP-2 --off \
    --output HDMI-3 --off \
    --output DP-3 --off \
    --output DP-4 --off \
    --output DP-3-1 --primary --mode 3440x1440 --pos 1920x0 --rotate normal \
    --output DP-3-2 --off \
    --output DP-3-3 --mode 1920x1080 --pos 5360x360 --rotate normal 
else
  # set laptop display to 1680x1050
  xrandr \
    --output eDP-1 --primary --mode 1680x1050 --pos 0x0 --rotate normal \
    --output HDMI-1 --off \
    --output HDMI-2 --off \
    --output HDMI-3 --off \
    --output DP-1 --off \
    --output DP-2 --off \
    --output DP-3 --off \
    --output DP-4 --off  
fi

