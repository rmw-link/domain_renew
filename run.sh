#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

./decrypt.sh

cd freenom
if [ ! -f .env ]; then
cp ../.env .
fi

docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app php:8 php run

# for : This scheduled workflow is disabled because there hasn't been activity in this repository for at least 60 days. Enable this workflow to resume scheduled runs.

