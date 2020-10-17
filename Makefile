start-dev:
	docker-compose -f docker-compose.yml -f  docker-compose.dev.yml up --build -d

start-prod:
	docker-compose -f docker-compose.yml -f  docker-compose.prod.yml up --build -d

stop-server:
	docker-compose down

log-backend:
	docker logs -f server-setup_backend_1

restart-backend:
	docker-compose restart backend

# Add npm library
npm_add:
	docker-compose exec frontend npm install <package-name>
