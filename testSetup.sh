#!/bin/bash
apt update 
apt install -y git

useradd -m -p welcome123 jamiguet
cd /home/jamiguet
cp /bootstrap/* ./

