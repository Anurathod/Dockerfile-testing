FROM docker.io/centos:7
RUN yum install httpd -y
RUN sed -i 's/Listen 80/Listen 8888/' /etc/httpd/conf/httpd.conf
RUN echo "<html><head><style>body{background-color:lightyellow;color:darkblue;}</style></head><body><h1>Hello from Anurag Rathod...I had Successfully performed Docker via Jenkins</h1> </body></html>" > /var/www/html/index.html
EXPOSE 8888
CMD ["usr/sbin/httpd","-D","FOREGROUND"]


