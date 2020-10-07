#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/repos/dotfiles                    # dotfiles directory
olddir=~/repos/dotfiles_old             # old dotfiles backup directory
files="bash_aliases bashrc gitconfig gitignore gitmessage gvimrc vimrc vimrc.bundles Xmodmap xsessionrc" # ignored for now: fonts.conf xinitrc fonts colors
# list of files/folders to symlink in homedir



##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# special case for rc.lua
echo "Moving rc.lua from ~/config/awesome to $olddir"
mv ~/.config/awesome/rc.lua $olddir
echo "Creating symlink to rc.lua in config/awesome directory."
ln -s $dir/rc.lua ~/.config/awesome/rc.lua

