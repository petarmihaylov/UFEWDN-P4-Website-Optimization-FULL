#!/usr/bin/env bash

echo "Updating npm..."
npm install --global npm@latest

echo "Install node-gyp"
npm install -g node-gyp

echo "Install Bower and Gulp"
npm install --global bower
npm install --global gulp

echo "Confirming installation"
bower --version && gulp --version
