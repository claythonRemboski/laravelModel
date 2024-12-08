#!/bin/bash
read -p "Nome do Job: " job_name
docker compose run --rm artisan make:job $job_name