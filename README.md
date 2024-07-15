# Ookla Speedtest.net Server for docker

This is the Ookla Speedtest Server in docker, without demon.

Before starting, read this documentation from Ookla [support.ookla.com](https://support.ookla.com/hc/en-us/articles/234578568-How-To-Install-Submit-Server)

[Speedtest Server Release Notes](https://support.ookla.com/hc/en-us/articles/234578608-Speedtest-Server-Release-Notes)
Last version check: 2.11.0 (7-2024)

Example docker-compose:
```sh
version: '3.3'
services:
  speedtest:
      image: ghcr.io/thebrones/docker-ookla-speedtest-server:main
      container_name: ookla-speedtest-server
      ports:
        - 8080:8080/udp
        - 8080:8080/tcp
        - 5060:5060/udp
        - 5060:5060/tcp
      restart: unless-stopped
```

Example stateless docker-compose:
```
version: '3.3'
services:
  speedtest:
      image: ghcr.io/thebrones/docker-ookla-speedtest-server:main
      container_name: ookla-speedtest-server
      ports:
        - 8080:8080/udp
        - 8080:8080/tcp
        - 5060:5060/udp
        - 5060:5060/tcp
      restart: unless-stopped
      volumes:
        - <path to your OoklaServer.properties>:/speedtest/OoklaServer.properties
        # - <path to your key.pem>:/speedtest/key.pem # only custom ssl 
        # - <path to your cert.pem>:/speedtest/cert.pem # only custom ssl
```



