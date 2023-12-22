FROM ubuntu:rolling
ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize

RUN apt-get update && apt-get install --yes \
        build-essential \
        ubuntu-standard

RUN apt-get update && apt-get install --yes \
        autojump \
        curl \
        fd-find \
        git \
        gron \
        htop \
        iproute2 \
        iputils-ping \
        jq \
        lz4 \
        mtr \
        neovim \
        parallel \
        pipx \
        python-is-python3 \
        ripgrep \
        sudo \
        tini \
        traceroute \
        tree \
        zsh \
        zsh-autosuggestions \
        zsh-syntax-highlighting \
        zstd

RUN pipx install poetry
RUN ln -s $(which fdfind) /usr/local/bin/fd

WORKDIR /root
COPY .zshrc .zshrc

CMD ["/bin/zsh"]
ENTRYPOINT ["tini", "--"]
