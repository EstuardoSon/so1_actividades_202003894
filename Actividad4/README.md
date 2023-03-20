# Instalacion del Servicio
Lo primero es copiar el script Servicio.sh dentro de la carpeta /usr/local/bin

```
sudo cp Servicio.sh /usr/local/bin
```

Como segundo paso, se debe dar permiso de ejecucion al archivo.

```
sudo chmod +x /usr/local/bin/Servicio.sh
```

Como tercer paso, se debe copiar el archivo mi-servicio.service a la ruta /etc/systemd/system

```
sudo cp mi-servicio.service /etc/systemd/system/mi-servicio.service
```

Como cuarto paso, se le otorga permisos al servicio

```
sudo systemctl status mi-servicio
```

Como quinto paso se inicia el servicio y se verifica su estado

```
sudo systemctl start mi-servicio

sudo systemctl status mi-servicio
```