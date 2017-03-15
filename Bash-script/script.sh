#!/bin/bash

#This function is to clear the old data from the file.
#Especialy when we run the script n number of times
cat /dev/null > hosts.csv
cat /dev/null > hostname.txt

#This variable takes the hostnames from the machine
host="$(hostname)"
echo "$host" >> hostname.txt

#This will take the list of hostnames in a variable to run it in a loop
IFS=$'\r\n' GLOBIGNORE='*' command eval  'host_name=($(cat hostname.txt))'

#Not needed just for knowing how many times the loop will execute as per the count of hostname
#can be commented
n=($(wc -l hostname.txt))
echo $n

#this is to check the value hence commented
#we can uncomment to check what value will go into the file
#echo "$host_ip"

#the loop runs w.r.t variable "host_name" as many hostname this variable will get from 
#the .txt file it will execute that many times
for i in  "${host_name[@]}"
  do
   
    #this variable takes the ip  w.r.t its host_name and is "comma separated"
    host_ip="$(grep "$i" /etc/hosts | sed "s/,/ /g")"
    echo "$host_ip" | sed "s/ /,/g" >> hosts.csv              ##takes the value of host_name and its ip in a csv file
    
    ping -q -c1 -t1 "$i" | grep -Eo "([0-9]+\.?){4}"  ##Pings the hostname
    ssh -q "$i"                                       ##ssh on to the server(hostname) 
    # call your procedure/other scripts here below

    cat hosts.csv   ##can be commented is just to check the values in .csv file
    exit   ##after every execution it exits and takes the next value in array
  done
