#!/usr/bin/env bash

main(){
	if (( $(( $1 % 4 )) == 0 )); then
		if (( $(( $1 % 400)) == 0 )); then
			echo "true"
		elif (( $(( $1 % 100)) == 0 )); then
			echo "false"
		else
			echo "true"
		fi
	else
		echo "false"
	fi
}


if (( $# != 1 )); then
	echo "Usage: leap.sh <year>"
	(exit 1)
elif [[ $1 =~ ^[0-9]*$ ]]; then
	main $1
else
	echo "Usage: leap.sh <year>"
	(exit 1)
fi
