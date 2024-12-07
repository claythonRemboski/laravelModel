# Laravel Model

Este é um modelo para projetos em Laravel que visa facilitar o desenvolvimento, utilizando containers docker como utilitários.
Com poucos comandos é possível criar os arquivos e rodar migrations, criar seeders, models, etc. Tudo diretamente do host.

## Passos

1. Baixe, clone, faça fork, etc. O que preferir, desde que tenha o projeto em sua máquina host.
2. Execute o comando abaixo para criar os arquivos do Laravel na pasta src (execute na pasta inicial do projeto):
    - ```bash create-project.sh```
3. Coloque os containers em funcionamento com o comando a seguir, automaticament já irão funcionar o php, nginx e mysql:
    - ```docker compose up -d --build server```
4. Execute a primeira migration:
    - ```docker compose run --rm artisan migrate```
5. Como o objetivo é projetos para estudo, não temos preocupações com o ambiente de produção. Mas caso utilize, pode apagar os bind mounts (volumes ligados) que estão no docker-compose.yml pois em produção não precisamos ter acesso à edição de código.

## Observações
Os containeres Artisan e Composer funcionam do seguinte modo: ao digitar os comandos listados, o container é executado, executa os comandos automáticos indicados no entrypoint, executam o comando agregado na linha de comando e em seguida é removido.