# Split_join_bash
This project is to split files using command lines from a unix based terminal.

##Split

To split a file, you need 2 arguments: the number of chunks and the file name.

###Usage

./split_file.sh 5 big_bang_theory.mp4

or

bash split_file.sh 5 big_bang_theory.mp4

You will be having 5 chunks with names starting by part_.

The files will be then moved to a new folder big_bang_theory.mp4.folder

##Join

To join the chunks, you need the folder where they are located.

###Usage

./join_files.sh  big_bang_theory.mp4.folder/

or 

bash join_files.sh  big_bang_theory.mp4.folder/

The output file will land in the folder previously created.

Please modify the output file to match the original file's extension.


