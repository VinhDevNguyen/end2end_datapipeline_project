# How to run

## Create environment files

Docker compose services get all environment variables from their corresponding directory file development.env.
Please execute this command to copy all services example.env files to development.env files

```bash
find . -type f -name 'development' -exec sh -c 'dir=$(dirname "{}") && cp "$dir/development" "$dir/testing"' \;
```

## Run docker compose

```bash
docker compose up;
```

pgAdmin should be available at localhost:8888.
