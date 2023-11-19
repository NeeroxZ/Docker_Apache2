# Verwende das offizielle Debian-Image als Basis
FROM debian

# Kopiere deine HTML-Datei in das Apache-Webverzeichnis
RUN apt-get update
RUN apt-get install -y apache2
RUN mkdir /var/run/apache2

COPY html/RocKPapperScissors.html /var/www/html/index.html

EXPOSE 80

CMD [ "sh", "-c", ". /etc/apache2/envvars && apache2 -D FOREGROUND" ]