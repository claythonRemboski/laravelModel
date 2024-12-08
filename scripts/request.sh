#!/bin/bash
read -p "Nome do Request: " request_name
docker compose run --rm artisan make:request $request_name
