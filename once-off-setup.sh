#!/bin/bash

here=$(realpath $(dirname "${BASH_SOURCE[0]}"))

now=$(date -Is)
#for f in bash_profile bashrc bash_utils gitconfig gitignore inputrc slurm_utils vim vimrc ; do
#	[[ -e $HOME/.$f ]] && mv $HOME/.$f $HOME/$f.bak-$now
#	ln -s $here/$f $HOME/.$f
#done

mkdir -p $HOME/bin
for f in $(/bin/ls $here/bin) ; do
	[[ -e $HOME/bin/$f ]] && mv $HOME/bin/$f $HOME/bin/$f.bak-$now
	ln -s $here/bin/$f $HOME/bin/$f
done
