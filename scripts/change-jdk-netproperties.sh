#!/bin/bash

# Get lines from net.properties - for logging purposes
echo "INFO - /opt/java/openjdk/conf/net.properties BEFORE changes"
grep disabledSchemes /opt/java/openjdk/conf/net.properties

# Making changes to net.properties"
sed -i 's/#jdk.http.auth.proxying.disabledSchemes=/jdk.http.auth.proxying.disabledSchemes=/' /opt/java/openjdk/conf/net.properties
sed -i 's/jdk.http.auth.tunneling.disabledSchemes=Basic/jdk.http.auth.tunneling.disabledSchemes=/' /opt/java/openjdk/conf/net.properties

# Get changed lines from net.properties - for logging purposes
echo "INFO - /opt/java/openjdk/conf/net.properties AFTER changes"
grep disabledSchemes /opt/java/openjdk/conf/net.properties