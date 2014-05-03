#!/bin/bash

if [ $# -ne 3 ];then
    exit 1
fi

# HOSTED_URI=git@github.com:user/repo.git
# BARE_GIT=~/bare/repo.git
# WORK_GIT=~/work/repo

HOSTED_URI=$1
BARE_GIT=$2
WORK_GIT=$3

git clone --bare $HOSTED_URI $BARE_GIT
git clone $BARE_GIT $WORK_GIT

git --git-dir=$BARE_GIT remote add work $WORK_GIT

THIS_SCRIPT_PATH=$(cd $(dirname $0);pwd)
cp -r $THIS_SCRIPT_PATH/bare-hooks/* $BARE_GIT/hooks/

