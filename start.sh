#!/bin/bash
git config --global user.name "CI"
git config --global user.email "ourminiproject@proton.me"
git clone https://${SECRET_TOKEN}@github.com/ourminiproject/repo -b main /tmp/files
cd /tmp/files
bash start.sh
