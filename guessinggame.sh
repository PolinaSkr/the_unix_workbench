#!/usr/bin/env bash
# File: guessinggame.sh
i=1
function check {
  if [[ $response -ne f_number ]]
  then
    [[ $response -gt f_number ]] && echo "there are less files, try again" || echo "there are more files, try again"
  elif [[ $response -eq f_number ]]
  then
    echo "congratulations, you are rigth! there are $response files"
    let i=$i-1
  fi
}
files=($(ls | wc))
f_number=${files[0]}
echo "hello! how do you think what the number of files in that directory?  please, print the number, than print enter"
while [[ $i -gt 0 ]]
do
  read response
  echo "you entered: $response"
  if [[ $response =~ [1234567890] ]]
  then
    check
  else
    echo "please, enter numbers, not letters"
  fi
done
