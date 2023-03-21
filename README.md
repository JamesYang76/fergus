# Exercise App

## Requrements

You are required to provide an application that allows a tradie to see their jobs.\
Jobs have the following information associated with them:

* Unique job identifier.
* Status: one of "scheduled", "active", "invoicing", “to priced” or “completed”.
* Creation date and time.
* General information like name and contact details of the client.
The tradie can also make notes for each job. A job can have any number of notes associated with
them.

The tradie should be able to:
* Filter and sort the list of jobs.
* Click on a job in the list to view their details and add/edit notes for that job.
* Change the status of a job.


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
docker compose run --rm web rake db:create
docker compose run --rm web rake db:migrate
```
Then, you can access http://localhost:3000/

## Not Included
Tests(Unit/E2E) and styling are not required.


