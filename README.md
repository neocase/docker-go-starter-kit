# docker-go-starter-kit 
[![Code Climate](https://codeclimate.com/github/neocase/docker-go-starter-kit/badges/gpa.svg)](https://codeclimate.com/github/neocase/docker-go-starter-kit) [![Build Status](https://travis-ci.com/neocase/docker-go-starter-kit.svg?token=op4uDYa9UppSKYXz7FYS&branch=master)](https://travis-ci.com/neocase/docker-go-starter-kit)[![Docker Pulls](https://img.shields.io/docker/pulls/mashape/kong.svg)](https://hub.docker.com/r/neocase/docker-go-starter-kit/)

## Usage

### Bootstrapping a new project

```shell
$ go get github.com/neocase/docker-go-starter-kit
$ cd $GOPATH/src/github.com/neocase/docker-starter-kit
```

Then you can edit the code and check the result by running the docker image 
and hit HTTP server on http://localhost:8080 

```shell
$ docker-compose up --build
```

## License

For license information on the software included in this image, see
[Web Starter Kit LICENSE](https://github.com/google/web-starter-kit/blob/master/LICENSE).

## Supported Docker versions

This image is officially supported on Docker version 1.11.1.

Please see the [Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade
your Docker daemon.

## User Feedback

### Issues

If you have any problems with or questions about this image, please make
contact through a [GitHub issue](https://github.com/neocase/docker-go-starter-kit/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small;
we are always thrilled to receive pull requests, and do our best to process
them as fast as we can.

Before you start to code, we recommend discussing your plans through a GitHub
issue, especially for more ambitious contributions. This gives other
contributors a chance to point you in the right direction, give you feedback on
your design, and help you find out if someone else is working on the same
thing.