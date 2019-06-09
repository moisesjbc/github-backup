# Github Backup

A bash script for cloning all the Github **public** repositories of a given user

## Installing the script (Tested on Ubuntu 14.04)

1. Install the dependencies

 ```
 sudo apt-get install curl git zip
 ```

2. Clone this repository (if you haven't done yet).

 ```
 git clone https://github.com/moisesjbc/github-backup.git
 ```

3. Run the install script

 ```
 cd github-backup
 ./install.sh
 ```

## Using the script

Simply run:

 ```
 github-backup.sh <username>
 ```

where &lt;username&gt; is your Github username. For example, if you want to backup all of my repositories, simply run

 ```
 github-backup.sh moisesjbc
 ```
