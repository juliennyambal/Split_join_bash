#!/bin/bash 

#authour: Julien Nyambal 

#To join the chunks we will use cat:

#first argument path to the folder of chuncks
path=$1

echo :"****************************************************************************"
echo "Please ensure that you are in the folder where all the chunks are..."
echo "*****************************************************************************"

cd $path

read -p "If already there press enter..."

ls 

cat * > joined.ext

echo "please rename the file joined.ext accordingly for it to run."

echo "Example: If originally video, turn .ext to .mp4"
