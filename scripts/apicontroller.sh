#!/bin/bash

read -p "Nome do Controller (sem extensão php): " controller_name

docker compose run --rm artisan make:controller Api/$controller_name --resource --api