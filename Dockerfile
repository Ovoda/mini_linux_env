FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 


RUN  apt update \
        && apt install curl -y \
        && apt install git -y \
        && apt install zsh -y \
        && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
        && apt install vim -y \
        && apt install clang -y \
        && apt install valgrind -y \
        && apt install make -y

WORKDIR /project

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]