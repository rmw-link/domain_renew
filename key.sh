#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR

PASSWD_FILE=$HOME/.config/freeom.key
if [ -f "$PASSWD_FILE" ]; then
export KEY=$(cat $PASSWD_FILE)
fi
