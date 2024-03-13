#!/bin/sh

NGINX_IP="frontend"

# Dirección IP del servicio de Consul
CONSUL_HOST="consul"

# Puerto en el que el servicio está escuchando
SERVICE_PORT=8080

curl 'frontend:8080/'

# Registro del servicio en Consul
curl --request PUT --data \
'{
  "ID": "nginx-service",
  "Name": "nginx",
  "Tags": ["web"],
  "Address": "frontend",
  "Port": 80,
  "Check": {
    "HTTP": "http://frontend:8080/health",
    "Interval": "10s"
  }
}' \
http://consul:8500/v1/agent/service/register

