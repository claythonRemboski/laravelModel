#!/bin/bash
# Executa as migrações utilizando o container artisan
docker compose run --rm artisan migrate

