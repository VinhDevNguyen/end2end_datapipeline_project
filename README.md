# How to run

## Create environment files

Docker compose services get all environment variables from their corresponding directory file development.env.
Please execute this command to copy all services example.env files to development.env files

```bash
make copy_env_files
```

## Run docker compose

```bash
make up
```

