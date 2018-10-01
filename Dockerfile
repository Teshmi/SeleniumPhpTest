FROM php:5.6-apache

COPY index.php /usr/local/etc/php/
COPY website.conf /etc/apache2/sites-available
COPY hosts /etc/hosts
RUN a2enmod rewrite

RUN service apache2 restart
WORKDIR /etc/apache2/sites-available/
RUN a2ensite website

EXPOSE 80
