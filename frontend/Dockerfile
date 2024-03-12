# Utiliza una imagen base de Nginx
FROM nginx:alpine

# Elimina la configuración predeterminada de Nginx
RUN rm /etc/nginx/conf.d/default.conf

RUN apk --no-cache add curl


# Copia la configuración personalizada de Nginx al contenedor
COPY nginx.conf /etc/nginx/nginx.conf

# Copia el archivo index.html al contenedor
COPY index.html /usr/share/nginx/html/index.html
# Copia el script de inicialización al contenedor
COPY init.sh /usr/local/bin/init.sh

# Dar permisos de ejecución al script de inicialización
RUN chmod +x /usr/local/bin/init.sh

#RUN sh /usr/local/bin/init.sh

# Expone el puerto 80
EXPOSE 80

# Ejecuta el script de registro de servicio y luego inicia Nginx
CMD ["/bin/sh","/usr/local/bin/init.sh"]
