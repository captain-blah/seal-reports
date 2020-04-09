FROM ubuntu
COPY instalacao_estrutura.sh /seal/instalacao_estrutura.sh
COPY ./server/ /seal
WORKDIR /seal
RUN chmod +x /seal/configura_container.sh && /bin/bash /seal/configura_container.sh
CMD dotnet /seal/SealWebServer.dll