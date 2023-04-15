#!/bin/bash


############
# for loop without the  range

############

for i in 0 1 23 4 56
do 
	echo Number is $i
done


#############
# for loop with the range 
#############

for num in `seq 2 10`
do
	echo The number is $num
done

#############
# For loop to print all the file name present in the current direc
#############
for i in  * 
do
  echo "Looping ... i is set to $i"
done
