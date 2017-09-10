FROM ubuntu:latest

RUN apt-get update \
	&& apt-get update \
	&& apt-get install software-properties-common -y \
	&& add-apt-repository ppa:neovim-ppa/unstable \
	&& apt-get update \
	&& apt-get install git neovim ctags -y

RUN mkdir /nvim-home

RUN mkdir /nvim-home/.local -m 0777
ENV HOME=/nvim-home

RUN git clone https://git@github.com/ibejohn818/neovim.git /nvim-home/vim # Last update 2017/09/10

RUN /bin/bash -c "cd /nvim-home/vim && ./local-setup.sh"

ENTRYPOINT ["nvim"]
