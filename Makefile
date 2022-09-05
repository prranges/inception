all:
	docker-compose -f ./srcs/docker-compose.yml up
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	sudo docker volume rm $$(sudo docker volume ls -q)
	sudo docker rmi -f $$(sudo docker images -qa)
	# sudo docker system prune -a --force

.PHONY: all clean fclean
