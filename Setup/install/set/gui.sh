
# Brave
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update && sudo apt install brave-browser -y
	
# Gitkraken
	wget https://release.gitkraken.com/linux/gitkraken-amd64.deb && \
		sudo dpkg -i gitkraken-amd64.deb
	rm gitkraken-amd64.deb # XXX: This should run so long as the download completes
	
# Theme
	sudo add-apt-repository ppa:daniruiz/flat-remix -y && \
		sudo apt install flat-remix-gnome flat-remix flat-remix-gtk -y

# Gnome
	sudo apt install gnome-tweaks jq -y
	rm -f ./install-gnome-extensions.sh; wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh && chmod +x install-gnome-extensions.sh && ./install-gnome-extensions.sh --enable --file /home/troper/Configs/gnome-extensions.txt; rm -f ./install-gnome-extensions.sh
