# Descripcion del Problema
Al lanzar la ejecucion del frontend en react este funciona con normalidad sin embargo al realizar un cambio de direccion este colapsa y no es posible encontrar el endpoint deseado.

## Solucion
Para solucionar este problema es necesaria la creacion de un archivo *.config* en este archivo se establece el puerto de salida y entrada para solicitudes de http asi mismo extrae las vistas que se encuentran dentro del archivo index.html generado al construir la aplicacion de react y ser expuesta ejecutada en nginx.

```
server {
         listen 80;
         listen [::]:80;
         root /usr/share/nginx/html;
         location / {
              try_files $uri /index.html;
         }
}
```

Asi mismo es necesario agregar una linea mas de codigo al dockerfile del frontend para aplicar estos cambios dentro de la imagen de nginx de docker.

```
## BUILD
# docker build -t mifrontend:0.1.0-nginx-alpine -f nginx.Dockerfile .
## RUN
# docker run -d -p 3000:80 mifrontend:0.1.0-nginx-alpine
FROM node:18.14.0-buster-slim as compilacion

LABEL developer="jesus guzman" \
      email="susguzman@gmail.com"

ENV REACT_APP_BACKEND_BASE_URL=http://localhost:3800

# Copy app
COPY . /opt/app

WORKDIR /opt/app

# Npm install
RUN npm install

RUN npm run build

# Fase 2
FROM nginx:1.22.1-alpine as runner

COPY --from=compilacion /opt/app/build /usr/share/nginx/html

# Linea de codigo para agregar los cambios de default.conf
COPY --from=compilacion /opt/app/default.conf /etc/nginx/conf.d/default.conf
```