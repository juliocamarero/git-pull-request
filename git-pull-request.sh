#!/bin/bash

> /tmp/git-pull-request-chdir

PR=`dirname $BASH_SOURCE`
$PR/git-pull-request.py "$@"

DIR=`cat /tmp/git-pull-request-chdir`

if [ -n "$DIR" ]; then
	cd $DIR
fi