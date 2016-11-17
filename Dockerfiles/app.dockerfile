FROM golang:1.7
MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"
EXPOSE 8080
ENV REPO=github.com/neocase/docker-go-starter-kit
RUN apt-get update && apt-get install -y ca-certificates git-core ssh
RUN  mkdir -p /go/src/$REPO \
  && mkdir -p /go/bin \
  && mkdir -p /go/pkg
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:$PATH
ENV APP=$GOPATH/src/$REPO

ADD ./app $APP

WORKDIR $APP

RUN go build -o docker-go-starter-kit .
CMD ["./docker-go-starter-kit"]