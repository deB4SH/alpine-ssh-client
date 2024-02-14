FROM alpine:3.19
RUN apk add --no-cache \
  openssh-client \
  ca-certificates \
  bash
RUN adduser worker --uid 1000 --disabled-password --no-create-home
USER worker