#!/bin/bash

alphabet="a b c d e f g h i j k l m n o p q r s t u v w x y z"
table=($alphabet)

for letter in ${table[@]}
do
    touch "$letter".txt
done
