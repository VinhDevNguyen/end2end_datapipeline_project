copy_env_files:
	find . -type f -name 'example.env' -exec sh -c 'dir=$$(dirname "{}") && cp "$$dir/example.env" "$$dir/development.env"' \;

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down 

restart: down up