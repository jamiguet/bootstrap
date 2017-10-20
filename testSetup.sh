#!/bin/bash
apt update 
apt install -y git sudo

useradd -m -p welcome123 jamiguet
sudo su - jamiguet

cp  /bootstrap/* ./

pwd
