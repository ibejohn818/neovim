FROM ubuntu:latest

RUN apt-get update \
	&& apt-get update \
	&& apt-get install software-properties-common -y \
	&& add-apt-repository ppa:neovim-ppa/unstable \
	&& apt-get update \
	&& apt-get install git neovim ctags -y

RUN mkdir /nvim-home
RUN git clone https://git@github.com/ibejohn818/neovim.git /nvim-home/.vim \
	&& cd /nvim-home/.vim \
	&& git submodule init \
	&& git submodule update

ENV HOME=/nvim-home
RUN ln -s /nvim-home/.vim/.vimrc /nvim-home/.vimrc \
	&& mkdir /nvim-home/.config/nvim -p \
	&& mkdir /nvim-home/.local -m 0777

COPY ./init.vim /nvim-home/.config/nvim/init.vim

ENTRYPOINT ["nvim"]
