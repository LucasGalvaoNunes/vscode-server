FROM codercom/code-server:latest

# Instalações básicas
USER root

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    gnupg \
    ca-certificates \
    software-properties-common \
    lsb-release \
    sudo \
    unzip \
    php-cli php-mbstring php-xml php-curl \
    python3 python3-pip \
    && apt-get clean

# Node.js (via n)
RUN curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | bash -s lts

# Docker CLI
RUN curl -fsSL https://get.docker.com | sh

# Adiciona o usuário 'coder' ao grupo docker
RUN usermod -aG docker coder

# Permitir sudo pro usuário padrão
RUN echo "coder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER coder
WORKDIR /home/coder

# Expõe porta padrão do code-server
EXPOSE 8080

CMD ["code-server"]
