#!/usr/bin/env bash

# Global variables
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Yay
cat <<"EOF"
_____.___.             
\__  |   |____  ___.__.
 /   |   \__  \<   |  |
 \____   |/ __ \\___  |
 / ______(____  / ____|
 \/           \/\/     

EOF
if yay -Q yay; then
  echo "yay already installed"
else
  echo "Installing yay..."
  cd "$HOME"
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  if yay --version; then
    echo "yay installed successfully"
  else
    echo "yay installation failed"
    cd "$HOME"
    exit 1
  fi
  cd "$HOME"
  rm -rf yay
fi

# Nvidia
cat <<"EOF"
 _______       .__    .___.__        
 \      \___  _|__| __| _/|__|____   
 /   |   \  \/ /  |/ __ | |  \__  \  
/    |    \   /|  / /_/ | |  |/ __ \_
\____|__  /\_/ |__\____ | |__(____  /
        \/             \/         \/ 

EOF
if yay -Q linux-headers nvidia-dkms nvidia-utils egl-wayland libva-nvidia-driver; then
    sudo systemctl enable nvidia-suspend
    sudo systemctl enable nvidia-hibernate
    sudo systemctl enable nvidia-resume
    echo "nvidia already setup"
else
    echo "Installing Nvidia drivers..."
    yay -S linux-headers nvidia-dkms nvidia-utils egl-wayland libva-nvidia-driver
    sudo systemctl enable nvidia-suspend
    sudo systemctl enable nvidia-hibernate
    sudo systemctl enable nvidia-resume
    if yay -Q linux-headers nvidia-dkms nvidia-utils egl-wayland libva-nvidia-driver; then
        echo "Nvidia drivers installed successfully"
    else
        echo "Nvidia driver installation failed"
        exit 1
    fi
fi

# Packages
cat <<"EOF"
__________                __                                  
\______   \_____    ____ |  | _______     ____   ____   ______
 |     ___/\__  \ _/ ___\|  |/ /\__  \   / ___\_/ __ \ /  ___/
 |    |     / __ \\  \___|    <  / __ \_/ /_/  >  ___/ \___ \ 
 |____|    (____  /\___  >__|_ \(____  /\___  / \___  >____  >
                \/     \/     \/     \//_____/      \/     \/ 

EOF
echo "Installing packages..."
packages_file="${script_dir}/packages.lst"

if [ ! -f "$packages_file" ]; then
  echo "script_dir ${script_dir}"
  echo "packages_file ${packages_file}"
  echo "Error: packages.lst file not found!"
  exit 1
fi

# Parse packages list and install with yay
all_packages=()
while IFS= read -r line; do
  # Skip empty lines and comments
  if [[ -z "$line" || "$line" =~ ^# ]]; then
    continue
  fi

  # Extract package name (everything before # or | if present)
  package=$(echo "$line" | sed -E 's/[#|].*$//' | xargs)

  # Skip if empty after processing
  if [ -n "$package" ]; then
    # Check if already installed
    if ! pacman -Qi "$package" &>/dev/null; then
      echo "Queueing $package"
      all_packages+=("$package")
    else
      echo "Skipping $package (already installed)"
    fi
  fi
done <"$packages_file"

# Install all packages at once if any found
if [ ${#all_packages[@]} -gt 0 ]; then
  echo "Installing ${#all_packages[@]} packages..."
  yay -S "${all_packages[@]}"
else
  echo "No packages to install."
fi
echo "Package installation complete."

# SDDM
cat <<"EOF"
  _________________  ________      _____   
 /   _____/\______ \ \______ \    /     \  
 \_____  \  |    |  \ |    |  \  /  \ /  \ 
 /        \ |    `   \|    `   \/    Y    \
/_______  //_______  /_______  /\____|__  /
        \/         \/        \/         \/ 

EOF
echo "Setting up SDDM and theme..."
sudo systemctl enable sddm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
sudo tee /etc/sddm.conf <<EOF
[Theme]
Current=sddm-astronaut-theme
EOF
echo "SDDM and theme setup complete."

# Grub
cat <<"EOF"
  ________           ___.    
 /  _____/______ __ _\_ |__  
/   \  __\_  __ \  |  \ __ \ 
\    \_\  \  | \/  |  / \_\ \
 \______  /__|  |____/|___  /
        \/                \/ 

EOF
echo "Setting up Grub..."
cd "$HOME"
git clone https://github.com/Lxtharia/minegrub-theme.git
cd ./minegrub-theme
./choose_background.sh
sudo cp -ruv ./minegrub /boot/grub/themes/
if grep -q "^GRUB_THEME=" /etc/default/grub; then
  # Replace existing GRUB_THEME line
  sudo sed -i 's|^GRUB_THEME=.*|GRUB_THEME=/boot/grub/themes/minegrub/theme.txt|' /etc/default/grub
else
  # Add GRUB_THEME line if it doesn't exist
  echo 'GRUB_THEME=/boot/grub/themes/minegrub/theme.txt' | sudo tee -a /etc/default/grub >/dev/null
fi
sudo grub-mkconfig -o /boot/grub/grub.cfg
cd "$HOME"
echo "Grub setup complete."

# Copy dotfiles
cat <<"EOF"
________          __    _____.__.__                 
\______ \   _____/  |__/ ____\__|  |   ____   ______
 |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
 |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \ 
/_______  /\____/|__|  |__|  |__|____/\___  >____  >
        \/                                \/     \/ 

EOF
echo "Copying dotfiles..."
mkdir -p "$HOME/.config"
cp -rv "$script_dir/Config/"* "$HOME/.config/"
echo "Dotfiles setup complete."

# Copy wallpapers
cat <<"EOF"
 __      __        .__  .__                                           
/  \    /  \_____  |  | |  | ___________  ______   ___________  ______
\   \/\/   /\__  \ |  | |  | \____ \__  \ \____ \_/ __ \_  __ \/  ___/
 \        /  / __ \|  |_|  |_|  |_> > __ \|  |_> >  ___/|  | \/\___ \ 
  \__/\  /  (____  /____/____/   __(____  /   __/ \___  >__|  /____  >
       \/        \/          |__|       \/|__|        \/           \/ 

EOF
echo "Copying wallpapers..."
mkdir -p "$HOME/Pictures/Wallpapers"
cp -rv "$script_dir/Wallpapers/"* "$HOME/Pictures/Wallpapers/"
echo "Wallpaper setup complete."

# Setup zsh
cat <<"EOF"
__________  _________ ___ ___  
\____    / /   _____//   |   \ 
  /     /  \_____  \/    ~    \
 /     /_  /        \    Y    /
/_______ \/_______  /\___|_  / 
        \/        \/       \/  

EOF
echo "Setting up zsh..."
chsh -s /usr/bin/zsh
cp -v "$script_dir/.zshrc" "$HOME"
echo "Zsh setup complete"