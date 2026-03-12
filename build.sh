#!/usr/bin/env bash
set -o errexit

pip install -r requisitos.txt
python administrar.py collectstatic --no-input
python administrar.py migrate
