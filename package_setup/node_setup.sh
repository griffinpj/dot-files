#!/bin/bash
if ! command -v npm > /dev/null 2>&1; then
  echo "Installing npm..."
  brew install npm
fi
if ! command -v n > /dev/null 2>&1; then
  echo "Installing n ..."
  npm i -g n && sudo n 16.14.2
fi
if ! command -v pnpm > /dev/null 2>&1; then
  echo "Installing pnpm ..."
  npm i -g pnpm
fi
if ! command -v gulp > /dev/null 2>&1; then
  echo "Installing gulp..."
  npm i -g gulp
fi
if ! command -v knex > /dev/null 2>&1; then
  echo "Installing knex..."
  npm i -g knex
fi
