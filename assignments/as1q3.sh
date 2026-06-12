# Write a shell script which count the number of lines and words supplied at standard input.

echo "Enter text: "
count=$(cat | wc -lw)
echo "Lines and words: $count"