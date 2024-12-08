#!/bin/bash
# Sobe apenas os containers necessários (nginx, php, mysql)
docker compose up -d server php mysql

