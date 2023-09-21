#!/bin/bash
#  Run this script as a cronjob at some suitable time in the PM, e.g. 10pm.
# Turns off workarea machine if no one is logged on, if someone is logged on
# then checks at 15 minute intervals until a set hour is reached.
# Must be used in conjuntion with the following BIOS settings:
# - Machine powers on in event of AC power being restored after loss
# - Machines turns itself on at a time at least 1 hour after the hour specified
# for $giveupat

# Taken from: https://unix.stackexchange.com/questions/415032/command-to-reboot-machine-when-no-users-are-logged-in

# time to give up checking if anyone is logged on at. Specify as an hour on 
#24 clock  e.g. for 7am set to 07. for 7pm set to 19 (though you probably 
#do not want to specify a time in the evening!)
giveupat="06"

# while someone is logged in to the machine...
while [ -n "$(who)" ];do
   if [ "$(date +%H)" != "$giveupat" ];then
   # if time hasn't read the hour at which to give up, sleep 15 minutes
      sleep 900 
   else
     # otherwise stop the script
      exit
   fi
done

# reboot
reboot now
