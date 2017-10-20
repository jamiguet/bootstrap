#!/bin/bash

# The test plan is that we run each of the scripts on an ubuntu image
# that matches the version that we are running

# TODO pickup and image which is close enough if not the actual ubunu
# relase if not find a way of running all this in VM and provision
# with a shell provisioner in Vagrant

export TARGET_VERSION=17.04

cat <<EOF > testSetup.sh
#!/bin/bash
apt update 
apt install -y git

useradd -m -p welcome123 jamiguet
cd /home/jamiguet
cp  /bootstrap/* ./

EOF

chmod u+x testSetup.sh


docker run -it --rm -v$(pwd):/bootstrap -w/bootstrap ubuntu:$TARGET_VERSION bash -c "./testSetup.sh; ./bootstrap.sh; bash"

