#!/bin/bash

echo "Parsing Options ..."
CONFIG_PATH=/data/options.json

echo "Starting OctoPrint"
su -c "/home/octoprint/startOctoPrint.sh" octoprint
