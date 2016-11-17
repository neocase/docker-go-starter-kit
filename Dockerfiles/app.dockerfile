FROM golang:1.7
MAINTAINER Samir Bouaked "sbouaked@neocasesoftware.com"
EXPOSE 8080
RUN apt-get update && apt-get install -y ca-certificates git-core ssh
RUN  mkdir -p /go/src/github.com/neocase/docker-go-starter-kit \
  && mkdir -p /go/bin \
  && mkdir -p /go/pkg
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:$PATH
ENV APP=$GOPATH/src/github.com/neocase/docker-go-starter-kit

ADD ./app $APP

WORKDIR $APP

RUN go build -o neo-app .
CMD ["./neo-app"]