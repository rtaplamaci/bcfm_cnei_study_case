FROM ubuntu:latest

 MAINTAINER Ramazan Taplamacı <ramazantaplamai81@gmail.com>

 # Paketleri Güncelle
 RUN apt-get update

 # Nginx yükle
 RUN apt-get install -y nginx

 # Hazırlanan Indexi Servera ekle  
 ADD [ "./index.html", "/var/www/html/" ]

 # Port ayarla
 EXPOSE 80

 ENTRYPOINT nginx -g 'daemon off;'
