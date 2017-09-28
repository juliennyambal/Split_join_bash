 #!/bin/bash

IFS=$'\n' array=($(qnodes | sed -n 's/.*ncpus=\(.*\),physmem.*totmem=\(.*\)kb.*uname=Linux \(.*\).core.wits.ac.za.*/\1 \2 \3/gp' | sort -k3))

title="Available memory and CPUs on all nodes is as follows:"
echo -e '\n'
print_char.sh - ${#title}
echo $title
print_char.sh - ${#title}

for item in "${array[@]}"
do
    IFS=$' ' read -r -a line <<< "$item"
    the_cpus=${line[0]}
    the_node=${line[2]}
    the_mem=$(expr ${line[1]} / $(( 1024 * 1024 )))
    echo -e $the_node': '$the_mem' Gb, '$the_cpus' CPUs'
done

print_char.sh "-" ${#title}