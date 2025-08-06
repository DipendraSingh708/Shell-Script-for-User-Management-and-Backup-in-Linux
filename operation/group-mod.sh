#!/bin/bash

read -p "Enter old Groupname" oldgroupname
read -p "Enter new Groupname" newgroupname

echo "entered old groupname: $oldgroupname"
echo "entered new groupname: $newgroupname"

sudo groupmod -n $newgroupname $oldgroupname

echo "group rename successfully"
