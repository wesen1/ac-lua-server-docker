# ac-lua-server-docker
Dockerfile for a AssaultCube server with Lua API 

This is using the binaries of [AC-Lua](https://github.com/wesen1/AC-Lua).

## Usage

### docker (default files, will be reset when the container is stopped)

`docker run -p "28763:28763/udp" -p "28764:28764/udp" wesen1/assaultcube-lua-server:1.2.0.2`

### docker

`docker run -p "28763:28763/udp" -p "28764:28764/udp" -v "$PWD/ac-server/config:/ac-server/config:rw" -v "$PWD/ac-server/lua:/ac-server/lua:rw" -v "$PWD/ac-server/packages:/ac-server/packages:rw" wesen1/assaultcube-lua-server:1.2.0.2`

### docker-compose.yaml

```yaml
version: "2"
services:
    ac-lua-server:
        image: "wesen1/assaultcube-lua-server:1.2.0.2"
        ports:
            - "28763:28763/udp"
            - "28764:28764/udp"
        volumes:
            - ./ac-server/config:/ac-server/config:rw
            - ./ac-server/lua:/ac-server/lua:rw
            - ./ac-server/packages:/ac-server/packages:rw
```

`docker compose up`


## Build

1. Run `apt-get install docker-compose`
2. Run one of the following commands:
  * `docker build -t ac-lua-server-lib-lua . -f Dockerfile-lib-lua`
  * `docker build -t ac-lua-server-local-lua . -f Dockerfile-local-lua`
