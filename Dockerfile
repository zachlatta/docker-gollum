FROM ruby:2.4-alpine
MAINTAINER Zach Latta <zach@zachlatta.com>

RUN \
  # Refresh package list
  apk update \
\
  # Install build dependencies
  && apk add --no-cache --virtual build-deps \
    # Equivalent of Debian's build-essential, see
    # https://github.com/gliderlabs/docker-alpine/issues/24#issuecomment-89770836
    alpine-sdk \
    # Needed for compilation of gollum deps
    icu-dev \
\
  # Install Gollum and associated packages
  && gem install gollum redcarpet github-markdown \
\
  # Clean up build dependencies
  && apk del build-deps

# Create volume at /data
VOLUME /data

# Expose default gollum port 4567
EXPOSE 4567

ENTRYPOINT ["/usr/local/bin/gollum", "/data"]
