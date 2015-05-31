#!/bin/bash

# Install script.
sudo cp ./github-backup.sh /usr/local/bin

# Install man page.
sudo mkdir /usr/local/man/man8/
sudo cp man/github-backup.sh.8 /usr/local/man/man8/github-backup.sh.8
sudo gzip /usr/local/man/man8/github-backup.sh.8

# Reference
###############################################################################
# HowTo: Linux / UNIX Create a Manpage - nixCraft
# http://www.cyberciti.biz/faq/linux-unix-creating-a-manpage/
###############################################################################
