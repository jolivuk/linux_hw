#!/bin/bash
set -e
	for i in {1..10}
	do
#	  sleep 5
#	  date +'%T' - will create time in same format like date +"%H:%M:%S"
	  date +"%H:%M:%S"
	  ps -ef | grep -v PID | wc -l
	done 

cat /proc/cpuinfo >> /tmp/output.txt 
cat /etc/os-release | grep NAME | grep -v PRETTY >> /tmp/output.txt

# awk '{print$2}' -> output Alpine
# awk '{print$2 " " $3'-> output Alpine Linux
cat /etc/os-release | grep NAME | grep -v PRETTY | sed 's/"/ /g'| awk '{print$2}' >> /tmp/output.txt

# from 50.txt to 100.txt, it  will create 51 files, not 50
	for i in {50..100}
	do
	touch $i.txt
	done

