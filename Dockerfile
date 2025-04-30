FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install git -y

RUN git clone https://github.com/marcusmleite/static-web-page-terrarium.git
RUN cp -r static-web-page-terrarium/* /var/www/html
RUN service apache2 restart
RUN apt-get install curl -y

expose 8080

## docker build -t terrario .
## docker run -t terrario /bin/bash
## docker run -it -p 8080:80 terrario:2.0 /bin/bash