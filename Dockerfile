FROM docker.io/library/ruby:2.5.1-alpine3.7
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"
ENV VERSION=0.4.0
RUN true \
 && gem install 3scale_toolbox --version ${VERSION} --no-format-executable --no-document --conservative --minimal-deps \
 && true
CMD ["top", "-d", "65535"]

