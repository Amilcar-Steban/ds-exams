#!/bin/sh

# Espera a que los otros contenedores estén listos
sleep 10

chmod +x /register-service.sh

# Ejecuta el script de registro de servicio
/register-service.sh
