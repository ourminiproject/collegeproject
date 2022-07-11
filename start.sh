#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
curl -O a2c.conf https://raw.githubusercontent.com/anasty17/mirror-leech-telegram-bot/h-code/a2c.conf
cp a2c.conf /usr/src/app/a2c.conf
git clone https://github.com/stam76/college -b heroku college
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b heroku files
cd files
rm -rf .git
cp -r . college
cd -
cd college
bash start.sh
 
