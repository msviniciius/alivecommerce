# README

# Projeto Alive Commerce
**Sistema de Cadastro de smartphones por importação CSV**

## Instalação

### Linux (Ubuntu 18.04) ou Windows 10 com WSL

1. Atualize o sistema operacional:
```
$ sudo apt-get update
$ sudo apt-get upgrade
```
2. Instale os seguintes pacotes:
```
$ sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline-dev zlib1g-dev
libncurses5-dev libffi-dev libgdbm-dev libpq-dev curl ruby-full`
```

#### Git

3. Instale o Git:
```
$ sudo apt-get install git
```

4. Configure o Git:
```
$ git config --global user.name '<seu nome>'
$ git config --global user.email <seu email>
```

5. Instalando a versão do Ruby desejada
```
$ rvm install 2.7.4
```

6. Verifique a versão instalada
```
$ rvm list
```

7. Use uma versão específica e a torne padrão
```
$ rvm use 2.7.4 --default
```

#### Rails

8. Instale o Rails
```
$ gem install rails -v 5.2
```

9. Verifique se o Rails foi instalado
```
$ rails -v
```

#### NodeJS

10. Instale o NodeJS
```
$ sudo apt-get install nodejs
```

11. Verifique se o NodeJS foi instalado
```
$ nodejs --version
```

12. Instale o NPM
```
$ sudo apt install npm
```

#### Yarn

13. Instale o Yarn
```
$ npm install --global yarn
```

14. Verifique se o Yarn foi instalado
```
$ yarn --version
```

#### PostgreSQL

15. Instale o PostgreSQL
```
$ sudo apt-get install postgresql postgresql-contrib libpq-dev
```

16. Verifique se o PostgreSQL foi instalado
```
$ psql --version
```

#### Bundler

17. Instale o gerenciador de pacotes do Ruby:
```
$ gem install bundler:2.2.32
```

#### Configurações

18. Crie o arquivo `config/database.yml`

19. Instale as dependências JavaScript:
```
$ yarn install 1.22.15
```

#### Iniciando

20. Inicie a aplicação:
```
$ rails s

$ bundle install

$ rails db:create

$ rails db:migrate
```

### Requisitos
- Ruby-2.7.4
- Rails 5.2.0
- Node v17.1.0
- Yarn 1.22.15
