# Fergus Exercise App

This project uses below packages
```
Docker
Ruby on Rails
Postgres
```
You do not need to install `Ruby on Rails and Postgres`, only `Docker` is required
## How to Setup
```bash
docker compose up -d
docker compose run web rake db:create
docker compose run web rake db:migrate
```
Then, you can access http://localhost:3000/

## Not Included
Tests(Unit/E2E) and styling are not required.


