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

- Ruby 3.1.2
- Rails 7.0.5
- PgSQL (Database)
- Redis (Cache)
- Sidekiq (Async and Delayed Jobs)
- Bootstrap 5
- jQuery
- Font Awesome 6
- I18n-js
- Select2 JS
- Rubocop

### Prerequisites

On your host you have:

- Ruby 2+
- Docker
- Git

### How to start?

- `git clone git@github.com:phucdx/startkit.git`
- `cd startkit`
- `sudo docker-compose build`
- `sudo chown -R 999:999 ./db/PGSQL`
- `docker-compose up`

### To Run All Containers

From the root of the project

```sh
docker compose -f docker-compose.yml up -d
```

<details>
  <summary>Output</summary>

```sh
[+] Running 4/4
 ✔ Container startkit-psql          Started
 ✔ Container startkit-redis         Started
 ✔ Container startkit-mailcatcher   Started
 ✔ Container startkit-app           Started
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
NAMES                  CONTAINER ID        IMAGE                    PORTS
startkit-app           1f13e98cdc3b        startkit_app             0.0.0.0:3000->3000/tcp
startkit-redis         209a18dfba82        redis:7.0.5-alpine       6379/tcp
startkit-psql          dde19fa271ed        postgres:15.1-bullseye   0.0.0.0:5432->5432/tcp
startkit-mailcatcher   d4db8d708a03        schickling/mailcatcher   1025/tcp, 0.0.0.0:1080->1080/tcp
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
docker exec -it startkit-redis ash
```

**MailCatcher**

```sh
docker exec -it startkit-mailcatcher ash
```

### To Stop All Containers

From the root of the project

```sh
docker compose -f docker-compose.yml down
```

<details>
  <summary>Output</summary>

```sh
[+] Running 4/4
 ✔ Container startkit-app           Removed
 ✔ Container startkit-redis         Removed
 ✔ Container startkit-mailcatcher   Removed
 ✔ Container startkit-psql          Removed
```

</details>

### Export i18n-js

```sh
rake i18n:export
```
