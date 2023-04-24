#!/bin/bash

# Step 1: Stop the Tomcat service
sudo systemctl stop tomcat

# Step 2: Take a backup of the current build (.war file)
sudo mv home/ubuntu/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/tomcat/webapps/hello-1.0.war.bak

# Step 3: Copy the new .war file to the webapps folder
sudo cp home/ubuntu/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/tomcat/webapps/

# Step 4: Restart the Tomcat service
sudo systemctl start tomcat
