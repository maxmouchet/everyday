FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
        ubuntu-standard \
        build-essential \
        curl \
        fd-find \
        iproute2 \
        iputils-ping \
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
