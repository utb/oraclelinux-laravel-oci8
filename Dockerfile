FROM oraclelinux:7

RUN yum -y install oracle-release-el7 oracle-php-release-el7
RUN yum -y install oracle-instantclient19.5-basic
RUN yum -y install php php-oci8-19c php-json php-zip php-mbstring php-mcrypt php-xml 

# timezone configuration
ENV TZ="America/Bogota"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Composer installer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer global require laravel/installer
WORKDIR /laravel

# Default site activation
RUN rm /etc/httpd/conf.d/welcome.conf
RUN rm /etc/httpd/conf/httpd.conf 
COPY config/laravel.conf /etc/httpd/conf/httpd.conf

CMD ["httpd", "-D", "FOREGROUND"]