#!/bin/bash

PATH_CWD=$(cd `dirname $0`/..; pwd)
PATH_TABLE=$PATH_CWD/code-table
PATH_CONFIG=$PATH_CWD/config

FILE_DIST=$PATH_CWD/erbi_pure.cin

cat /dev/null > $FILE_DIST

cat $PATH_CONFIG/meta.txt >> $FILE_DIST
cat $PATH_CONFIG/keyname.txt >> $FILE_DIST

echo "%chardef begin" >> $FILE_DIST
cat $PATH_CONFIG/punctuation.txt >> $FILE_DIST

ls $PATH_TABLE | while read line
do
    cat $PATH_TABLE/$line >> $FILE_DIST
done

echo "%chardef end" >> $FILE_DIST
