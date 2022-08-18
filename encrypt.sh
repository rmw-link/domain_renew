#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR

. ./key.sh
tar -cJvf - .env | gpg --passphrase $GPG_KEY --batch --yes --symmetric > .env.txz.gpg
