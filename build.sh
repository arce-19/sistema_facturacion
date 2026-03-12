#!/usr/bin/env bash
# Salir inmediatamente si un comando falla
set -o errexit

# Instalar las librerías
pip install -r requisitos.txt

# Recolectar archivos estáticos (para que el CSS se vea bien)
python administrar.py collectstatic --no-input

# Aplicar migraciones a la base de datos de Render
python administrar.py migrate