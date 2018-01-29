#!/bin/bash
# Date creation: 01/28/2018
function CompareNumbers {
    if [[ $lines -lt  $numfiles ]]
    then
        echo "The files amount is greater than your number"
    elif [[ $lines -gt $numfiles ]]
    then
        echo "The files amount is less than your number"
    else
        echo "You win the pools!"
        let booleanVariable=1
    fi
    echo " "
}

clear
# -------- Definition of the initial values of the variables
#
booleanVariable=0 #If the user guess the booleanVariable will be 1
cadena="How many files are in the current directory? Type the correct number:"
numfiles=$(ls -hl | egrep "^-r" | wc -l)

# ----- the program
while [[ $booleanVariable -eq 0 ]]
do
    echo $cadena
	read lines
	CompareNumbers
done
