#!/bin/bash

# creating user directory and check memory

echo " creating user now"
useradd abraham

echo " creating directory now"
mkdir /tmp/script

echo " displaying the memory please wait ......."
free -m         
