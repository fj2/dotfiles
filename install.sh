#!/bin/bash

programs=( `ls -d1 */` )     # list all directories, limit results to 1 per line
numprogs=${#programs[*]}
x=0
percent=0

# give the percentage for the process bar to fill as the arg
function print_progress {
  cols=`tput cols`
  dist=$1
  sym_done="#"
  sym_not_done="-"
  IFS="!"
  progmsg="Progress: ["`printf "%3d" ${percent}`"%] ["
  
  
  progmsglen=${#progmsg}
  totallength=$(((cols - progmsglen) - 1)) 
  done=$(((totallength * dist) / 100))
  
  
  progmsg=$progmsg"\e[32m" 
  for (( i=0; i<done; i++ ))
  do 
    progmsg=$progmsg$sym_done
  done
  
  progmsg=$progmsg"\e[0m"

  for (( i=$done; i<totallength; i++ ))
  do
    progmsg=$progmsg$sym_not_done
  done
  
  progmsg="$progmsg]"
  echo -en $progmsg
}

for program in ${programs[@]} 
do
  echo "Restoring $program"                   # write next line of input
  print_progress $percent                     # print progress bar
  stow $program                               # run stow
  
  echo -en "\r"                               # go back to start of progress bar
  echo -en "\e[2K"                            # delete progressbar
  
  x=$((x + 1))                                # update loop counter)
  percent=$(((100 * x) / numprogs))           # update progress percentage
done

print_progress $percent

echo -e ""
