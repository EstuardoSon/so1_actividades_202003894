#!/usr/bin/env bash
jq --version
if test $? -eq 1;then sudo apt-get update sudo apt-get install jq; fi

echo "Ingrese su usuario git: "
read GITHUB_USER
respuesta=`curl https://api.github.com/users/$GITHUB_USER -H "Accept: application/json" -s`
echo "Hola $GITHUB_USER. User ID: $(echo $respuesta| jq -r '.id'). Cuenta fue creada el: $(echo $respuesta | jq -r '.created_at')"

fecha=`date +"%F"`
echo "Hola $GITHUB_USER. User ID: $(echo $respuesta| jq -r '.id'). Cuenta fue creada el: $(echo $respuesta | jq -r '.created_at')" >> /tmp/$fecha/saludos.log
