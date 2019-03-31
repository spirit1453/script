#!/usr/bin/env bash
curl -S https://get.docker.com| bash;
echo 'docker installed'
systemctl start docker;
echo 'docker started';
systemctl enable docker;
echo 'docker enabled';
