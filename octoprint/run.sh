#!/bin/bash

echo "Parsing Options ..."
CONFIG_PATH=/data/options.json

echo "Set Permissions for OctoPrint config Path"
mkdir -p /config/octoprint
chown root:octoprint /config/octoprint
chmod 775 /config/octoprint

echo "Starting OctoPrint"
su -c "/home/octoprint/startOctoPrint.sh" octoprint
