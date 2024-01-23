#!/bin/bash

# Create the necessary directory
mkdir -p ~/.local/bin/

# Download the eDEX-UI AppImage
cd ~/.local/bin/
wget https://github.com/GitSquared/edex-ui/releases/download/v2.2.8/eDEX-UI-Linux-x86_64.AppImage

# Make the AppImage executable
chmod +x eDEX-UI-Linux-x86_64.AppImage

# Create a desktop entry
cat <<EOL > ~/.local/share/applications/edex.desktop
[Desktop Entry]
Name=eDEX-UI
Exec=/home/$USER/.local/bin/eDEX-UI-Linux-x86_64.AppImage
Type=Application
Categories=Utility;
EOL

# this may trigger as root, idk depends
sudo mv /home/$USER/.local/share/applications/edex.desktop /usr/share/xsessions/
