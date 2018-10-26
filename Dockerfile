FROM docker.io/library/ruby:2.5.3-alpine3.8
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"
ENV VERSION=0.5.0
RUN true \
 && set -xe \
 && gem install 3scale_toolbox --version ${VERSION} --no-format-executable --no-document --conservative --minimal-deps \
 && true
CMD ["top", "-d", "65535"]

