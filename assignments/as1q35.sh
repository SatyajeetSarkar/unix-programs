# 35. WAP in shell script which counts the no. of Blanks present in a Sentence.
#!/bin/bash

read -p "Enter a sentence: " sentence

blank_count=$(echo -n "$sentence" | tr -cd ' ' | wc -c)

echo "The number of blanks present is: $blank_count"