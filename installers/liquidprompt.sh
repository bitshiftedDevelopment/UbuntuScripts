#!/bin/bash

echo "Installing Liquidprompt"
cd
git clone https://github.com/nojhan/liquidprompt.git
echo "
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
" >> ~/.bashrc

echo "Liquidprompt installed. Please restart any open terminals."
