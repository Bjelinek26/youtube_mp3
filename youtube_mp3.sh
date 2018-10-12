#!/bin/bash

FOLD=$1

if [ -d $FOLD ]
then 
	cd $FOLD
else
	mkdir $FOLD
	cd $FOLD
fi

touch list.sh

#read -p "paste a link (type "stop" when done) " LINK


while [ "$LINK" != "stop" ]
do
	read -p "paste a link (type "stop" when done) " LINK

	if [ "$LINK" != "stop" ]
	then
		echo $LINK >> list.sh
	fi
done  

youtube-dl -x --audio-format mp3 -a list.sh

rm list.sh

