FROM golang:alpine

RUN apk --no-cache add git && git clone https://github.com/cunnie/sslip.io.git /sslip.io && cd /sslip.io/src/sslip.io-dns-server && go mod download golang.org/x/sys && go build -o /usr/bin/sslip && apk del git && cd / && rm -rf /sslip.io

ENTRYPOINT /usr/bin/sslip



