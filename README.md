## Cloud Native Engineer Intern Case Study
* Herhangi bir dilde yazılmış örnek bir web uygulamasının Dockerfile kullanılarak docker imajı
haline getirilmesi.

Bu görev için öncelikli olarak Dosya sisteminde bir klasör oluşturdum. Ardından terminal ekranından Nano editörü ile Dockerfile dosyasını oluşturdum ve içeriğini aşağıdaki gibi düzenledim.

```bash
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
```


