FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.0

RUN gem install bc3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bc3_merge.rb"]
CMD ["--help"]
