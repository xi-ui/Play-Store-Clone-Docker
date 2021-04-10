FROM php:7.4-apache

# Installing packages
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git wget apache2 curl

# Cloning git repository
RUN git clone https://github.com/Xi-Ui/Play-Store-Clone.git ./

# Moving file
COPY ./ /var/www/html

# Exposing
EXPOSE  80
