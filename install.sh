#!/bin/bash

# Menu to install dotfiles or switch
echo "Menu:"
echo "1. Default (Catppuccin Mocha)"
echo "2. Tokyo"
echo "3. True Dark"
echo "4. Ranni"
echo "5. Gruvbox"

read -p "Enter your choice: " choice

case $choice in
    1)
        # Copy over the skhd config
        cp -rp "./Global Configs/skhd" "$HOME/.config/"

        # Copy over the yabai config
        cp -rp "./Default/yabai" "$HOME/.config/"

        # Copy over simple bar config
        cp -p "./Default/simplebar/.simplebarrc" "$HOME/"

        # Copy over VScode config
        cp -p "./Default/Code/settings.json" "$HOME/Library/Application Support/Code/User/"

        # Copy over webstorm config
        cp -p "./Default/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"
        cp -p "./Default/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"

        # Copy over pycharm config
        cp -p "./Default/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"
        cp -p "./Default/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"

        # Copy over warp color theme
        cp -p "./Default/Warp/catppuccin_mocha.yml" "$HOME/.warp/themes/"

        # Copy over SQLPro Theme
        cp -p "./Default/SQLPro Studio/Catppuccin.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

        # Copy over Vim Theme
        cp -p "./Default/Vim/.vimrc" "$HOME/"

        # Copy over wallpapers
        cp -rp "./Wallpapers" "$HOME/Pictures/"

        # Restart services
        yabai --restart-service
        skhd --restart-service
        osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'

        # Print out last messages
        echo "Manually set the following: "
        echo "1. Slack: Catppuccin Mocha"
        echo "2. Warp: Catppuccin Mocha"
        echo "3. SQLPro Studio: Catppuccin"
        echo "4. Spicetify: Catppuccin Mocha"
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
        cp -p "./Tokyo/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"
        cp -p "./Tokyo/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"

        # Copy over pycharm config
        cp -p "./Tokyo/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"
        cp -p "./Tokyo/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"

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
        echo "1. Slack: Tokyo Night"
        echo "2. Warp: Tokyo Night"
        echo "3. SQLPro Studio: Tokyo Night"
        echo "4. Spicetify: Ziro Package. Tokyo Night Theme"
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
        cp -p "./True Dark/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"
        cp -p "./True Dark/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"

        # Copy over pycharm config
        cp -p "./True Dark/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"
        cp -p "./True Dark/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"

        # Copy over SQLPro Theme
        cp -p "./True Dark/SQLPro Studio/Hyper.theme" "$HOME/Library/Containers/com.hankinsoft.osx.sqlprostudio/Data/Documents/Themes/"

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
        echo "1. Slack: Hyper in Readme"
        echo "2. Warp: Hyper"
        echo "3. SQLPro Studio: Hyper"
        echo "4. Spicetify: Rose Pine"
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
        cp -p "./Ranni/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"
        cp -p "./Ranni/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"

        # Copy over pycharm config
        cp -p "./Ranni/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"
        cp -p "./Ranni/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"

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
        echo "1. Slack: Ranni in Readme"
        echo "2. Warp: Ranni"
        echo "3. SQLPro Studio: Ranni"
        echo "4. Spicetify: Catpuccin Mocha"
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
        cp -p "./Gruvbox/WebStorm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"
        cp -p "./Gruvbox/WebStorm/laf.xml" "$HOME/Library/Application Support/JetBrains/WebStorm2023.3/options"

        # Copy over pycharm config
        cp -p "./Gruvbox/PyCharm/colors.scheme.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"
        cp -p "./Gruvbox/PyCharm/laf.xml" "$HOME/Library/Application Support/JetBrains/PyCharm2023.3/options"

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
        echo "1. Slack: Gruvbox in Readme"
        echo "2. Warp: Base16 Gruvbox Dark Hard"
        echo "3. SQLPro Studio: Gruvbox"
        echo "4. Spicetify: Dribbblish Gruvbox"
        echo "5. Simple Bar: Import Settings"
        echo "6. Vim: :PlugInstall"
        ;;  

    *)
        echo "Invalid choice"
        ;;
esac
