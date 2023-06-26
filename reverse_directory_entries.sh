#!/bin/bash

# creating reverse function
myReverseFunction() {
#setting array local varibales
  local myArr=("$@")
  local myLen=${#myArr[@]}

#backward for loop
  for ((i=myLen-1; i>=0; i--)); do
  #printing out sorted files
    echo "${myArr[i]}"
  done
}
#setting dir to the first argument
inputDir="$1"

if [[ -d "$inputDir" ]]; then
  cd "$inputDir"
  
  myEntries=(*)
  myReverseFunction "${myEntries[@]}"
else
#printing out the error message
  echo "Directory does not exist: $inputDir"
fi

