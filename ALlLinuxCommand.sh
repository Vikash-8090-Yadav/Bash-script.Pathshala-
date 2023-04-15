#!/bin/bash

echo Choose any  option 

echo 1=Create new file of name Tutorial.txt
echo 2=Create a folder of name NoTutorial
echo 3=Get the current directory 
echo 4=Get the list of all files present 

read choice

case $choice in 

	1)touch Tutorial.txt;;
	2)mkdir NOTutorial;;
	3)pwd;;
	4)ls -ltr;;
	*)echo Invalid input
esac
