#!/usr/bin/env bash

export WEB_DOMAIN='leobonetti.com'
export NODEJS_MONGO_CONN_STRING=''
export NODEJS_PORT='8080'
export PROJECT_PATH='/home/bianca_du_raposo/docker-day'
export DOLLAR='$'

PROJECT_ROOT=$(dirname "$0")

mkdir -p $PROJECT_ROOT/nginx-conf

envsubst < $PROJECT_ROOT/etc/nginx-back.template > $PROJECT_ROOT/nginx-conf/nginx.conf
envsubst < $PROJECT_ROOT/etc/ecosystem.config.template > $PROJECT_ROOT/ecosystem.config.js
envsubst < $PROJECT_ROOT/etc/dockerfile-back.template > $PROJECT_ROOT/dockerfile
envsubst < $PROJECT_ROOT/etc/docker-compose.template > $PROJECT_ROOT/docker-compose.yml

