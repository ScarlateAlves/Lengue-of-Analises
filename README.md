# LEAGUE OF ANALISE

## Introdução

League of Analise é um conjunto de dashboards que visa maximizar a performance de times e jogadores profissionais por meio das análise de suas partidas.

## Tabela de Conteúdos

<!--ts-->
   * [Introdução](#Introducao)
   * [Tabela de Conteudo](#tabela-de-conteudo)
   * [Status do projeto](#status-do-projeto)
   * [Informações do projeto](#informacoes-do-projeto)
      * [Variáveis de ambiente](#variaveis-de-ambiente)
      * [Portas de acesso](#portas-de-acesso)
      * [Dependências](#dependencias)
   * [Autores](#autores)     
<!--te-->
## Status do projeto

League of Analise está em construção

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
#### Passo 3: Iniciar o metabase

#### Observações:

- O MySQL está utilizando a porta 3306 por padrão, se necessário, isso pode ser alterado no arquivo `docker-compose.yml`
- Se encontrar algum erro com o código 87, tente iniciar o docker-compose pelo git bash

## Autores
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/thiago-tga"><img style="border-radius: 50%;" src="https://media-exp1.licdn.com/dms/image/C4D03AQHR-AZMVpN9iA/profile-displayphoto-shrink_400_400/0/1610584257602?e=1616025600&v=beta&t=-nYa_s1xQjXgPNRmpIPf1EWWFsXH3Px7dHmpzEMj-2I" width="100px;" alt=""/><br /><sub><b>Thiago Gomes</b></sub>
      </a>
      <br />
      <a href="https://github.com/thiago-tga" title="GitHub">💻
      <a href="https://www.instagram.com/thiaguio/" title="instagram">📷
      <a href="https://www.linkedin.com/in/thiago-araujo-23761115a/" title="linkedin">💼
      </a>
      </td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars1.githubusercontent.com/u/4669899?s=460&u=806503605676192b5d0c363e4490e13d8127ed64&v=4" width="100px;" alt=""/><br /><sub><b>Cleiton Souza</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">👨‍🚀</a></td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars2.githubusercontent.com/u/861751?s=460&v=4" width="100px;" alt=""/><br /><sub><b>Robson Marques</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">👨‍🚀</a></td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars3.githubusercontent.com/u/16831337?s=460&v=4" width="100px;" alt=""/><br /><sub><b>Claudio Orlandi</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">🚀</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars0.githubusercontent.com/u/39345247?s=460&u=cdff2624a327a43e2765112a54e966a06eac6d79&v=4" width="100px;" alt=""/><br /><sub><b>Joseph Oliveira</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">🚀</a></td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars0.githubusercontent.com/u/10366880?s=460&u=59e93e1752e9d2ece4b7d8e129d60caba9c94207&v=4" width="100px;" alt=""/><br /><sub><b>Guilherme Rodz</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">🚀</a></td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars2.githubusercontent.com/u/37725197?s=460&u=446439436524c37f66e41f35b607dbb70358d5e4&v=4" width="100px;" alt=""/><br /><sub><b>Vinícios Fraga</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">🚀</a></td>
    <td align="center"><a href="https://rocketseat.com.br"><img style="border-radius: 50%;" src="https://avatars3.githubusercontent.com/u/26551306?s=460&u=18446655ccae6c2a29eb177a104ecf32f029aa3a&v=4" width="100px;" alt=""/><br /><sub><b>Hugo Duarte</b></sub></a><br /><a href="https://rocketseat.com.br/" title="Rocketseat">🚀</a>  <a href="https://blog.rocketseat.com.br/" title="Blog">🌐</a></td>
  </tr>
</table>