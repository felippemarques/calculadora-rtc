#!/bin/sh

# Copia o banco apenas se não existir no volume (primeira execução)
if [ ! -f /data/calculadora.db ]; then
  echo "Banco não encontrado no volume, copiando banco inicial..."
  cp /app/calculadora/db/calculadora.db /data/calculadora.db
fi

exec java -jar app.jar --spring.profiles.active=offline
