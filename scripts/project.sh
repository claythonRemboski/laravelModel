#!/bin/bash

cd ..

mkdir src

sudo chown -R $USER:$USER ./src

# Executa o comando do Docker Compose
docker compose run --rm composer create-project --prefer-dist laravel/laravel .
