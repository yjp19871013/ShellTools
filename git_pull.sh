#!/bin/bash

git config --global credential.helper store
for element in `ls $1`
do
	if [ -d $element ]
	then
		cd $element
		echo "Pulling" $element
		git pull
		cd ..
	fi
done
git config --system --unset credential.helper
