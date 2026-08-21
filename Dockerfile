FROM linuxserver/webtop:ubuntu-mate

# Instalar dependencias y Symphytum
RUN apt update && \
    apt upgrade -y && \
    apt install -y wget dpkg && \
    wget https://github.com/giowck/symphytum/releases/download/v2.6/symphytum-2.6-x86_64.deb && \
    dpkg -i symphytum-2.6-x86_64.deb || apt-get --fix-broken install -y && \
    apt -f install -y && \
    rm symphytum-2.6-x86_64.deb && \
    apt clean

EXPOSE 3000
EXPOSE 3001
