README.md: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "" >> README.md
	echo "Make was run on" >> README.md
	date >> README.md
	echo " " >> README.md
	echo "**Number of lines in guessing game:**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
