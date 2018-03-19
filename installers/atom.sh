#!/bin/bash
echo "Installing Atom"
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom && echo "Atom installed successfully"
