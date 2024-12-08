#!/bin/bash
read -p "Nome da Resource Collection(ExemploCollection): " collection_name
docker compose run --rm artisan make:resource $collection_name --collection
