#!/bin/bash

docker compose run --rm composer require laravel/telescope --dev
docker compose run --rm artisan telescope:install
docker compose run --rm artisan migrate