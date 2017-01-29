#!/bin/bash

PATH_DIR=`dirname $0`
PATH_CWD=$PATH_DIR/..
PATH_SOURCE=$PATH_CWD/others/code-source
PATH_DIST=$PATH_CWD/code-table


format(){
    touch $PATH_DIST/$1
    cat $PATH_SOURCE/$1 | while read line
    do
        itemArray=($line)
        for text in ${itemArray[@]}
        do
            if [ "$text" != "${itemArray[0]}" ]; then
                echo ${itemArray[0]} $text >> $PATH_DIST/$1
            fi
        done
    done
    echo "format" $1 "ok"
}

ls $PATH_SOURCE | while read line
do
    format $line
done
