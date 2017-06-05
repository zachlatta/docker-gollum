FROM ubuntu:14.04
MAINTAINER Zach Latta <zach@zachlatta.com>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update && \
  apt-get install -y -q build-essential ruby1.9.3 python python-docutils ruby-bundler libicu-dev libreadline-dev libssl-dev zlib1g-dev git-core && \
  apt-get clean

# Install gollum
RUN gem install gollum redcarpet github-markdown

# Initialize wiki data
RUN mkdir /root/wikidata
RUN git init /root/wikidata

# Expose default gollum port 4567
EXPOSE 4567

ENTRYPOINT ["/usr/local/bin/gollum", "/root/wikidata"]
