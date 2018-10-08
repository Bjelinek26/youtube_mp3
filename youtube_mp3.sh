#!/bin/bash

FOLD=$1

mkdir $FOLD

cd $FOLD

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

rm lish.sh

