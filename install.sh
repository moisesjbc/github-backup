#!/bin/bash

# Install script.
sudo install -g 0 -o 0 -m 0755 ./script/github-backup.sh /usr/local/bin

# Install man page.
sudo mkdir /usr/local/man/man8/
sudo install -g 0 -o 0 -m 0644 ./script/github-backup.sh.8 /usr/local/man/man8/
sudo gzip /usr/local/man/man8/github-backup.sh.8


# Reference
###############################################################################
# HowTo: Linux / UNIX Create a Manpage - nixCraft
# http://www.cyberciti.biz/faq/linux-unix-creating-a-manpage/
###############################################################################
