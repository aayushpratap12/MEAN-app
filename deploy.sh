#!/usr/bin/env bash
set -e
# This script is intended to be run on your Ubuntu VM to pull latest images and restart
COMPOSE_FILE="/home/ubuntu/crud-dd-task-mean-app/docker-compose.yml"
cd $(dirname "$COMPOSE_FILE") || exit 1
# If credentials needed for private images, login first
# echo "$DOCKERHUB_PASSWORD" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin
docker-compose pull --ignore-pull-failures
docker-compose up -d --remove-orphans
# optional: prune
# docker image prune -f