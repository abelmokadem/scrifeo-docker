#!/usr/bin/env bash

set -e

# TODO: get rid of sleep commands

docker-compose build

docker-compose run aws & sleep 10

docker-compose run aws-init & sleep 10

docker-compose run scrifeo npm start & sleep 10

docker-compose rm -f -s
