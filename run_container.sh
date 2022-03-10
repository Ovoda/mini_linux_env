docker build . -t mini_linux
docker-compose up -d
docker exec -it --user=root linux-linux-1 /bin/zsh