# Used Car Similar Vehicle Service

This is a Node.js application, built to render similar vehicle recommendations as part of a project for a used car website.
## Features
* Database holds 10,000,000 unique vehicle records
* Redis cache improved query time by 400%
* Achieved 1,000 RPS on my local machine during stress testing

![site gif](https://github.com/SDC-ghrden03/similar-vehicles/blob/master/test.gif)


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

1. PostgreSQL
2. Docker
3. Redis

### Installing

1. Fork and clone the repo.
2. `cd` into `similar-vehicles`
3. Install dependencies:

```
npm install
```

4. Configure AWS Postgres instance. [GitHub Gist: How-to](https://gist.github.com/matt-winzer/266ae9930264faf8d02a065e9611b614)
5. Create `.env` file in the root of the directory.
6. Add the following params to `.env` file:
```
PGHOST=[your instance info goes here]
PGUSER=postgres
PGDATABASE=similar_vehicles
PGPASSWORD=[your instance info goes here]
PGPORT=5432
REDIS_HOST=redis
REDIS_PORT=6379
```
7. Run the following to seed the database:
#### NOTE: To decrease seeding time, change the parameters lines 36 and 49 of seeds/addVehicles.js. It is currently set to generate 10,000 vehicles.

```
npx knex migrate:latest --env development
```
then
```
npx knex seed:run --env development
```
8.Once the db has seeded run:
```
redis-server
```
9. In another terminal tab, from the root of the directory run:
```
npm run bundle-watch
```
10. In another terminal tab, from the root of the directory run:
```
npm run server-dev
```
11. Open a browser tab and go to localhost:3008

## Built With

* React
* Express/Node
* PostgreSQL

## Authors

* **Liz Anaya Ramos** - *Front End Component Design and Build* - [github](https://github.com/lizanaya92)
