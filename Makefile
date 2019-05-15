docker-up: memory
	docker-compose up -d

docker-down:
	docker-compose down

docker-build: memory
	docker-compose up --build -d

memory:
	sudo sysctl -w vm.max_map_count=4194304

perm:
	sudo chown -R ${USER}:${USER} project/avesauto
	sudo chmod -R 666 project/avesauto/web/uploads
	sudo chmod -R +XXX project/avesauto/web/uploads
