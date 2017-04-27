# Django, Gunicorn, NGINX on Docker

## Usage

1. Set Environment Variables in `web/.env`

```bash
SECRET_KEY=+m8*(*n2dgz+(&*%@*3nlj2b+!vt1va*gn7xzef%kuev7fcu5d
DB_NAME=test_db
DB_USER=test
DB_PASS=test
DB_SERVICE=postgres
DB_PORT=5432
...
```

DB_SERVICE and DB_PORT are used in docker-compose.yml and Dockerfile, so recommend not to change.

When upload project to github or whatever, make sure to add `.env` to `.gitignore` 

2. Set Domain name in `nginx/nginx.conf`

```bash
...
server_name example.org;
...
```

3. Build

```bash
$ sudo sh build-docker.sh
```