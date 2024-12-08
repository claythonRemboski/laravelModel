#!/bin/bash
read -p "Nome da tabela: " table_name
docker compose run --rm artisan make:migration create_table_${table_name} --create=${table_name}
