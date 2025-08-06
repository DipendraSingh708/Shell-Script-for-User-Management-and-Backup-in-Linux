#!/bin/bash

read -p "Enter Groupname : " groupname

echo "entered groupname: $groupname"

sudo groupdel $groupname

echo "group deleted successfully"
