# Utiliza una imagen base de Nginx
FROM nginx:alpine

# Elimina la configuración predeterminada de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia la configuración personalizada de Nginx al contenedor
COPY nginx.conf /etc/nginx/nginx.conf

# Copia el archivo index.html al contenedor
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/
# Expone el puerto 80
EXPOSE 8080

# Inicia Nginx
CMD ["nginx", "-g", "daemon off;"]