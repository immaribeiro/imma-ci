#!/bin/sh

# append cert content to ca-certificates.crt
cat /usr/local/share/ca-certificates/ThRootCAv3.crt >> /etc/ssl/certs/ca-certificates.crt
# import Thales Root CA to java keystore cacerts
keytool -import -trustcacerts -no-prompt -alias thales -keystore /opt/java/openjdk/lib/security/cacerts -file /usr/local/share/ca-certificates/ThRootCAv3.crt
