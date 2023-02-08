#!/bin/bash
if ! command -v brew > /dev/null 2>&1; then
    bash ~/.config/package_setup/homebrew.sh;
fi

bash ~/.config/package_setup/packages.sh;
