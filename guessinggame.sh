#This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated.
#function guess: 
function guess {
	local correct_answer=$(ls -l ./ | grep "^-"| wc -l)
	while true;	
	do
		echo "Please enter the number of files you guess exits in this directory:" 
		read answer
		if [[ $answer -lt $correct_answer ]]
		then echo "Your guess has been too low."
		elif [[ $answer -gt $correct_answer ]] 
		then echo "Your guess has been too high."
		else echo "Congratulations!!! You have guessed correctly."
		break;
		fi
	done
}
#run the function in the script 
guess
