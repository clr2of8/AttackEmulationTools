#!/bin/bash
ip=$(ip route get 8.8.8.8 | awk -F"src " 'NR==1{split($2,a," ");print a[1]}')
hostname=$(hostname)
sed -i -r "s/VECTR_HOSTNAME\=.*$/VECTR_HOSTNAME=$hostname/g" /opt/vectr/.env
cd /opt/vectr
docker-compose down
docker-compose up -d
