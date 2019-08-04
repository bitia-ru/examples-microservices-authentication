# Microservices Authentication Example

![CLI](docs/promo.gif)

This example demonstrates the simpliest and fastest way to authenticate each request on the dedicated
microservice and add sufficient headers (e.g., user login).

## How to run

You should have Docker and docker-composed installed.

```
docker-compose build
docker-compose up -d

curl -i http://localhost:3000/
curl -i http://localhost:3000/forbidden_content
curl -i http://localhost:3000/unathenticated
```
