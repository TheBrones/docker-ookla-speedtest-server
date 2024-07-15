FROM ubuntu:focal

RUN mkdir speedtest

WORKDIR /speedtest 

RUN apt update -y && \
    apt upgrade -y && \
    apt install curl -y

RUN wget https://install.speedtest.net/ooklaserver/ooklaserver.sh && \
    chmod a+x ooklaserver.sh && \
    ./ooklaserver.sh install \
    mv OoklaServer.properties.default OoklaServer.properties
    
CMD ["./OoklaServer --deamon"]

