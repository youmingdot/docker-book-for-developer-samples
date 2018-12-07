#!/bin/bash

root=$(cd `dirname $0`; dirname `pwd`)

docker-compose -p zookeeper -f ${root}/compose/docker-compose.yml "$@"