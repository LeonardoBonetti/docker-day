# DevMaps by Semana Omnistack 10.0 :D

# Backend

## Configure to deploy

`docker-compose.yml` com as seguintes features:

- `nginx` servindo como proxy reverso para o `nodeJS`

A configuração do deploy se da na edição e execução do arquovo `config.sh` (não faz parte do docker, mas auxilia na configuração):

- Variáveis de ambiente:

| Nome | Descrição | Obrigatório
| ------------- | ------------- | ------------- |
| WEB_DOMAIN  | Nome do domínio (ex: leobonetti.com or localhost)                                | Sim |
| NODEJS_PORT  | Porta do serviço NodeJS (ex: 8080)                          | Sim |
| PROJECT_PATH  | Pasta do projeto (ex: /home/leo/dev-maps/backend)                      | Sim |

- Executar arquivo configuração

  `chmod +x config.sh`
  `./config.sh`


## Up Compose
```
> docker-compose up -d
```

# Front-end

`dockerfile` para build do front-end via node e host via nginx

## Build and run
```
> docker build --tag front-end .
> docker run -p 80:80 -d front-end
```

Pdf de auxilio: https://drive.google.com/file/d/1TpeGVgUo4Nl6aw_CYqqC54L6N8KnG7yw/view?usp=sharing
