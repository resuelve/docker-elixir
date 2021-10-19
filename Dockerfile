FROM alpine:3.12
LABEL maintainer="DevOps Resuelve <devops@resuelve.mx>""
RUN apk --no-cache add -U musl musl-dev make openssh gcc git erlang elixir bash \
    && mix local.hex --force \
    && mix local.rebar --force
