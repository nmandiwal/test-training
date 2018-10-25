#!/bin/bash 
cd /tmp/new-jobs/
for i in ./*.xml 
 do   
    d=$(basename "$i" .xml)
    mkdir "/var/jenkins_home/jobs/$d"
    cp "$i" "/var/jenkins_home/jobs/$d/config.xml"
 done