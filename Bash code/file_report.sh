#!/usr/bin/env bash
read -r -p "Name of directory?: " dir

numSh=0
numTxt=0
if [[ ! -d $dir ]]; then
  echo -n "the directory does not exist\n"
  exit 1
else
  for file in "$dir"/*; do
   if [[ -f $file ]]; then
     echo $file
     if [[ $file == *.sh  ]]; then
       ((numSh+=1))
     elif [[ $file == *.txt ]]; then
       ((numTxt+=1))
     fi
   fi
  done
  > report.txt
  echo "Number of sh file: $numSh" >> report.txt
  echo "Number of txt file: $numTxt" >> report.txt
  cat report.txt 
fi
