# Networking Docker Host

Ubuntu-based Docker image with a bunch of networking tools and a trivial HTTP server.

## Networking tools

- curl
- dig
- hey 
- host
- hostname 
- hostnamectl
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
docker run --rm -it ttulka/networking bash
```


```sh
docker run -d -p 8080:80 ttulka/networking

curl localhost:80
```

## Build 

```sh
docker build --tag ttulka/networking .
```
