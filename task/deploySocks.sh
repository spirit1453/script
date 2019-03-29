#!/usr/bin/env bash
STARTTIME=$(date +'%s')
echo 'deployment start';
curl -S https://get.docker.com| bash;
systemctl start docker;
echo 'docker started';
systemctl enable docker;
echo 'docker enabled';
docker run --restart=always -d --name socks5 -p 1080:1080 -e PROXY_USER=hfs -e PROXY_PASSWORD=proxy@hfs serjs/go-socks5-proxy;
echo 'docker socks container started';
sed -i 's/net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf;
echo 'net.ipv4.ip_forward changed to 1'
systemctl restart network;
ENDTIME=$(date +%s)
echo 'socks5 deployed successfually :-)';
echo "It takes $(expr $ENDTIME - $STARTTIME) seconds to complete this task"

