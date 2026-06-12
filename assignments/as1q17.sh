# Write an awk script to find the frequency of words present in the text file MATTER Print only those words whose frequency is 5 or more

# Run: awk -f as1q17.sh MATTER

#!/bin/awk -f

{
    for (i = 1; i <= NF; i++) {
        freq[$i]++
    }
}

END {
    for (word in freq) {
        if (freq[word] >= 5)
            print word, freq[word]
    }
}