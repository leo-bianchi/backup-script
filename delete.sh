#!/bin/bash

# Delete the oldest rsynced directorie
deleteOldest () {

   if [ "$1" = "$2" ]; then
        oldest=$(ls -tr | head -n 1)
        rm -r "$oldest"
   fi

}

# Count the number of directories
dir_count=$(ls -l . | grep -c ^d)

# Catch the directory name
dir_name=$(basename "$PWD")

case "$dir_name" in
"hourly" )
        retention=9 ;;
"daily" )
        retention=8 ;;
"weekly" )
        retention=5 ;;
"monthly" )
        retention=4
esac

deleteOldest $dir_count $retention
