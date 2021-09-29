function validate {
  local number_of_files=$(ls -l|egrep "^-"| wc -l)
  if [[ guess -eq number_of_files ]]
  then
    echo "0"
  elif [[ guess -lt number_of_files ]]
  then
    echo  "-1"
  else
    echo "1"
  fi
}
echo "How many files are in the current directory?"

read guess

while [[ $(validate) -ne 0 ]]
do
  if [[ $(validate) -eq 1 ]]
  then
    echo "too big"
  else
    echo "too small"
  fi
  read guess
done

echo "Congratulations! Your guess was correct."
