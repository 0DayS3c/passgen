#!bin/bash

#Simple password generator using bash script

echo
echo -e '\033[1;20m' "PassGen is a random password generator tool created by Piyusha Akash"
echo -e '\033[0;20m' "https://github.com/0DayS3c"
echo -e '\033[1;33m' "|- Generate your Password using PassGen"
echo -e '\033[1;31m' ""
read -p ' |- Please eneter length of the Password : ' PASS_LENGTH
echo
echo -e '\033[1;32m' "|- How many passwords do you need?"
read -p ' |- Please eneter your password Limit : ' PASS_LIMIT
echo -e '\033[1;30m' "------------------------------------------------------"
echo " Generating $PASS_LIMIT Passwords with $PASS_LENGTH of Length"
echo -e '\033[0;20m' ""

for p in $(seq 1 $PASS_LIMIT)
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

echo
echo -e '\033[1;20m' "$PASS_LIMIT Passwords successfully generated. If you are don't like to this passwords, Please regenerate again. ThankYou!"
