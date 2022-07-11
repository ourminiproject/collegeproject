#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
curl https://raw.githubusercontent.com/anasty17/mirror-leech-telegram-bot/h-code/a2c.conf --output a2c.conf
cp a2c.conf /usr/src/app/a2c.conf
rm -rf /tmp/ci
rm -rf /tmp/files
git clone https://github.com/arshsisodiya/helios-mirror -b heroku /tmp/ci
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b heroku /tmp/files
cd /tmp/files
rm -rf .git
cp -r . /tmp/ci
cd -
chmod 777 /tmp/ci
cd /tmp/ci
bash start.sh
