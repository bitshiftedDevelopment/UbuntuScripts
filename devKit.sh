#!/bin/bash

## Update system
sudo apt-get update
sudo apt-get upgrade

## System Packages
echo "Installing needed packages"
sudo apt-get install -y build-essential localepurge git curl shellcheck

# NodeJS setup script
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
# Atom repo
sudo add-apt-repository ppa:webupd8team/atom

sudo apt-get update
echo "Installing Atom and NodeJS"
sudo apt-get install -y atom nodejs

## Install liquidprompt
echo "Installing Liquidprompt"
cd
git clone https://github.com/nojhan/liquidprompt.git
echo "
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
" >> ~/.bashrc

## Fix node permissions
mkdir ~/.node
echo "prefix = ~/.node" >> ~/.npmrc
echo "
PATH="$HOME/.node/bin:$PATH"
NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"
MANPATH="$HOME/.node/share/man:$MANPATH"
" >> ~/.profile
source ~/.profile


## Heroku CLI
#sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
#curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install heroku
