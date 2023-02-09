#!/bin/bash
if ! command -v npm > /dev/null 2>&1; then
  echo "Installing npm..."
  brew install npm
fi
if ! command -v n > /dev/null 2>&1; then
  echo "Installing n ..."
  npm i -g n
fi
