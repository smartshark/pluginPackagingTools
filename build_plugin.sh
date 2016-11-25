#!/bin/bash

# The copy statements need to be adapted to the concrete plugin!

$PLUGIN_NAME=$1

current=`pwd`
mkdir -p "/tmp/$PLUGIN_NAME/"
cp -R ../plugin "/tmp/$PLUGIN_NAME/"
cp ../setup.py "/tmp/$PLUGIN_NAME/"
cp ../main.py "/tmp/$PLUGIN_NAME"
cp ../loggerConfiguration.json "/tmp/$PLUGIN_NAME"
cp * "/tmp/$PLUGIN_NAME/"
cd "/tmp/$PLUGIN_NAME/"

tar -cvf "$current/$PLUGIN_NAME_plugin.tar" --exclude=*.tar --exclude=build_plugin.sh --exclude=*/tests --exclude=*/__pycache__ --exclude=*.pyc *
