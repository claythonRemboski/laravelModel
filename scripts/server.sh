#!/bin/bash
# Sobe apenas os containers necessários: nginx, php e mysql
docker compose up -d --build server

