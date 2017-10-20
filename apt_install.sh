#!/bin/bash

# setup sources


cat <<EOF > /tmp/bootstrap.list
deb [arch=amd64] https://repo.skype.com/deb stable main
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-backports main restricted universe multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty main restricted
deb http://ch.archive.ubuntu.com/ubuntu/ zesty multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty universe
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates main restricted
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates multiverse
deb http://ch.archive.ubuntu.com/ubuntu/ zesty-updates universe
deb http://ppa.launchpad.net/ansible/ansible/ubuntu yakkety main
deb http://repository.spotify.com stable non-free 
deb http://security.ubuntu.com/ubuntu zesty-security main restricted
deb http://security.ubuntu.com/ubuntu zesty-security multiverse
deb http://security.ubuntu.com/ubuntu zesty-security universe
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-backports main restricted universe multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty main restricted
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty universe
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates main restricted
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates multiverse
deb-src http://ch.archive.ubuntu.com/ubuntu/ zesty-updates universe
deb-src http://security.ubuntu.com/ubuntu zesty-security main restricted
deb-src http://security.ubuntu.com/ubuntu zesty-security multiverse
deb-src http://security.ubuntu.com/ubuntu zesty-security universe

EOF

sudo cp /tmp/bootstrap.list /etc/apt/sources.list.d/


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 13B00F1FD2C19886
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 

sudo apt update


cat <<EOF > packages.list

emacs24 vim spideroakone svn subversion octave spotify-client scala
vim latexmk texlive-fonts-recommended texlive-latex-extra transfig
epstool fort77 libpcre3 libpcre3-dev 


EOF


# Install packages from list
sudo apt install -y `cat packages.list`

