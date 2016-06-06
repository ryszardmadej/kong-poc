#!/bin/bash

curl http://localhost:8001/status | python -m json.tool
