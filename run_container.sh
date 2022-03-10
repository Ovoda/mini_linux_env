docker build . -t mini_linux
docker-compose up -d
docker exec -it --user=root mini_linux_env-linux-1 /bin/zsh