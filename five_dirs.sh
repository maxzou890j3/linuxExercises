#!/bin/bash
mkdir five;
function writeFile {
    local n=$1
    if [[ $n -eq 1 ]]; then
        echo -e "1" > file1
    elif [[ $n -eq 2 ]]; then 
        echo -e "2\n2" > file2
    elif [[ $n -eq 3 ]]; then 
        echo -e "3\n3\n3" > file3
    else 
        echo -e "4\n4\n4\n4" > file4
    fi
    
}
cd five
mkdir dir{1..5}
for i in {1..5}; 
    do(
    cd dir$i || continue
    for i in {1..4}
        do
        writeFile i
        done

    )
	
done
    