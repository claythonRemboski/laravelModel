#!/bin/bash
read -p "Nome da Factory: " factory_name
docker compose run --rm artisan make:factory $factory_name
