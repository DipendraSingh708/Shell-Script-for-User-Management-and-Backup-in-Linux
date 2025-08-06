#!/bin/bash

read -p "Enter Groupname: " groupname

echo "entered groupname: $groupname"

sudo groupadd $groupname

echo "group added successfully"
