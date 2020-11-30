FROM alpine:latest

RUN apk upgrade && \
    apk add --no-cache git

COPY .git /sources/.git
RUN git clone --single-branch --no-local --depth 1 --separate-git-dir=/tmp/.git /sources /app
