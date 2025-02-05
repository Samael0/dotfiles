#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Homebrew
## Install
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Taps
echo "Tapping Brew..."
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

## Formulae
echo "Installing Brew Formulae..."
### Essentials
brew install coreutils
brew install curl
brew install git
brew install jq
brew install fzf
brew install ripgrep
brew install fd
brew install gpg
brew install gawk
brew install switchaudio-osx
brew install nowplaying-cli
brew install skhd
brew install sketchybar
brew install borders
brew install yabai

### Terminal
brew install neovim

### Nice to have
brew install lazygit

## Casks
echo "Installing Brew Casks..."
brew install --cask wezterm
brew install --cask bruno

### Fonts
brew tap epk/epk
brew install font-sf-mono-nerd-font
brew install --cask font-sketchybar-app-font
brew install --cask sf-symbols

# Install Oh-My-Zsh
echo "Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install asdf and languages
echo "Installing asdf and languages..."
## Install
brew install asdf

## NodeJS
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
corepack enable
asdf reshim
corepack install pnpm

## Lua
asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git
asdf install lua latest
asdf global lua latest

## Finish asdf setup
asdf reshim
ln -s $HOME/.asdf/shims/lua /opt/homebrew/bin/lua

# Set up sketchybar lua
echo "Setting up Sketchybar Lua..."
(git clone https://github.com/FelixKratz/SbarLua.git /tmp/SbarLua && cd /tmp/SbarLua/ && make install && rm -rf /tmp/SbarLua/)

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
mas install 497799835 #xCode

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.swipescrolldirection -bool false
defaults write com.apple.dock "mru-spaces" -bool "false"

# Copying and checking out configuration files
echo "Planting Configuration Files..."
cp -r ./.config $HOME/
cp ./.zshrc $HOME/
source $HOME/.zshrc

# Start Services
echo "Starting Services (grant permissions)..."
brew services start skhd
brew services start yabai
brew services start sketchybar
brew services start borders

# Final Steps
csrutil status
echo "(optional) Disable SIP for advanced yabai features."
echo "(optional) Add sudoer manually:\n 'echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai"
echo "(optional) Set up git ssh key."
echo "(optional) Install fonts in font folder."
echo "Installation complete...\n"
