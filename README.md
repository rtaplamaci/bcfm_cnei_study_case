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
Ardından ilgili index.html dosyasını oluşturdum ve içeriğin aşağıdaki gibi düzenledim.

```bash

 <html>
 <head>
     <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
     <title>Ramazan Taplamacı</title>
 </head>
 <body>
     <div style="text-align: center;"> 
         <h1>Ramazan Taplamacı</h1>
         <h2><a href="http://rtaplamaci.com/">www.rtaplamaci.com</a></h2>
     </div>
 </body>
 </html>
 <html>
 <head>
     <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
     <title>Ramazan Taplamacı</title>
 </head>
 <body>
     <div style="text-align: center;"> 
         <h1>Ramazan Taplamacı</h1>
         <h2><a href="http://rtaplamaci.com/">www.rtaplamaci.com</a></h2>
     </div>
 </body>
 </html>
```
Ardından Docker image dosyasını oluşturmak için Docker CLI ile aşağıdaki komutu kullandım.

```bash
docker build -t rtaplamaci/ramazan_taplamaci:0.1 .

```



