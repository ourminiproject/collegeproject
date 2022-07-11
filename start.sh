#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
ls
pwd
git clone https://github.com/anasty17/mirror-leech-telegram-bot -b h-code /tmp/ci
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b main /tmp/files
cd /tmp/files
rm -rf .git
cp -r . /tmp/ci
cd -
cd /tmp/ci
bash start.sh
