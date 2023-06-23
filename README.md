# Rails 7 Startkit

Rails 7 Application is Ready in Minutes!

### What Is That?

Rails App in a Docker container with some popular preinstalled tools.

### Why Do I Need It?

Save hours, days or weeks on setting up a typical Rails app.

### What Cases for Using It?

- You start new Rails project
- You need a playground for experiments
- You learn Rails and related technologies
- You are going to write a new article about Rails

## What is under the hood?

- Ruby 3.2
- Rails 7
- PgSQL (Database)
- Redis (Cache)
- Sidekiq (Async and Delayed Jobs)

### Prerequisites

On your host you have:

- Ruby 2+
- Docker
- Git

### How to start?
- `git clone git@github.com:phucdx/rails7-startkit.git`
- `cd rails7-startkit`
- `bin/setup`

You will see something like that:

```
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Rails 7. StartKit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
What was done:
1. Pull all required Images
2. Launching PgSQL Container
3. Launching Rails Container
4. Installing Gems. Please Wait
5. Create DB. Migrate DB. Create Seeds
6. Launching Redis Container
7. Run Rails App on the port 3000
8. Visit: http://localhost:3000
9. Visit Mail Service: http://localhost:1080
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Welcome to RAILS 7!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

### To Run All Containers

From the root of the project

```sh
docker compose -f docker/docker-compose.yml up -d
```

<details>
  <summary>Output</summary>

```sh
[+] Running 3/3
  ⠿ Container startkit-redis   Running
  ⠿ Container startkit-psql    Running
  ⠿ Container startkit-app     Running
```
</details>

### To See Running Containers

From the root of the project

<details>
  <summary>Output</summary>

```sh
docker ps --format 'table {{.Names}}\t{{.ID}}\t{{.Image}}\t{{.Ports}}'
```

```
NAMES               CONTAINER ID        IMAGE                    PORTS
startkit-app        93a525316a87        rails7-startkit_app      0.0.0.0:3000->3000/tcp
startkit-redis      a9b68f61459d        redis:7.0.5-alpine       6379/tcp
startkit-psql       46ca3f7f0572        postgres:15.1-bullseye   0.0.0.0:5432->5432/tcp
```
</details>

### To Get In a Container

**Rails**

```sh
docker exec -it startkit-app bash
```

**PgSQL**

```sh
docker exec -it startkit-psql bash
```

**Redis**

```sh
docker exec -it startkit-psql ash
```

### To Stop All Containers

From the root of the project

```sh
docker compose -f docker/docker-compose.yml down
```

<details>
  <summary>Output</summary>

```sh
[+] Running 3/3
  ⠿ Container rails7app-redis-1   Removed
  ⠿ Container rails7app-psql-1    Removed
  ⠿ Container rails7app-rails-1   Removed
```
</details>
