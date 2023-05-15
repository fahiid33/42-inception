NAME = inception

all : $(NAME)

$(NAME) :
	sudo mkdir -p "/home/fstitou/data/wp_db"
	sudo mkdir -p "/home/fstitou/data/wp_files"
	docker compose -f ./srcs/docker-compose.yml up --build -d

down :
	docker compose -f ./srcs/docker-compose.yml down
	
restart :
	docker compose -f ./srcs/docker-compose.yml restart


prune :
	docker compose -f ./srcs/docker-compose.yml down --rmi all --volumes

re : fclean all
	

clean : down prune


fclean : clean
	sudo rm -rf /home/fstitou/data/wp_db
	sudo rm -rf /home/fstitou/data/wp_files