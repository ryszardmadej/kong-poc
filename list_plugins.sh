#!/bin/bash

curl localhost:8001/plugins/enabled | python -m json.tool
