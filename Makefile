run:
	clear; go run cmd/simpleBankApp/main.go

migrate_up:
	migrate -database 'postgres://bankman:qwerty@localhost:5432/bank?sslmode=disable' -path ./migrations up

migrate_down:
	migrate -database 'postgres://bankman:qwerty@localhost:5432/bank?sslmode=disable' -path ./migrations down

.PHONY: start migrate_up migrate_down