FROM php:8.0.7-apache

COPY provision/*.sh /usr/local/bin/
COPY conf /tmp/conf

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libfreetype6-dev \
        libgmp10 \
        libgmp-dev \
        libicu-dev \
        libjpeg-dev \
        libonig-dev \
        libpng-dev \
        libxml2-dev \
        libzip-dev \
        zlib1g \
\
    && docker-php-ext-install \
        bcmath \
        calendar \
        ctype \
        dba \
        dom \
        exif \
        fileinfo \
        gd \
        gettext \
        gmp \
        iconv \
        intl \
        mbstring \
        mysqli \
        opcache \
        pdo \
        pdo_mysql \
        posix \
        session \
        simplexml \
        soap \
        sockets \
        tokenizer \
        xml \
        xmlwriter \
        zip \
\
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
\
    && docker-php-ext-enable \
        gd \
        mysqli \
        pdo \
        pdo_mysql \
\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
\
    && a2enmod rewrite