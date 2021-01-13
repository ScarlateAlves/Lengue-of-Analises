# LEAGUE OF ANALISE

## Introdução

League of Analise é um conjunto de dashboards que visa maximizar a performance de times  e jogadores profissionais por meio das análise de suas partidas.

## Tabela de Conteúdos

<!--ts-->
   * [Introdução](#Introducao)
   * [Tabela de Conteudo](#tabela-de-conteudo)
   * [Informações do projeto](#informacoes-do-projeto)
      * [Variáveis de ambiente](#variaveis-de-ambiente)
      * [Portas de acesso](#portas-de-acesso)
      * [Dependências](#dependencias)
      
<!--te-->

## Informações do projeto

### Variáveis de ambiente
|         Nome          |            Padrão            |                   Descrição                    |
| :-------------------: | :--------------------------: | :--------------------------------------------: |
| `MYSQL_ROOT_PASSWORD` |         `secret-pwd`         |                 Senha do root                  |
|   `MYSQL_DATABASE`    |     `League-of-Analise`      |               Banco a ser criado               |
|     `MYSQL_USER`      |         `LOA123USER`         |   Usuário com permissões para atuar no banco   |
|   `MYSQL_PASSWORD`    |       `LOA123PASSWORD`       |                Senha do usuário                |
|    `JAVA_TIMEZONE`    |         `US/Pacific`         |                  Fuso horário                  |
|     `MB_DB_FILE`      | `/metabase-data/metabase.db` |         Arquivo com dados do metabase          |
|     `MB_DB_TYPE`      |           `mysql`            |       Configuração do banco do Metabase        |
|    `MB_DB_DBNAME`     |     `League-of-Analise`      | Banco a ser utilizado pelo sistema do Metabase |
|     `MB_DB_PORT`      |            `3306`            |                 Porta do MySQL                 |
|     `MB_DB_USER`      |         `LOA123USER`         | Usuário que o Metabase deve utilizar no banco  |
|     `MB_DB_PASS`      |       `LOA123PASSWORD`       |          Senha do usuário do Metabase          |
|     `MB_DB_HOST`      |           `mysql`            |           Nome do container do MySQL           |

### Portas de acesso
| Serviço  | Porta padrão |
| :------: | :----------: |
| Metabase |     3000     |
|  MySQL   |     3306     |

## Dependências
- `docker`
- `docker-compose`
- `git bash` - opcional

> O `git bash` é necessário devido a uma falha no `docker-compose`.

## Iniciando o ambiente

#### Passo 1: Entrar no diretório do projeto

```bash
 $ cd <caminho-do-projeto>
```

#### Passo 2: Iniciar o ambiente

```bash
$ docker-compose up
```
## Passo 3: Iniciar o metabase

## Observações:

- O MySQL está utilizando a porta 3306 por padrão, se necessário, isso pode ser alterado no arquivo `docker-compose.yml`
- Se encontrar algum erro com o código 87, tente iniciar o docker-compose pelo git bash