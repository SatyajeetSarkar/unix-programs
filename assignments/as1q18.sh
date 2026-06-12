# 18. Write a shell script to delete all files in root and its subdirectories having extension 'tmp', which have not been created or referred to in the last 15 days.

#!/bin/bash

find / -type f -name "*.tmp" -atime +15 -ctime +15 -exec rm -f {} +