FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /root

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
        ubuntu-standard \
        build-essential \
        curl \
        fd-find \
        git \
        gron \
        iproute2 \
        iputils-ping \
        jq \
        lz4 \
        mtr \
        neovim \
        parallel \
        pipx \
        ripgrep \
        sudo \
        traceroute \
        tree \
        zstd \
    && rm -rf /var/lib/apt/lists/*

RUN yes | unminimize
RUN ln -s $(which fdfind) /usr/local/bin/fd
