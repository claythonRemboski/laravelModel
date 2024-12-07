#!/bin/bash

read -p "Nome do Service (sem extensão php): " service_name

directory="./src/app/Services"
file_path="$directory/$service_name.php"

mkdir -p $directory

echo "<?php

namespace App\Services;

class $service_name
{
    // Adicione seus métodos aqui
}
" > $file_path

echo "$service_name criado em $file_path"
