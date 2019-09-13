#!/usr/bin/env bash
set -e
getTime(){
    date '+%s'
}
startTime=`getTime`

echo "Time elapsed: `expr $endTime - $startTime` s"
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
yum install -y nodejs
npm i spirit1453/global_script#dev_z -g
endTime=`getTime`
