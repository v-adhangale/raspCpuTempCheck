#
# This is a simple shell script to monitor the temprature of your Raspberry PI CPU.
# pls install sensors tool
# sudo apt-get install lm-sensors
# And you should be good to go to monitor the CPU Temprature
# I'm running this in a while loop for 10 iterations, you can choose to run it however long you want to run.
#


#!/bin/bash

echo "Monitoring CPU temprature!"

cnt=0

while [ $cnt -lt 10 ]
do
        sensors | grep -i temp
        sleep 2
        cnt=`expr $cnt + 1`
done
