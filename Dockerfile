FROM ubuntu:rolling
ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize

RUN apt-get update && apt-get install --yes \
        build-essential \
        ubuntu-standard

RUN apt-get update && apt-get install --yes \
        autojump \
        curl \
        ethtool \
        fd-find \
        fio \
        git \
        glances \
        gron \
        htop \
        iftop \
        iotop \
        iperf3 \
        iproute2 \
        iputils-ping \
        jq \
        lz4 \
        mtr \
        neovim \
        netcat-openbsd \
        net-tools \
        parallel \
        pipx \
        python3-poetry \
        python-is-python3 \
        ripgrep \
        snmp \
        sudo \
        tini \
        tshark \
        traceroute \
        tree \
        wireguard-go \
        zsh \
        zsh-autosuggestions \
        zsh-syntax-highlighting \
        zstd

RUN ln -s $(which fdfind) /usr/local/bin/fd

WORKDIR /root
COPY .zshrc .zshrc

CMD ["/bin/zsh"]
ENTRYPOINT ["tini", "--"]
