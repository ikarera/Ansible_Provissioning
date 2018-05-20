#!/bin/sh 
 
# store start date to a variable
startDate=`date`
 
echo "Import started: OK"
dumpfile="/tmp/openmrs.sql"
 
ddl="set names utf8; "
ddl="$ddl set global net_buffer_length=1000000;"
ddl="$ddl set global max_allowed_packet=1000000000; "
ddl="$ddl SET foreign_key_checks = 0; "
ddl="$ddl SET UNIQUE_CHECKS = 0; "
ddl="$ddl SET AUTOCOMMIT = 0; "
# if your dump file does not create a database, select one
ddl="$ddl USE openmrs; "
ddl="$ddl source $dumpfile; "
ddl="$ddl drop table sync_server_record;"
ddl="$ddl drop table sync_server_class;"
ddl="$ddl drop table sync_server;"
ddl="$ddl drop table sync_class;"
ddl="$ddl drop table sync_record;"
ddl="$ddl drop table sync_import;"
ddl="$ddl delete from global_property where property like 'sync.%';"
ddl="$ddl SET foreign_key_checks = 1; "
ddl="$ddl SET UNIQUE_CHECKS = 1; "
ddl="$ddl SET AUTOCOMMIT = 1; "
ddl="$ddl COMMIT ; "
 
echo "Import started: OK"
 
time mysql -h 127.0.0.1 -e "$ddl"
 
# store end date to a variable
endDate=`date`
 
echo "Start import:$startDate"
echo "End import:$endDate"
