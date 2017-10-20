#!/bin/bash

# All scripts being run. Order matters
SCRIPTS="apt_install.sh symlink.sh"


git clone https://github.com/jamiguet/bootstrap.git

# Runs all the scripts
for file in $SCRIPTS; do
    ./bootstrap/$file
done

# Put in here some basic health tests
# If we can figure out some

