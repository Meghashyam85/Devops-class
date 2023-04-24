#!/bin/bash

# Step 1: Stop the Tomcat service
sudo systemctl stop tomcat

# Step 2: Take a backup of the current build (.war file)
sudo mv /opt/tomcat/webapps/myapp.war /opt/tomcat/webapps/myapp.war.bak

# Step 3: Copy the new .war file to the webapps folder
sudo cp /path/to/new/myapp.war /opt/tomcat/webapps/

# Step 4: Restart the Tomcat service
sudo systemctl start tomcat
