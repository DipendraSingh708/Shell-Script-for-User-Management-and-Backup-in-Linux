#!/bin/bash


read -p "Enter username:" username
echo "you entered username for delete $username"

sudo userdel $username

echo "username deleted"
