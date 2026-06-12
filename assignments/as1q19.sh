# 19. Write a shell script to depict the orphan process.

#!/bin/bash

(
    echo "Child Process: PID=$$, Parent PID=$PPID"
    sleep 3
    echo "Child Process (Orphaned): PID=$$, New Parent PID=$PPID"
) &

echo "Parent Process: PID=$$"
sleep 1
echo "Parent Process: Exiting now..."
exit 0