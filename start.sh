#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
git clone https://github.com/stam76/college -b heroku /tmp/ci
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b main /tmp/files
cd /tmp/files
rm -rf .git
cp -r . /tmp/ci
cd -
cd /tmp/ci
bash start.sh
