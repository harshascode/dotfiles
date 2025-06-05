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
rfkill block all 
#i3-msg reload
#eval "$(zoxide init bash)" ~/.bashrc
