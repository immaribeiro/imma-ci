FROM jenkins/jenkins:lts-alpine-jdk21
USER root
#ENV http_proxy=http://AN008107:XaHQEbaGVzEL7UMts9GJ@10.33.236.151:8000
#ENV https_proxy=http://AN008107:XaHQEbaGVzEL7UMts9GJ@10.33.236.151:8000
#ENV no_proxy=*.imma.com,localhost,127.0.0.1
COPY ./certs/ThRootCAv3.crt /usr/local/share/ca-certificates/.
COPY ./scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*
RUN /usr/local/bin/change-jdk-netproperties.sh > /var/log/change-jdk-netproperties.log 2>&1
RUN /usr/local/bin/import-ca.sh > /var/log/import-ca.log 2>&1
USER jenkins