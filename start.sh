#!/bin/bash

# Limpiar contenedores anteriores
docker compose down

# Construir e iniciar
docker compose up -d --build

# Conectarse automáticamente
ssh devcontainer