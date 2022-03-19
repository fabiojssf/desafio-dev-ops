#O QUE FOI FEITO

##Docker

O projeto foi implementado para docker, sendo necessário um ajuste presente no commit de sha 7d6365af6bf3c6de715cdab156f9b29dfc87f59b

Para rodar o projeto em docker é necessário que esteja com o plugin docker compose instalado (https://docs.docker.com/compose/install/). Com ele presente, basta usar o comando "docker compose up" ou "docker-compose up" (a depender da versão instalada).

## CI/CD

Para testes automatizados e depoy, usamos o github actions. Nele criamos 3 arquivos (presentes em .github/workflows) onde o de nome test_python_versions.yml testa a compatibilidade da aplicação, para algumas versões do python ('3.5.10', '3.6.7', '3.7.1', '3.8.2', '3.9.0'). O arquivo ci.yml ele realiza o teste da aplicação, nos momentos que há eventos de push para a branch 'fabio', usando o comando disponibilizado na aplicação (python3 tests.py) preparando o ambiente para que possa rodar ele. Caso passe nos testes da aplicação, uma imagem é gerada e enviada para o hub docker (público e disponível em https://hub.docker.com/r/fabiojssf/desafiodevops/tags).