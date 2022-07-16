#!/bin/bash
git config --global user.name "CI"
git config --global user.email "stam7612@flyymail.com"
curl https://raw.githubusercontent.com/arshsisodiya/helios-mirror/h-code/a2c.conf --output a2c.conf
cp a2c.conf /usr/src/app/a2c.conf
rm -rf /tmp/ci
rm -rf /tmp/files
git clone https://github.com/arshsisodiya/helios-mirror -b heroku /tmp/ci
git clone https://${SECRET_TOKEN}@github.com/stam76/files -b edu /tmp/files
cd /tmp/files
rm -rf .git
cp -r . /tmp/ci
cd -
cd /tmp/ci
python3 update.py && python3 -m bot
