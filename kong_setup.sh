#!/bin/bash

# routing specific endpoints to MS1
curl -i -X PUT \
  --url http://localhost:8001/apis/ \
  --data 'name=MS1-e1' \
  --data 'upstream_url=http://localhost:5555/e1' \
  --data 'request_path=/api/person/e1'

curl -i -X PUT \
  --url http://localhost:8001/apis/ \
  --data 'name=MS1-e2' \
  --data 'upstream_url=http://localhost:5555/e2' \
  --data 'request_path=/api/person/e2'


# routing all requests to MS2
curl -i -X PUT \
  --url http://localhost:8001/apis/ \
  --data 'name=MS2' \
  --data 'upstream_url=http://localhost:5556' \
  --data 'request_path=/api/item'


# enable rate limiting plugin for MS2
curl -X PUT http://localhost:8001/apis/MS2/plugins \
    --data "name=rate-limiting" \
    --data "config.second=3" \
    --data "config.minute=5" \
    --data "config.hour=100"
