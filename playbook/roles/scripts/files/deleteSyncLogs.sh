#!/bin/bash

# stop tomcat
service tomcat7 stop
mv /usr/share/tomcat7/.OpenMRS/sync/recrd /usr/share/tomcat7/.OpenMRS/sync/old_recrd
rm -rf /usr/share/tomcat7/.OpenMRS/sync/old_recrd
# start tomcat
service tomcat7 start
