# Jenkins
# with Plugins
# VERSION					0.0.1

FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
USER root
RUN apt-get update && apt-get install -y dos2unix
#RUN CHMOD a+rw /usr/share/jenkins/ref/plugins.txt
RUN dos2unix /usr/share/jenkins/ref/plugins.txt
USER jenkins
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt