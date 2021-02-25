FROM alpine:3.9

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.cloud.tencent.com/g' /etc/apk/repositories ;\
    apk add --no-cache lua5.3 lua-filesystem lua-lyaml lua-http

