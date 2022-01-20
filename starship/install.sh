#!/bin/sh
#
# starship
#
# This installs starship using Homebrew.

# Check for starship
if test ! $(which starship)
then
  echo "  Installing starship for you."

  brew install starship
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font

  echo "  --> change iTerm font to nerd font"
fi

exit 0
