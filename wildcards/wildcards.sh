#!/bin/bash

PROD=/mnt/c/Users/zlava/linuxpractice/wildcards

if [ $# -ne 1 ]
then
 echo "Only one arguments is needed, run $0 destination-path"
 exit 1
fi

DESTINATION=$1

if [[ $DESTINATION != */backup ]]
then
    echo "Wrong path, it must ends with /backup"
    exit 2
fi
DATE=$(date +%Y-%m-%d_%H_%M_%S)

mkdir -p $DESTINATION/$DATE

cp $PROD/*.pdf $DESTINATION/$DATE

if [ $? -eq 0 ]
then
    echo Backup OK
else
    echo Backup FAIL
fi