FROM anapsix/alpine-java:jre8

ENV SHUSH_VERSION 1.3.2

WORKDIR /root/app

RUN apk add --update bash unzip curl

RUN curl -sL -o /usr/local/bin/shush \
    https://github.com/realestate-com-au/shush/releases/download/v${SHUSH_VERSION}/shush_linux_amd64 \
    && chmod +x /usr/local/bin/shush

# ENTRYPOINT ["/usr/local/bin/shush","--region","ap-southeast-2","exec", "--"]
ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
