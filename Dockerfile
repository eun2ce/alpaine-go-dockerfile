LABEL maintainer="joeun2ce@gmail.com"
FROM frolvlad/alpine-glibc:alpine-3.7_glibc-2.26

ENV GO_VER 1.9.4
ENV GO_OS linux
ENV GO_ARCH amd64

ENV PATH $GOPATH/bin:/opt/go/bin:$PATH
ENV GOPATH /go

RUN mkdir -p $GOPATH/src $GOPATH/bin
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache git
RUN mkdir -p /opt
RUN wget -q -O - https://dl.google.com/go/go$GO_VER.$GO_OS-$GO_ARCH.tar.gz \
        | tar -C /opt/ -zxf -

WORKDIR $GOPATH
