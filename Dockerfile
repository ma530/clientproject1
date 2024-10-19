FROM nginx:latest
RUN apt-get update && apt-get install zip unzip -y && apt-get install wget -y
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
#RUN rm -rf /usr/share/nginx/html/index.html
#RUN unzip wedding-v1.0.zip
RUN cp -r clinetproject1/* /usr/share/nginx/html/
RUN chmod +r /usr/share/nginx/html/index.html
RUN service nginx restart
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

