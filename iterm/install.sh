#!/bin/sh
#
# iTerm2
#
# This installs iTerm2 using Homebrew.

# Check for iTerm2
if [[ $(mdfind "kMDItemCFBundleIdentifier == com.googlecode.iterm2") != "/Applications/iTerm.app" ]]
then
  echo "  Installing iTerm2 for you."

  brew install --cask iterm2

fi

exit 0
