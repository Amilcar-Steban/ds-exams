#!/bin/sh

# Espera a que los otros contenedores estén listos
sleep 10

chmod +x entrypoint.sh

# Ejecuta el script de registro de servicio
/register-service/register-service.sh
