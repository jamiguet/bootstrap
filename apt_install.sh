#!/bin/bash

# setup sources


cat <<EOF > /tmp/bootstrap.list
deb [arch=amd64] https://repo.skype.com/deb stable main
deb http://ppa.launchpad.net/ansible/ansible/ubuntu yakkety main
deb http://repository.spotify.com stable non-free 
deb http://apt.spideroak.com/ubuntu-spideroak-hardy/ release restricted
EOF

sudo cp /tmp/bootstrap.list /etc/apt/sources.list.d/


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 13B00F1FD2C19886
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 573E3D1C51AE1B3D
sudo apt update


cat <<EOF > packages.list
emacs24 vim spideroakone subversion octave spotify-client scala
vim latexmk texlive-fonts-recommended texlive-latex-extra transfig
epstool fort77 libpcre3 libpcre3-dev 
EOF


# Install packages from list
sudo apt install -y `cat packages.list`

