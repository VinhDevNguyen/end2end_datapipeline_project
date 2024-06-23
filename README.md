# How to run

## Create environment files

Docker compose services get all environment variables from their corresponding directory file development.env.
Please execute this command to copy all services example.env files to development.env files

```bash
find . -type f -name 'example.env' -exec sh -c 'dir=$(dirname "{}") && cp "$dir/example.env" "$dir/development.env"' \;
```

## Run docker compose

```bash
docker compose up;
```

Note:
If you want N spark workers, please run the following command instead:

```bash
docker-compose up --scale spark-worker=3;
```

pgAdmin should be available at localhost:8888.
