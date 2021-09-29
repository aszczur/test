all: README.md

README.md: guessinggame.sh
	echo "# Coursera peer-graded assignment: Bash, Make, Git, and GitHub\n" > README.md
	date >> README.md
	echo "\nThe number of lines in the guessinggame.sh:" >> README.md
	wc -l guessinggame.sh| egrep -o [0-9]+ >> README.md
