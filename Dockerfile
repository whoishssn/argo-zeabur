FROM debian:bullseye-slim

RUN apt update && apt install -y wget curl unzip bash && \
    wget https://github.com/yonggekkk/ArgoSB/archive/refs/heads/main.zip && \
    unzip main.zip && cd ArgoSB-main && chmod +x Argo.sh

WORKDIR /ArgoSB-main

CMD ["bash", "Argo.sh"]
