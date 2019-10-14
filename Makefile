default:
	@echo "Valid commands: \n make build [spins up test db and redis] \n make destroy [stops and cleans up containers]"

build:
	docker-compose up -d
	@echo "Loading dummy db"
	@export PGPASSWORD="postgres"
	# cannot do this until I use Dockerfile to build the container and expose the ports on listen_address
	psql -h localhost -p 54320 pagila postgres < pagila-schema.sql
	psql -h localhost -p 54320 pagila postgres < pagila-data.sql

destroy:
	docker-compose down
	docker system prune -f