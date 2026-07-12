#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No version provided. Please run it as ./fetch.sh <version>"
    exit -1
fi

VER=$1
test -d srcs || mkdir srcs
curl -L -o srcs/v${VER}.zip https://github.com/open-policy-agent/opa/archive/refs/tags/v${VER}.zip

sed -i 's/VER/'${VER}'/g' snap/snapcraft.yaml
