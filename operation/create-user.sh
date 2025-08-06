#!/bin/bash

read -p "Enter a username: " username

echo "You Entered $username"

sudo useradd -m $username

echo "New user added"
