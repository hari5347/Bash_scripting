#!/usr/bin/env bash

main () {

str="$1"

while (( $# > 1)); do
	echo "For want of a $1 the $2 was lost."
	shift 1
done

echo "${str:+And all for the want of a $str.}"

}

main "$@"
