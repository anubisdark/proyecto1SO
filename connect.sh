#!/bin/bash

# Levanta los contenedores en segundo plano
docker compose up -d

# Pregunta qué contenedor quieres usar
echo "¿A qué contenedor deseas conectarte?"
echo "1) debian-gcc"
echo "2) gcc-container"
read -p "Elige una opción (1 o 2): " option

case $option in
  1)
    CONTAINER="debian-gcc"
    ;;
  2)
    CONTAINER="gcc-container"
    ;;
  *)
    echo "Opción inválida."
    exit 1
    ;;
esac

# Conectarse al contenedor seleccionado
docker exec -it $CONTAINER /bin/bash