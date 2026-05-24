# Write a shell script that' will greet the user saying 'GOOD MORNING',
# 'GOOD AFTERNOON', 'GOOD EVENING' or 'GOOD NIGHT' according to the system time.

h=$(date +%H)
if [ $h -ge 4 -a $h -lt 12 ]
then
    echo "Good Morning"
elif [ $h -ge 12 -a $h -lt 17 ]
then
    echo "Good Afternoon"
elif [ $h -ge 17 -a $h -lt 21 ]
then
    echo "Good Evening"
else
    echo "Good Night"
fi