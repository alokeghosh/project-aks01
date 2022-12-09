FROM ubuntu/apache2
LABEL MAINTAINER Aloke Ghosh
RUN apt update -y && apt install unzip -y
ENV html=/var/www/html
RUN rm -rf $html/index.html && mkdir -p /app
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip /app
RUN unzip /app/uloax.zip -d /app && cp -r /app/uloax/* $html
RUN rm -rf /app
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80
