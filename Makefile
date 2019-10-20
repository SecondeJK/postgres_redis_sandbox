default:
	@echo "Valid commands: \n make build [spins up test db and redis] \n make destroy [stops and cleans up containers] \n make load [loads in a test db]"

build:
	docker-compose up -d

destroy:
	docker-compose down
	docker system prune -f

load:
	@echo "Loading data"
	export PGPASSWORD='postgres'; psql -h localhost -p 54320 pagila postgres < pagila-schema.sql
	export PGPASSWORD='postgres'; psql -h localhost -p 54320 pagila postgres < pagila-data.sql