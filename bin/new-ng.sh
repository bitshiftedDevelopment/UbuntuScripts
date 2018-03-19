#!/bin/bash
echo "Creating new Angular project in $1"
ng new $1 --style=scss
cd $1
npm install
