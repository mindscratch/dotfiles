#!/bin/sh
#
# PHP
#
# This installs PHP using Homebrew.

# Check for PHP
if test ! $(which php)
then
  _version=7.4
  echo "  Installing PHP version ${_version} for you."

  brew install php@${_version}

fi

exit 0
