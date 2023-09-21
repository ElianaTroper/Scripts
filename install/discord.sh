#!/usr/bin/bash
# TODO: Detect OS and install proper file

wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo apt install ./discord.deb
rm discord.deb
