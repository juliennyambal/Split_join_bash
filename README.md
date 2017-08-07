# Split_join_bash
This project is to split files using command lines from a unix based terminal.

## Split

To split a file, you need 2 arguments: the number of chunks and the file name.

### Usage

```bash
./split_file.sh 5 big_file.ext
```
or
```bash
bash split_file.sh 5 big_file.ext
```
You will be having 5 chunks with names starting by part_.

The files will be then moved to a new folder big_file.ext.folder

## Join

To join the chunks, you need the folder where they are located.

### Usage
```bash
./join_files.sh  big_file.ext.folder/
```
or 
```bash
bash join_files.sh  big_file.ext.folder/
```
The output file will land in the folder previously created.

--------------------------------------------------------------------

Please modify the output file to match the original file's extension.


