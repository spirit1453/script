#!/usr/bin/env bash
set -e
getTime(){
    date '+%s'
}
startTime=`getTime`
echo '********************************************'
echo 'version 0.0.1'
echo '******************************************** \n'


yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
yum install -y nodejs
sudo npm i spirit1453/global_script#dev_z -g

echo "Time elapsed: `expr $endTime - $startTime` s"

endTime=`getTime`
