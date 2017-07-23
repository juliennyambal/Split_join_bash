#!/bin/bash 

#authour: Julien Nyambal 

#number of chunks
num_chunks=$1

#file
file_name=$2

echo 'Number of chunks: '$num_chunks 
echo 'File name: '$file_name

split --verbose -n $num_chunks $file_name part_

echo 'File checking.................'

du -h part_*

echo 'Moving all the chunks to ' $file_name.folder

mkdir $file_name.folder 

mv part_* $file_name.folder

echo 'done...'
