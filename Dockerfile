FROM alpine:latest

ENV REFRESH_TOKEN \
    WEBDAV_AUTH_USER \
    WEBDAV_AUTH_PASSWORD

WORKDIR /app

COPY aliyundrive-webdav /app/
COPY run.sh /app/

RUN chmod +x aliyundrive-webdav && \
    chmod +x run.sh

EXPOSE 3080
CMD /app/run.sh