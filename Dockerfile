FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install nginx -y
RUN rm -rf /etc/nginx/sites-available/default
RUN unlink /etc/nginx/sites-enabled/default
COPY miniproject /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/miniproject /etc/nginx/sites-enabled/
RUN mkdir -p /home/miniwebsite
COPY templatemo_530_mini_profile /home/miniwebsite/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]


