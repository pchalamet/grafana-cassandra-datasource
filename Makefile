build:
	docker build . 

logs: start
	docker-compose logs -f

start:
	docker-compose up -d

stop:
	docker-compose stop

rm:
	docker-compose down -v --remove-orphans
