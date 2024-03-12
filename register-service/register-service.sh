#!/bin/sh

# Dirección IP del contenedor actual
CONTAINER_IP=$(hostname -i)

# Dirección IP del servicio de Consul
CONSUL_HOST="consul"

# Puerto en el que el servicio está escuchando
SERVICE_PORT=80

# URL de la verificación de salud del servicio
HEALTH_CHECK_URL="http://localhost:${SERVICE_PORT}/health"

# Registro del servicio en Consul
curl --request PUT \
  --data '{
    "ID": "nginx-service",
    "Name": "nginx",
    "Tags": ["web"],
    "Address": "'"$CONTAINER_IP"'",
    "Port": '"$SERVICE_PORT"',
    "Check": {
      "HTTP": "'"$HEALTH_CHECK_URL"'",
      "Interval": "10s"
    }
  }' \
  http://$CONSUL_HOST:8500/v1/agent/service/register
