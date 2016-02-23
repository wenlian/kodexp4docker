# VERSION  0.0.1

FROM richarvey/nginx-php-fpm
MAINTAINER lia "wenlian0123@qq.com"

RUN apt-get update && apt-get install -y --force-yes unzip wget
RUN apt-get clean
CMD cd /usr/share/nginx/html
CMD wget http://7xnpcu.com1.z0.glb.clouddn.com/apicloud/954d11fe3f8db888dba1acaf03d7b1d3.zip && unzip 954d11fe3f8db888dba1acaf03d7b1d3.zip
CMD rm -f 954d11fe3f8db888dba1acaf03d7b1d3.zip && cd /usr/share/nginx && chmod -R 777 *

EXPOSE 80
