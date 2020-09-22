#!usr/env/bin bash
# File: guessing_game.sh

function guessing_game {

  # Calculating acutal directory length
  act_len=$(ls | wc -l)
  flag=false
  num_check="^[0-9]+$"

  echo "How many files are there in this directory?"

  # Enter loop until guess is correct
  while [[ $flag != true ]]
  do
    response="num"

    # Asking the user for a valid input
    while ! [[ $response =~ $num_check ]]
    do
      read response
  
      if ! [[ $response =~ $num_check ]]
      then
        echo -e "That is not a number! Try again\n"

      # Conditional execution when assured that we have a number
      elif [[ $response -lt $act_len ]]
      then
        echo -e "Wrong Guess. The number is bigger\n"
      elif [[ $response -eq $act_len ]]
      then
        echo -e "Correct.You guessed the number!"
        flag=true
      elif [[ $response -gt $act_len ]]
      then
        echo -e "Wrong Guess. The number is lower!\n"
      fi

    done
  done
}