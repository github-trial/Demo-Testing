The bash script is executed and tested and performs the following functions:

Takes the hostname in one variable and stores it in a file.

Extracts the content in an array so that it is feasible to run the for loop.

Then takes the count of the array and with that count it iterates the for loop.

In the for loop it takes the ip  with the help of hostname and stores the output in a file comma separated as an argument.

Then with the help od hostname it pings the ip and also ssh onto each ip and exits and runs the for loop as per the count.

