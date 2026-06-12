# Write a shell script that displays all the command line arguments passed with the
# name of program in different lines ( 1 argument in each line ).

echo "Program Name: $0"
echo "Command Line Arguments:"
for arg in "$@"
do
    echo "$arg"
done