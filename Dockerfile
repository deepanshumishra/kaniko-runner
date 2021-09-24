FROM alpine
RUN apk add apache2
COPY ./webpages/ /usr/local/apache2/htdocs/
EXPOSE 80
ENTRYPOINT [ "/bin/sh", "-c", "/usr/sbin/httpd -DFOREGROUND" ]

