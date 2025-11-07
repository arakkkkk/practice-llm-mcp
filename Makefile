run:
	sudo docker compose up -d

down:
	sudo docker compose down

logs:
	sudo docker compose logs -f

restart::
	sudo docker compose down && sudo docker compose up -d --build
