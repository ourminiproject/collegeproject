#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
git clone https://github.com/stam76/college -b heroku college
chmod 777 college
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b heroku files
cd files
rm -rf .git
cp -r . college
cd -
cd college

bash start.sh
