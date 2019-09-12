## Cloud Native Engineer Intern Case Study
* GÖREV 1: Herhangi bir dilde yazılmış örnek bir web uygulamasının Dockerfile kullanılarak docker imajı
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
ve Docker imajım oluştu.

* GÖREV 2: Docker hub üzerinden bir hesap açılarak dockerize edilen imajın açılan hesaba
isim_soyisim:0.1 şeklinde psuh edilmesi.

Bu görevi tamalamak için öncelikli olarak Docker Hub hesabı edindm ve terminal üzerinden giriş işlmelerimi tamamladım ardından ilgili imajı Docker Hub'a push edebilmek için aşağıdaki komutu kullandım.

```bash
docker push rtaplamaci/ramazan_taplamaci:0.1
```
push işlemim tamamlandı. Buna istinaden [buraya tıklayarak](https://cloud.docker.com/repository/docker/rtaplamaci/ramazan_taplamaci) Docker Hub'da bulunan imaja ulaşabilirsiniz. 


* GÖREV 3: İlgili imajı docker hub üzerinden çekerek, herhangi bir ortamda çalışıtırılıp browser üzerinden
çalıştığının gösterilmesi. Local ortamlarınız kullanılabilinir veya herhangi bir cloud provide
kullanabilirsiniz.

Bu görev için ise öncelikli olarak hali hazırda bilgisayarımda bulunan imajı aşağıdaki komutu kullanarak sildi.

```bash
docker rmi rtaplamaci/ramazan_taplamaci:0.1
```
Ardından Docker Hub'da bulunan imajı pull etmek için aşağıdaki kod bloğunu kullandım.
```bash
docker pull rtaplamaci/ramazan_taplamaci:0.1
```
Bilgisayarıma inen imajı çalıştırmak için ise Docker CLI'de aşağıdaki komutu kullandım.
```bash
docker run -p 8080:80 rtaplamaci/ramazan_taplamaci:0.1
```



