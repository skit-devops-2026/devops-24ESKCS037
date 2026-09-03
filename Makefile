.PHONY: install test build run docker-build docker-up

install:
	@echo "No external dependencies required for the static HTML/CSS/JS project"

test:
	@bash tests/test_project.sh

build:
	@test -f frontend/index.html
	@test -f frontend/login.html
	@test -f frontend/signUp.html
	@test -d frontend/css
	@test -d frontend/js
	@echo "Static frontend build validation passed"

run:
	@echo "Open frontend/index.html in a browser"

# Needed from M4 onwards
docker-build:
	@echo "TODO: docker build for frontend and backend" && exit 1

docker-up:
	docker compose up --build
