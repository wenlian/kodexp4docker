# VERSION  0.0.1

FROM richarvey/nginx-php-fpm
MAINTAINER lia "wenlian0123@qq.com"

RUN apt-get update && apt-get install -y --force-yes unzip wget
RUN apt-get clean
RUN chmod -R 777 /usr/share/nginx/html && rm -f /usr/share/nginx/html/index.php && rm -f /usr/share/nginx/html/index.html
COPY kodexplorer3.21/ /usr/share/nginx/html/
# RUN wget http://7xnpcu.com1.z0.glb.clouddn.com/apicloud/954d11fe3f8db888dba1acaf03d7b1d3.zip
# RUN unzip -o 954d11fe3f8db888dba1acaf03d7b1d3.zip -d /usr/share/nginx/html/
# RUN rm -f 954d11fe3f8db888dba1acaf03d7b1d3.zip && chmod -R 777 /usr/share/nginx/html/*
RUN chmod -R 777 /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
