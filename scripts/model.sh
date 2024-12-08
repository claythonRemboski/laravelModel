#!/bin/bash
read -p "Nome do Model: " model_name
docker compose run --rm artisan make:model $model_name
