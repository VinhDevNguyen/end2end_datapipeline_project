copy_exam_to_dev_env_files:
	find . -type f -name 'example.env' -exec sh -c 'dir=$$(dirname "{}") && cp "$$dir/example.env" "$$dir/development.env"' \;

copy_dev_to_exam_env_files:
	find . -type f -name 'development.env' -exec sh -c 'dir=$$(dirname "{}") && cp "$$dir/development.env" "$$dir/example.env"' \;

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down 

restart: down up