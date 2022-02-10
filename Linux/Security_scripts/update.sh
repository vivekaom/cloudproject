#!/bin/bash

#update apt
apt update -y

#upgrade all installed packages
apt upgrade -y

#install new packages and upgrade the system
apt full-upgrade -y

#remove unnecessary packages and their associated configurations
apt autoremove --purge -y

