#!/bin/bash
if ! command -v discord > /dev/null 2>&1; then
  echo "Installing discord..."
  brew install discord
fi
if ! command -v sublime-merge > /dev/null 2>&1; then
  echo "Installing sublime-merge..."
  brew install sublime-merge
fi
if ! command -v slack > /dev/null 2>&1; then
  echo "Installing slack..."
  brew install slack
fi
if ! command -v htop > /dev/null 2>&1; then
  echo "Installing htop..."
  brew install htop
fi
if ! command -v docker > /dev/null 2>&1; then
  echo "Installing docker..."
  brew install docker
fi
if ! command -v github > /dev/null 2>&1; then
  echo "Installing github..."
  brew install github
fi
if ! command -v kitty > /dev/null 2>&1; then
  echo "Installing kitty..."
  brew install kitty
fi
if ! command -v node > /dev/null 2>&1; then
  echo "Installing node..."
  brew install node
fi
if ! command -v npm > /dev/null 2>&1; then
  echo "Installing npm..."
  brew install npm
fi
if ! command -v python3 > /dev/null 2>&1; then
  echo "Installing python3..."
  brew install python3
fi
if ! command -v make > /dev/null 2>&1; then
  echo "Installing make..."
  brew install make
fi
if ! command -v insomnia > /dev/null 2>&1; then
  echo "Installing insomnia..."
  brew install insomnia
fi
if ! command -v obsidian > /dev/null 2>&1; then
  echo "Installing obsidian..."
  brew install obsidian
fi
