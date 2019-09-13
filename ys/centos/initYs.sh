#!/usr/bin/env bash
set -e
getTime(){
    date '+%s'
}
startTime=`getTime`
echo '********************************************'
echo 'version 0.0.5'
echo '******************************************** \n'


yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
yum install -y nodejs
node --version
npm --version
npmYsCmd='npm i spirit1453/global_script#dev_z -g'
echo $npmYsCmd
sudo $npmYsCmd
npm config set registry https://registry.npm.taobao.org/
npm config get registry
ysjs
echo "Time elapsed: `expr $endTime - $startTime` s"

endTime=`getTime`
