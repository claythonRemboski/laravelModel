#!/bin/bash
read -p "Nome do Seeder: " seeder_name
docker compose run --rm artisan make:seeder $seeder_name
