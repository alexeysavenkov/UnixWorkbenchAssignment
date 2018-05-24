echo "How many files are in current directory?"

function right() {
	echo "Right!!!"
	exit 0
}

while :
do
	read answer
	expectedAnswer=$(ls -1q * | wc -l)
	if [[ answer -eq expectedAnswer ]]
	then
		right
	elif [[ answer -gt expectedAnswer ]]
	then
		echo "too high!"
	else
		echo "too low!"
	fi
	
done
