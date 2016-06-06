# Kong API Gateway test

### Setup
* install/run kong
* run `kong_setup.sh`
* run netcat mock services `foreman start` from netcat dir


run some sample calls:
* curl localhost:8000/api/item/smth
* curl localhost:8000/api/person/e1
* curl localhost:8000/api/person/e2
* curl -X POST http://localhost:8000/api/item/smth -H 'Content-Type: application/json' -d '{data:{"foo":"bar"}}'
