
run: init
	docker-compose up

start: init
	docker-compose up -d

stop:
	docker-compose down

init:
	mkdir -p mysql redis
	
clean:
	rm -fr mysql redis
	mkdir -p mysql redis

.PHONY: run start stop init clean