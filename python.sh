#!/bin/bash

# Setting up python and related tooling

sudo apt install python-pip python3-distutils

sudo -H pip install virtualenvwrapper

mkdir -p /home/jamiguet/.virtualenvs
virtualenv -p /usr/bin/python3 /home/jamiguet/.virtualenvs/hy-land

source /home/jamiguet/.virtualenvs/hy-land/bin/activate
sudo -H pip install git+https://github.com/hylang/hy.git
sudo -H pip install git+https://github.com/hylang/hy.git

sudo chown -r jamiguet:jamiguet /home/jamiguet/.virtualenvs
