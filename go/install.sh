#!/bin/sh
#
# Golang
#
# This installs Go (golang) using Homebrew.

# Check for Go
if test ! $(which go)
then
  _version=1.17
  echo "  Installing Go version ${_version} for you."

  brew install go@${_version}

fi

exit 0
