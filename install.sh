#!/bin/bash

# Menu to install dotfiles or switch
echo "Menu:"
echo "1. Catppuccin"
echo "2. Tokyo"
echo "3. True Dark"
echo "4. Ranni"
echo "5. Gruvbox"
echo "6. Rose Pine"

read -p "Enter your choice: " choice

case $choice in
    1)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Catppuccin/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Catppuccin/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Catppuccin/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Catppuccin/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./Catppuccin/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./Catppuccin/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./Catppuccin/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./Catppuccin/Warp/catppuccin_mocha.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Catppuccin/SQLPro Studio/Catppuccin Mocha.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Catppuccin/Vim/.vimrc" "$HOME/"

        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Catppuccin Mocha"
        echo "3. SQLPro Studio: Catppuccin Mocha"
        echo "4. Spicetify: Catppuccin. Use Catppuccin Mocha"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;

    2)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Tokyo/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Tokyo/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Tokyo/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Tokyo/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./Tokyo/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./Tokyo/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./Tokyo/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./Tokyo/Warp/tokyo_night.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Tokyo/SQLPro Studio/Tokyo Night.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Tokyo/Vim/.vimrc" "$HOME/"

        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Tokyo Night"
        echo "3. SQLPro Studio: Tokyo Night"
        echo "4. Spicetify: Ziro. Use Blue Dark"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;

    3)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./True Dark/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./True Dark/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./True Dark/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./True Dark/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./True Dark/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./True Dark/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./True Dark/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./True Dark/Warp/bilibili_dark.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./True Dark/SQLPro Studio/Bilibili.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./True Dark/Vim/.vimrc" "$HOME/"
        
        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Bilibili Dark"
        echo "3. SQLPro Studio: Bilibili"
        echo "4. Spicetify: Dribbblish. Use Lunar"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;
    
    4)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Ranni/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Ranni/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Ranni/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Ranni/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./Ranni/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./Ranni/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./Ranni/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./Ranni/Warp/Ranni.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Ranni/SQLPro Studio/Ranni.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Ranni/Vim/.vimrc" "$HOME/"
        
        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Ranni"
        echo "3. SQLPro Studio: Ranni"
        echo "4. Spicetify: Catppuccin. Use Catppuccin Mocha"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;

    5)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Gruvbox/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Gruvbox/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Gruvbox/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Gruvbox/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./Gruvbox/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./Gruvbox/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./Gruvbox/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./Gruvbox/Warp/gruvbox_dark.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Gruvbox/SQLPro Studio/Gruvbox.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Gruvbox/Vim/.vimrc" "$HOME/"
        
        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Gruvbox Dark Official"
        echo "3. SQLPro Studio: Gruvbox"
        echo "4. Spicetify: Dribbblish. Use Gruvbox Material Dark"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;

    5)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Rose Pine/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Rose Pine/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Rose Pine/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Rose Pine/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"
        cp -p "./Rose Pine/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2024.1/options"

        # Copy over pycharm config
        cp -p "./Rose Pine/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"
        cp -p "./Rose Pine/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2024.1/options"

        # Copy over warp color theme
        cp -p "./Rose Pine/Warp/rose-pine.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Rose Pine/SQLPro Studio/Rose Pine.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Rose Pine/Vim/.vimrc" "$HOME/"
        
        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: README"
        echo "2. Warp: Rose Pine"
        echo "3. SQLPro Studio: Rose Pine"
        echo "4. Spicetify: Dribbblish. Use Rose Pine"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;

    *)
        echo "Invalid choice"
        ;;
esac
