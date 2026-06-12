# Write a simple awk program that asks for a word and a file name and then tells you the no. of occurrences of that word into that file.

BEGIN{
    print "Enter word:"
    getline w < "-"
    print "Enter file:"
    getline f < "-"

    while((getline < f) > 0)
        for(i=1;i<=NF;i++)
            if($i==w) c++

    print "Count =", c
}