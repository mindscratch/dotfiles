#!/bin/bash

# backup existing bash profile if it exists
if [[ -f $HOME/.bash_profile ]]; then
  mv $HOME/.bash_profile $HOME/.bash_profile.bak
fi

ln -s $(pwd)/bash_profile $HOME/.bash_profile
ln -s $(pwd)/bash $HOME/.bash
