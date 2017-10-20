#!/bin/bash

LINKED_FILES=" opt/emacs/emacs.d opt/bin/ opt/emacs/.gnus opt/emacs/emacs.d/ opt/skel/.signature opt/skel/bash_aliases opt/emacs/.emacs"

cd ~

for file in $LINKED_FILES; do
    ln -s $file
done

g
