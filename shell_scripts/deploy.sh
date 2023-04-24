#!/bin/bash

services=" 13.127.138.226"
for i in $services
do
ps -ef | grep "$i" 
sudo service $i stop
if [ $? -ne 0 ]; then
echo "$i" >> services_list
#kill -9 $i
fi
done

cat services_list | mail -s "Action required immediatley on unstopped services" meghashyamm75@gmail.com


cd $CATALINA_HOME/webapps/
mv * build_bkup_date/

cp /home/ec2-user/build/
cp *.WAR $CATALINA_HOME/webapps/

sudo service tomcat restart

