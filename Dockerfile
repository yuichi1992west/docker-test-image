FROM centos:8
LABEL maintainer="yuichi1992"
RUN dnf -y install vim
RUN dnf -y install mariadb mariadb-server
RUN dnf -y install httpd
RUN echo "test-page" > /var/www/html/index.html
RUN systemctl enable mariadb
RUN systemctl enable httpd

# Required for Azure Net Service ssh connection
RUN systemctl -y install sshd
RUN systemctl enable sshd
EXPOSE 80
