#!/usr/bin/env bash
set -e
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
sudo yum install nodejs
npm i spirit1453/global_script#dev_z -g