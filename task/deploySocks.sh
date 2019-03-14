#!/usr/bin/env bash
curl -sSL https://get.docker.com -o get-docker.sh | bash;
systemctl start docker;
systemctl enable docker;
docker run --restart=always -d --name socks5 -p 1080:1080 -e PROXY_USER=hfs -e PROXY_PASSWORD=proxy@hfs serjs/go-socks5-proxy
sed -i 's/net.ipv4.ip_forward = 0/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf
systemctl restart network
