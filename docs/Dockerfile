# Stage 1: Construcción del entorno de Django
FROM python:3.9 AS builder

WORKDIR /app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código fuente de la aplicación Django
COPY . .

# Ejecuta las migraciones u otras operaciones necesarias
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput

# Stage 2: Preparación del servidor Nginx
FROM nginx:latest AS final

# Copia los archivos estáticos y de configuración de Nginx del stage anterior
COPY --from=builder /app/staticfiles /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80 para tráfico HTTP
EXPOSE 80

# Comando para iniciar Nginx una vez que el contenedor se ejecute
CMD ["nginx", "-g", "daemon off;"]
