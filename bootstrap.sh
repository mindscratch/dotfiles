#!/bin/bash

for file in .bashrc .bash_profile .gitconfig git-completion.bash; do
  if [[ -f "$HOME/$file" ]]; then
    rm "$HOME/$file"
  fi
  ln -fs "${PWD}/$file" "$HOME/$file"
done
