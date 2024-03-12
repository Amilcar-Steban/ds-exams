#!/bin/bash

# Registro del servicio en Consul
curl --request PUT --data '{ "ID": "nginx-service","Name": "nginx","Tags": ["web"],"Address": "'"$NGINX_IP"'","Port": 80,"Check": {  "HTTP": "http://'"$NGINX_IP"':80/health","Interval": "10s"}}' http://consul:8500/v1/agent/service/register

nginx -g 'daemon off;'