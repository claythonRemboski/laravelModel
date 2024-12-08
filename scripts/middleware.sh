#!/bin/bash
read -p "Nome do Middleware: " middleware_name
docker compose run --rm artisan make:middleware $middleware_name

