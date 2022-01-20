#!/bin/sh
#
# Visual Studio Code
#
# This installs Visual Studio Code using Homebrew.

# Check for visual studio code
if test ! $(which code)
then
  echo "  Installing Visual Studio Code for you."

  brew install --cask visual-studio-code

fi

exit 0
