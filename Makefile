default:
	@echo "Valid commands: \n make build [spins up test db and redis] \n make destroy [stops and cleans up containers]"

build:
	docker-compose up -d
	@echo "Loading dummy db"
	@export PGPASSWORD="jimseconde"
	# do the thing to get data in the db
#	psql -h localhost -p 54320 hoopy jimseconde < pagila-insert-data.sql

destroy:
	docker-compose down