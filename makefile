all: README.md
README.md: guessinggame.sh 
	touch README.md
	echo "#Guessinggame_project" > README.md
	echo "##Date: `date`" >> README.md
	echo "The *guessinggame.sh* contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 
clean:
	rm README.md
