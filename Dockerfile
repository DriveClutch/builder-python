FROM python:3.5.3-alpine

RUN apk --update add \
      bash \
    && rm -rf /var/cache/apk/*

ADD python.sh /scripts/
WORKDIR /app

ENTRYPOINT ["bash", "/scripts/python.sh"]