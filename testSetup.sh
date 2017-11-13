#!/bin/bash
apt update 
apt install -y git sudo

useradd -m -p welcome123 jamiguet
echo "jamiguet ALL=(ALL:ALL) ALL" >/etc/sudoers.d/jamiguet
chmod 0440 /etc/sudoers.d/jamiguet


sudo -u jamiguet git clone https://github.com/jamiguet/bootstrap.git /home/jamiguet/bootstrap

sudo -u jamiguet mkdir -p /home/jamiguet/Downloads

pwd
