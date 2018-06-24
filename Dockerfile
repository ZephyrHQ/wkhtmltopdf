FROM php:7.2-fpm-alpine

# Environment variables
ENV WKHTMLTOX_VERSION 0.12.4
RUN  mkdir -p /tmp/patches
COPY docker/wkhtmltopdf/conf/* /tmp/patches/
COPY docker/wkhtmltopdf/wkhtmltopdf.install.sh /usr/local/bin/wkhtmltopdf.install
RUN chmod +x /usr/local/bin/wkhtmltopdf.install \
    && sh /usr/local/bin/wkhtmltopdf.install

CMD ["watch", "ls"]
