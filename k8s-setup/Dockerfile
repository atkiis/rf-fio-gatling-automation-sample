# Use Alpine as the base image
FROM alpine:latest

RUN apk update && \
    apk add --no-cache fio
RUN mkdir -p /var/www/localhost/htdocs/cgi-bin
COPY api/api.sh /var/www/localhost/htdocs/cgi-bin/
RUN chmod +x /var/www/localhost/htdocs/cgi-bin/api.sh
EXPOSE 80

CMD ["httpd", "-f", "-p", "80", "-h", "/var/www/localhost/htdocs"]
