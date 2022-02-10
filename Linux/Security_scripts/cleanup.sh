#!/bin/bash

#Removes all files in /tmp and /var/tmp
rm -rf /tmp/*
rm -rf /var/tmp/*

#clear the apt cache
apt clean -y

#clean all thumbnails
rm -rf /home/sysadmin/.cache/thumbnails
rm -rf /home/sysadmin/.cache/mozilla/firefox/uzezggkv.default-release/thumbnails


