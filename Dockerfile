FROM python:3.5.3-alpine

RUN apk --update add \
      bash \
    && rm -rf /var/cache/apk/*

#RUN echo -e "[global]\nindex-url=https://$BINTRAY_USER:$BINTRAY_PASSWORD@driveclutch.bintray.com/clutch-python" > /etc/pip.conf

# testing dockerhub automated build