#!/bin/bash

# chmod +x resolution.sh
# Define the new mode
MODEDEF="1920x1080_60.00"
MODELINE="173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync"
OUTPUT="VGA-1"

# Add the new mode if it doesn't exist
if ! xrandr | grep -q "$MODEDEF"; then
  echo "Adding new mode: $MODEDEF"
  xrandr --newmode "$MODEDEF" $MODELINE
  xrandr --addmode "$OUTPUT" "$MODEDEF"
else
  echo "Mode $MODEDEF already exists."
fi

# Set the output to the new mode
echo "Setting output $OUTPUT to mode $MODEDEF"
xrandr --output "$OUTPUT" --mode "$MODEDEF"

echo "xrandr setup complete."
echo "Wifi turned off complete."
#echo "i3 configuration reloaded."
#rfkill block all 
#i3-msg reload
#eval "$(zoxide init bash)" ~/.bashrc

# Start vnstat daemon to monitor network traffic
#sudo vnstatd -d


# 720 Resultion seting cmd

# gtf 1280 720 60
# xrandr --newmode "1280x720_60.00"  74.48  1280 1336 1472 1664  720 721 724 746  -HSync +Vsync
# xrandr --addmode VGA-1 "1280x720_60.00"
# xrandr --output VGA-1 --mode "1280x720_60.00"


# gtf 1366 768 60
# xrandr --newmode "1368x768_60.00"  85.86  1368 1440 1584 1800  768 769 772 795  -HSync +Vsync
# xrandr --addmode VGA-1 "1368x768_60.00"
# xrandr --output VGA-1 --mode "1368x768_60.00"


#Just Note Purpose:

# For Turn on My Fedora Machine Hostspot
#nmcli con up MyHotspotName
