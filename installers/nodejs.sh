#!/bin/bash

## Get and run Node setup script and install nodejs
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

## Fix node_modules permissions for global package installation
mkdir ~/.node
echo "prefix = ~/.node" >> ~/.npmrc
echo "
PATH="$HOME/.node/bin:$PATH"
NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"
MANPATH="$HOME/.node/share/man:$MANPATH"
" >> ~/.profile
source ~/.profile

echo "NodeJs has been installed. Please log out and back in to continue."
