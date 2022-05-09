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
$ docker run --rm -d -p 8080:8080 ttulka/networking
$ curl localhost:8080
hello
```

## Build 

```sh
docker build --tag ttulka/networking:0.1 .
```
