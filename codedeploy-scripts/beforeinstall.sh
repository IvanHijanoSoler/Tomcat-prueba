#!/bin/bash

#Entramos en la carpeta del codigo de java. Usaremos variables del entorno para que funcione en multiples despliegues.
cd /opt/codedeploy-agent/deployment-root/${DEPLOYMENT_GROUP_ID}/${DEPLOYMENT_ID}/deployment-archive

#Damos los permisos necesarios para usar gradle
chmod +x gradlew

#Empaquetamos la aplicación java en .war con gradle
./gradlew war
