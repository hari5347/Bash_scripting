#!/usr/bin/env bash


main () {

str=""
for i in "${@:1:2}"; do

	case "$i" in
		"black") str+=0 ;;

		"brown") str+=1 ;;

		"red") str+=2 ;;

		"orange") str+=3 ;;

		"yellow") str+=4 ;;

		"green") str+=5 ;;

		"blue") str+=6 ;;

		"violet") str+=7 ;;

		"grey") str+=8 ;;

		"white") str+=9 ;;

		 *) echo "invalid color"; exit 1 ;;
	esac
done

echo "$str"

}

main "$@"
