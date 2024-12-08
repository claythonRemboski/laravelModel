#!/bin/bash
read -p "Nome do Resource: " resource_name
docker compose run --rm artisan make:resource $resource_name
