#!/bin/bash


sudo apt update

#needed for subsequent operations
sudo apt install dialog

export DEBIAN_FRONTEND=noninteractive

sudo apt upgrade --install-suggests -y

# setup sources
cat <<EOF > /tmp/bootstrap.list
deb [arch=amd64] https://repo.skype.com/deb stable main
deb http://repository.spotify.com stable non-free 
deb http://apt.spideroak.com/ubuntu-spideroak-hardy/ release restricted
EOF

sudo cp /tmp/bootstrap.list /etc/apt/sources.list.d/


REPO_KEYS="A87FF9DF48BF1C90 EFDC8610341D9410 13B00F1FD2C19886 93C4A3FD7BB9C367 573E3D1C51AE1B3D 1F3045A5DF7587C3 EFDC8610340D9411"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $REPO_KEYS 
sudo apt update

cat <<EOF > packages.list 

emacs25 vim spideroakone subversion octave spotify-client scala vim
latexmk texlive-fonts-recommended texlive-latex-extra fig2dev epstool
fort77 libpcre3 libpcre3-dev morris wget htop 

EOF





# Install packages from list
sudo apt install --install-suggests -y `cat packages.list`

# supplementary non apt packages

# TODO Put in here Rambox download

