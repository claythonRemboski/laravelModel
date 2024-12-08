# Laravel Model

Este é um modelo para projetos em Laravel que visa facilitar o desenvolvimento, utilizando containers docker como utilitários.
Com poucos comandos é possível criar os arquivos e rodar migrations, criar seeders, models, etc. Tudo diretamente do host.

# Alias para executar os scripts:
- Abra o terminal e digite `nano ~/.bashrc`
- Cole a função abaixo ao final do arquivo, ou onde preferir.
```bash
make() {
  script_name="$1"
  script_path="$(pwd)/scripts/$script_name.sh"
  if [ -f "$script_path" ]; then
    bash "$script_path"
  else
    echo "Script '$script_name.sh' não encontrado!"
  fi
}
```
- Salve e saia (CTRL + O, Enter, CTRL + X).
- Atualize a sessão do terminal com `source ~/.bashrc`

## Passos

1. Baixe, clone, faça fork, etc. O que preferir, e crie o alias .
2. Execute o comando abaixo para criar os arquivos do Laravel na pasta src (execute na pasta inicial do projeto):
    - ```make project  ou bash project.sh```
3. Coloque os containers em funcionamento com o comando a seguir, automaticament já irão funcionar o php, nginx e mysql:
    - ```docker compose up -d --build server```
4. Execute a primeira migration:
    - ```docker compose run --rm artisan migrate```
5. Como o objetivo é projetos para estudo, não temos preocupações com o ambiente de produção. Mas caso utilize, pode apagar os bind mounts (volumes ligados) que estão no docker-compose.yml pois em produção não precisamos ter acesso à edição de código.

## Observações
Os containeres Artisan e Composer funcionam do seguinte modo: ao digitar os comandos listados, o container é executado, executa os comandos automáticos indicados no entrypoint, executam o comando agregado na linha de comando e em seguida é removido.

Exemplo:

docker compose run --rm composer

docker compose run --rm artisan comando (demonstrado abaixo)

docker compose run --rm artisan make:exception MinhaPrimeiraException

## Listagem dos arquivos de script
```bash
for file in scripts/*.sh; do
  echo "#### $(basename "$file") ####"
  cat "$file"
  echo -e "\n"
done
```


