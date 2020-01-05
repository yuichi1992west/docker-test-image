FROM centos:8
LABEL maintainer="yuichi1992"
RUN dnf -y install vim
RUN dnf -y install mariadb mariadb-server
RUN dnf -y install httpd
RUN echo "test-page" > /var/www/html/index.html
RUN systemctl enable mariadb
RUN systemctl enable httpd
EXPOSE 80
CMD echo "now running..."
