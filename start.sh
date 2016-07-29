#!/bin/bash

DIR_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_PATH=~

#
# Vim setup
#
if [! -d  $HOME_PATH/.vim ]; then
  echo "Setting up vim..."
  VUNDLE_PATH = $DIR_PATH/vim/bundle/Vundle.vim
   if [ ! -d $VUNDLE_PATH ]; then
     echo "\tCloning vundle..."
     @git clone https://github.com/VundleVim/Vundle.vim.git $DIR_PATH/vim/bundle/Vundle.vim
     echo "done"
   fi

  ln -s $DIR_PATH/vim $HOME_PATH/.vim

  if [ -f $HOME_PATH/.vimrc ]; then
    read -p "Existing vimrc file found. remove? [y/n] " yn
    case $yn in
      y ) rm $HOME_PATH/.vimrc && ln -s $DIR_PATH/vim/_vimrc $HOME_PATH/.vimrc; break;;
      n ) echo "Skipping"
    esac
  else
    ln -s $DIR_PATH/vim/_vimrc $HOME_PATH/.vimrc
  fi

fi

#
# Intellij
#
if [! -f $HOME_PATH/.ideavimrc]; then
  echo "Symlink .ideavimrc"
  ln -s $DIR_PATH/_ideavimrc $HOME_PATH/.ideavimrc
fi
#
# I3
#
ln -s $DIR_PATH/i3 $HOME_PATH/.config/i3
ln -s $DIR_PATH/_i3status.conf $HOME_PATH/.i3status.conf

