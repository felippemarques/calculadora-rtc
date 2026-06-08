#!/bin/sh

if [ ! -f /app/calculadora/db/calculadora-pro.db ]; then
  echo "Copiando banco inicial para o volume..."
  cp /backup/calculadora-pro.db /app/calculadora/db/calculadora-pro.db
fi

exec java -jar app.jar --spring.profiles.active=offline