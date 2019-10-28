#!/bin/bash

for i in {1..30}; do touch file$i.txt; done
for i in {1..30}; do touch file$i.img; done
ls file[1-9].txt #[] -> single char in range eg: file[1-9] => file1, file2
ls file[1-9].{txt,img} #with txt or img end
ls file{[5-9],[1][0-5]}.txt #from 5 to 15
ls *.img #all image
rm file{[1][3-9],[2],[0-1]}.img #remove file from 13 to 21
ls *.t?? #file with 3 char extension which start with t
