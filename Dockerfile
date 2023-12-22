FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize

RUN apt-get update && apt-get install --yes \
        build-essential \
        ubuntu-standard

RUN apt-get update && apt-get install --yes \
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
        ripgrep \
        sudo \
        tini \
        traceroute \
        tree \
        zstd

RUN ln -s $(which fdfind) /usr/local/bin/fd

WORKDIR /root
CMD ["/bin/bash"]
ENTRYPOINT ["tini", "--"]
