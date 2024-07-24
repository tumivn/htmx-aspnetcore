postgres:
	@echo "Starting postgres..."
	docker run --rm --name postgres -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v \$HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres
	@echo "Postgres started."

createdb:
	@echo "Creating database..."
	docker exec -it postgres psql -U postgres -c "CREATE DATABASE jetstore;"
	@echo "Database created."

dropdb:
	@echo "Dropping database..."
	docker exec -it postgres psql -U postgres -c "DROP DATABASE jetstore;"
	@echo "Database dropped."

