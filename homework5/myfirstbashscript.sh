#!/bin/bash

export USER=nina 
date +%D 
echo hello $USER 
pwd 
ps -ef | grep -v UID | wc -l 
ps -ef | grep bioset | grep -v grep | wc -l 
ls -l /etc/passwd | awk '{print $1}'
