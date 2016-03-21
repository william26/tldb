build:
	docker build -t willjcksn/tldb .

stop:
	docker kill tldb 2> /dev/null; true
	docker rm tldb 2> /dev/null; true

run:
	make stop;
	docker run -d --name tldb \
		--net=dbnetwork \
		-p 5432:5432 \
		-e POSTGRES_PASSWORD=somepassword \
		-e POSTGRES_USER=todolist \
		-e POSTGRES_DB=todolist \
		willjcksn/tldb
