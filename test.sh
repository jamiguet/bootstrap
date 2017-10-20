#!/bin/bash

# The test plan is that we run each of the scripts on an ubuntu image
# that matches the version that we are running

# TODO pickup and image which is close enough if not the actual ubunu
# relase if not find a way of running all this in VM and provision
# with a shell provisioner in Vagrant

export TARGET_VERSION=17.04


docker run -iat --rm docker.registry.com:ubuntu/$TARGET_VERSION  ./bootstrap.sh

