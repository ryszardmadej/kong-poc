#!/bin/bash

curl localhost:8001/apis/$1 | python -m json.tool
