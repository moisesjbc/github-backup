#!/bin/bash

# Check the number of arguments passed.
if [ $# -ne 1 ]; then
    printf "\nERROR: Wrong number of arguments\nUsage: %s <github_user>\n\n" $0
    exit 1
fi

# Retrieve Github user.
GITHUB_USER=${1}

# Access info about repositories.
GITHUB_USER_INFO_FILE="$GITHUB_USER.git"
curl -o ${GITHUB_USER_INFO_FILE} https://api.github.com/users/${GITHUB_USER}/repos

# Retrieve repositories clone urls.
REPOSITORIES_CLONE_URLS=$( sed -n 's/.*"clone_url": "\([a-z:_-\]\+\)".*/\1/p' ${GITHUB_USER_INFO_FILE} )

# Clone every repository.
for REPOSITORY_CLONE_URL in ${REPOSITORIES_CLONE_URLS}
do
	git clone --recursive $REPOSITORY_CLONE_URL
done

# Remove temporal file.
rm $GITHUB_USER_INFO_FILE

# Reference:
###############################################################################
# GitHub API v3
# https://developer.github.com/v3/
#
# Sed: Introducción a SED - Parte II
# http://es.kioskea.net/faq/3060-sed-introduccion-a-sed-parte-ii
#
# Bash For Loop Examples - nixCraft
# http://www.cyberciti.biz/faq/bash-for-loop/
#
# bash shell script check input argument - Stack Overflow
# http://stackoverflow.com/questions/6482377/bash-shell-script-check-input-argument
#
# Escape sequences with “echo -e” in different shells - Unix & Linux Stack Exchange
# http://unix.stackexchange.com/questions/88307/escape-sequences-with-echo-e-in-different-shells
#
# Bash printf syntax basics - LinuxConfig.org
# http://linuxconfig.org/bash-printf-syntax-basics-with-examples
###############################################################################
