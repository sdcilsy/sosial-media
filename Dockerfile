#design for web development
#need image contains Debian's Apache httpd in conjunction with PHP
FROM php:7-apache 
#as a connector between the server and the browser 
#so website / application on the server can be accessed via a web browser
#pulling image php 7 apache from docker hub 

RUN docker-php-ext-install mysqli pdo pdo_mysql
#install extension for php mysql & pdo mysql 
#PDO (PHP Data Objects), database access layer which provides method to access to databases
#mysqli and pdo in there as well to allow the PDO & mysql bit

COPY . /var/www/html
#copy all files to html directory