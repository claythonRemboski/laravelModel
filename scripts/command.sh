#!/bin/bash
read -p "Nome do Command: " command_name
docker compose run --rm artisan make:command $command_name

