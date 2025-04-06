#!/usr/bin/env bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
dir="$HOME/.config/rofi/wallpapers/"
theme='wallpapers'

# Get all image files in the wallpaper directory
get_wallpapers() {
    find "$WALLPAPER_DIR" -type f -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif"
}

# Generate the menu items for rofi
generate_menu() {
    for wallpaper in $(get_wallpapers); do
        filename=$(basename "$wallpaper")
        echo -en "$filename\x00icon\x1f$wallpaper\n"
    done
}

# Set the selected wallpaper
set_wallpaper() {
    local wallpaper="$WALLPAPER_DIR/$1"
    if [ -f "$wallpaper" ]; then
        # Check if swww daemon is running, if not, initialize it
        if ! pgrep -x "swww-daemon" > /dev/null; then
            swww init
        fi
        
        # Set the wallpaper with a smooth transition
        swww img "$wallpaper" --transition-fps 60 --transition-type grow --transition-duration 1
    fi
}

# Display rofi menu with wallpapers
selected=$(generate_menu | rofi -dmenu -theme ${dir}/${theme}.rasi)

# Set the wallpaper if a selection was made
if [ -n "$selected" ]; then
    set_wallpaper "$selected"
fi
