#!/bin/sh
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# link the .vimrc file
if [ -L ~/.vimrc ]; then
  rm ~/.vimrc
fi
if [ -f ~/.vimrc ]; then
  # back up the file
  mv ~/.vimrc ~/.vimrc.backup
fi
ln -s "$SCRIPT_DIR/.vimrc" ~/.vimrc

# link the .gvimrc file
if [ -L ~/.gvimrc ]; then
  rm ~/.gvimrc
fi
if [ -f ~/.gvimrc ]; then
  # back up the file
  mv ~/.gvimrc ~/.gvimrc.backup
fi
ln -s "$SCRIPT_DIR/.gvimrc" ~/.gvimrc

