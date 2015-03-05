#!/bin/bash

exec /usr/local/go/bin/src/github.com/nytlabs/hive/build/hive-server \
-index=hive \
-esDomain=${DOCKERHIVE_ES_1_PORT_9200_TCP_ADDR} \
-esPort=9200 \
-port=8888

exec "$@"