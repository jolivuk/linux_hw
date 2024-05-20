#!/bin/bash
set -e
mkdir -p /opt/200224_morning/nina/test
echo "Let's GO" >> /opt/200224_morning/nina/test/myfile.txt
cat /var/spool/mail/ec2-user | grep cron >> /opt/200224_morning/nina/test/myfile.txt

        for i in {1..3}
        do
                mkdir -p /opt/200224_morning/nina/test/DIR0$i
        done

touch /opt/200224_morning/nina/test/DIR01/1.txt
ps -ef >> /opt/200224_morning/nina/test/DIR02/2.txt
mkdir -p /opt/200224_morning/nina/test/DIR_03
echo "DONE" >> /opt/200224_morning/nina/test/DIR_03/3.txt
echo $JANECKOVA >> /opt/200224_morning/nina/test/myfile.txt
