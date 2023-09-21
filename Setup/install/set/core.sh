#!/usr/bin/env bash

# This script sets up core items for all systems
# You might have to enter your password several times!

# Updates
sudo apt update && sudo apt upgrade -y

# Basics
sudo apt install -y \
	vim \
	fonts-powerline \
	w3m \
	htop \
	net-tools \
	tmux \
	curl \
	git \
	build-essential \
	python3-venv \
	python3-pip \
	npm \
	tree \
	cifs-utils \
	git-lfs \
	zsh \
	golang-go \
	apache2-utils \
	unattended-upgrades \
	keychain \
	python-is-python3
# XXX: unattended-upgrades - Auto upgrades are nice, but a vector...
# XXX: keychain - Opens up possibility of memory based attacks
# XXX: python-is-python3 - May break things
	
# Unattended upgrades
sudo rm /etc/apt/apt.conf.d/50unattended-upgrades && sudo ln -s /home/troper/Configs/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
sudo rm /etc/apt/apt.conf.d/20auto-upgrades && sudo ln -s /home/troper/Configs/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades

# Enables git lfs	
git lfs install
	
# Sets shell to zsh
chsh -s $(which zsh)

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/troper/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# TODO: Only run these if the priors succeed

# Vim plugins
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
# TODO: Missing vim airline

# Firewall on
sudo ufw enable

# Update node
sudo npm install -g n && sudo n latest

# English linters
pip install proselint
sudo npm install -g write-good

