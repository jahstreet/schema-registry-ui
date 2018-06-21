#!/bin/bash

tag=${1:-"aksregistryprod.azurecr.io/schema-registry-ui:0.9.4"}
no_cache="$2"

docker build . $no_cache -t $tag && \
docker push $tag && \
echo "Done! Enjoy..." || echo "ERROR! Check logs..."
