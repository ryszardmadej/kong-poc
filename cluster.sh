#!/bin/bash

curl http://localhost:8001/cluster | python -m json.tool
