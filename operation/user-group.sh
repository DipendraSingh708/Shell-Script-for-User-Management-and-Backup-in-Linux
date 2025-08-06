#!/bin/bash

read -p "Enter Groupname" groupname
read -p "Enter Username" username

echo "entered groupname: $groupname"
echo "entered Username: $username"

sudo usermod -aG $groupname $username

echo "User added to group successfully"
