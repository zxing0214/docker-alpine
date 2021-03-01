FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.cloud.tencent.com/g' /etc/apk/repositories ;\
    apk update&&apk upgrade ;\
    # apk --no-cache add tzdata ;\
    # cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime ;\
    echo "Asia/Shanghai" > /etc/timezone ;\
    rm -rf /var/cache/apk/*
ADD localtime /etc/