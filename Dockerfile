FROM golang:1.18 AS build
WORKDIR /build
COPY go.mod ./
RUN go mod download
COPY *.go ./
RUN go build -o httpserver

FROM ubuntu:latest
RUN apt update && apt upgrade -y && \
    apt install curl -y && \
    apt install dnsutils -y && \
    apt install hey -y && \
    apt install iproute2 -y && \
    apt install lsof -y && \
    apt install netcat -y && \
    apt install netplan.io -y && \
    apt install net-tools -y && \
    apt install nmap -y && \
    apt install iputils-ping -y && \
    apt install rpcbind -y && \
    apt install tcpdump -y && \
    apt install telnet -y && \
    apt install iputils-tracepath -y && \
    apt install traceroute -y
WORKDIR /
COPY --from=build /build/httpserver /httpserver
EXPOSE 8080
CMD ["./httpserver"]