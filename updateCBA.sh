#!/usr/bin/env bash

# Step 1 - Stop the Current Agent:
sudo pkill driveclient

# Step 2 - Get the Latest Agent:
sudo sh -c 'wget -q "http://agentrepo.drivesrvr.com/debian/agentrepo.key" -O- | apt-key add -'

# Step 3 - Install the Updated Agent:
sudo apt-get update; sudo apt-get install driveclient

# Step 4 - Start the Updated Agent:
sudo service driveclient start
