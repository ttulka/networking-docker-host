# Networking Docker Host

Ubuntu-based Docker image with a bunch of networking tools and a trivial HTTP server.

## Networking tools

- curl
- dig
- hey 
- host
- hostname
- ip
- lsof
- netcat
- netplan
- netstat
- nmap
- ping
- route
- rpcinfo
- tcpdump 
- telnet
- tracepath
- traceroute

## Usage

```sh
$ docker run --rm -it ttulka/networking bash
```


```sh
$ docker run --rm -d -p 80:8080 -e MESSAGE=world ttulka/networking
$ curl localhost:80
hello world
```

## Build 

```sh
docker build --tag ttulka/networking:latest .
```
