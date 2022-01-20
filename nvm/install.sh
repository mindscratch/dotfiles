#!/bin/sh
#
# nvm - node version manager
#
# This installs nvm using Homebrew.

# Check for nvm
if test ! $(which nvm)
then
  echo "  Installing nvm for you."

  brew install nvm

fi

exit 0
