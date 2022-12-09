FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------Welcome To RED Nginx WebSite ------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
