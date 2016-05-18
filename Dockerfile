FROM alpine:3.3

MAINTAINER Zoltan Burgermeiszter <zoltan@burgermeiszter.com>

# Skip installing gem documentation
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

RUN apk add --update --no-cache build-base ruby-dev libffi-dev ruby-bundler ca-certificates && \
    gem install json jekyll rouge && \
    rm /var/cache/apk/* && \
    rm -rf /usr/share/ri