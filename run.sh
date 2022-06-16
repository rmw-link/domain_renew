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
