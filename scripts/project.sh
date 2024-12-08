#!/bin/bash

mkdir src

sudo chown -R $USER:$USER ./src

docker compose run --rm composer create-project --prefer-dist laravel/laravel .
