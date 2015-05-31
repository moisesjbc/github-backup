#!/bin/bash

# Access info about repositories.
GITHUB_USER_INFO_FILE="${1}.git"
curl -o ${GITHUB_USER_INFO_FILE} https://api.github.com/users/${1}/repos

# Retrieve repositories clone urls.
REPOSITORIES_CLONE_URLS=$( sed -n 's/.*"clone_url": "\([a-z:_-\]\+\)".*/\1/p' ${GITHUB_USER_INFO_FILE} )

# Clone every repository.
for REPOSITORY_CLONE_URL in ${REPOSITORIES_CLONE_URLS}
do
	git clone $REPOSITORY_CLONE_URL
done

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
###############################################################################
