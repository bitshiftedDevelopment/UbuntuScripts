#!/bin/bash

echo "Installing Heroku CLI tool..."

## Heroku CLI
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku

echo "Heroku CLI tool installed."
