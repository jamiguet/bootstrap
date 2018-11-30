#!/bin/bash

# Setting up python and related tooling

sudo apt install python-pip python3-distutils

pip install virtualenvwrapper

mkdir -p /home/jamiguet/.virtualenvs
virtualenv -p /usr/bin/python3 /home/jamiguet/.virtualenvs/hy-land

source /home/jamiguet/.virtualenvs/hy-land/bin/activate
pip install git+https://github.com/hylang/hy.git
pip install git+https://github.com/hylang/hy.git

chown -t jamiguet:jamiguet /home/jamiguet/.virtualenvs
