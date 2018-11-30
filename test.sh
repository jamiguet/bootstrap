#!/bin/bash

# The test plan is that we run each of the scripts on an ubuntu image
# that matches the version that we are running

export TARGET_VERSION=18.10

# Before we can run the script to test them we do the following setup
# 1) update packages
# 2) create user and install basic dependencies
# 3) Clone the scripts
# 4) Run the scripts as the newly created user
# 5) bootstrap is hence run as a git clone execute combo

mkdir -p /tmp/$$

cat <<EOF > /tmp/$$/testSetup.sh
#!/bin/bash
apt update 
apt install -y git sudo dirmngr apt-transport-https

useradd -m -p welcome123 jamiguet
echo "jamiguet ALL=(ALL:ALL) NOPASSWD: ALL" >/etc/sudoers.d/jamiguet
chmod 0440 /etc/sudoers.d/jamiguet


sudo -u jamiguet git clone https://github.com/jamiguet/bootstrap.git /home/jamiguet/bootstrap

EOF

chmod u+x /tmp/$$/testSetup.sh
xhost +

docker run -it --rm -v/tmp/$$:/tmp/$$ ubuntu:$TARGET_VERSION bash -c "/tmp/$$/testSetup.sh; sudo su - jamiguet /home/jamiguet/bootstrap/bootstrap.sh; bash"

